import numpy
import pandas as pd


def substitute_tables(schema, directory, catalogo):
    fields = []
    fields_changed = []
    print("Reading joined tables... ")
    df_cat = pd.read_csv(directory + catalogo + '.csv', encoding='latin1')
    for i in range(len(df_cat.index)):
        if df_cat.iloc[i][0] not in fields:
            fields.append(df_cat.iloc[i][0])

    df_data = pd.read_csv(directory + 'mergedTables.csv', encoding='latin1', usecols=fields)
    print("Merging data meanings...")
    row = 0
    for field in fields:  # Here the variable i is the actual field
        fields_changed.append(field + "_")
        df_aux = pd.DataFrame(columns=[field, fields_changed[-1]])
        while field == df_cat.iloc[row]["CAMPO"]:
            df_aux.loc[row] = [df_cat.iloc[row]["VAL"], df_cat.iloc[row]["CONTENIDO"]]
            row = row + 1
            if row == df_cat.shape[0]:
                break

        df_aux[field] = df_aux[field].astype(numpy.int64)

        #Hasta aqui ya tenemos la mini tabla en aux_df
        df_data = pd.merge(df_data, df_aux, on=field, how='inner')
    df_data = df_data.loc[:, fields_changed]

    #df_data.to_csv(directory + schema + "_final_all.csv", index=False, columns=fields_changed, encoding='latin1')
    return df_data


def join_tables(tables, relations, directory):
    repited_columns = []
    print("Reading original tables.. ")
    df1 = pd.read_csv(directory + tables[0] + '.csv', encoding='latin1')
    del tables[0]
    headers_df1 = df1.columns.values.tolist()

    print("Joining original tables... ")
    for key_table, value_table in tables.items():
        df2 = pd.read_csv(directory + value_table + '.csv', encoding='latin1')
        headers_df2 = df2.columns.values.tolist()
        # This loop check and erase if there are columns with same name in the dataframes
        for i in headers_df1:
            for j in headers_df2:
                if i == j and i not in relations.values():
                    repited_columns.append(i)

        df2 = df2.drop(repited_columns, axis=1)  # this delete the columns with the name of elements in repited_columns
        repited_columns.clear()

        for key_rel, value_rel in relations.items():
            if key_rel == key_table:
                df1 = pd.merge(df1, df2, on=value_rel, how='inner')  # Los campos a analizar son CASE SENSITIVE

    df1.to_csv(directory + "mergedTables.csv", index=False, encoding='latin1')