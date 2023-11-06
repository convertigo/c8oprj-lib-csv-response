


# lib_csv_response

Plain text output library.
Supports direct call in .cxml or through UrlMapper.


For more technical informations : [documentation](./project.md)

- [Sequences](#sequences)
    - [api_data_pure](#api_data_pure)
    - [generate_csv](#generate_csv)
    - [my_data_to_csv](#my_data_to_csv)
- [Rest Web Service](#rest-web-service)
    - [Mappings](#mappings)
        - [/people/{nb_lines}](#people{nb_lines})
            - [Operations](#operations)
                - [GetOperation](#getoperation)


## Sequences

### api_data_pure

Sample sequence that genarates fictive data.

**variables**

<table>
<tr>
<th>name</th><th>comment</th>
</tr>
<tr>
<td>nb_lines</td><td>Number of lines to return. Max and default to 10.</td>
</tr>
</table>

### generate_csv

Sequence to generate plain text output from a data source.
Data source response has to be of the following form:

```
<document>
    <items type="array">
        <Object type="object">
            <column_item1 type="string">item value</item1>
            <column_item2 type="string">item value</item2>
            <column_itemN type="string">item value</itemN>
        </Object>
        <Object type="object">
          ...
        </Object>
        ...
    </items>
<document>
```

<b>items</b> and <b>column_itemX</b> names can be whatever but <b>type</b> value must be respected.

Used through Convertigo UrlMapper, the callback uri redirection can be overriden using the symbol <b>header.location.callback_uri</b>
<br/>Default is set to <b>../../projects/csv_response/.cxml?__sequence=generate_csv</b>
<br/>You can change project name and sequence name if you want to import the library sequence in your own project.

**variables**

<table>
<tr>
<th>name</th><th>comment</th>
</tr>
<tr>
<td>_use_redirect</td><td>Set the value to <b>true</b> if calling the sequence from an UrlMapper GetOperation. Leave blank if calling directly with <b>.cxml</b> servlet request.</td>
</tr>
<tr>
<td>_use_separator</td><td>Defines the separator between the data of a line.</td>
</tr>
<tr>
<td>_use_sequence_data</td><td>Data sequence to call in form <b>&lt;project_name&gt;.&lt;sequence_name&gt;</b></td>
</tr>
<tr>
<td>_use_title</td><td>Generates title line from data source tags/keys.</td>
</tr>
</table>

### my_data_to_csv

Sample sequence to transform a data source in plain text using an XSL Stylesheet (manual way, use generate_csv sequence instead).

## Rest Web Service

Sample UrlMapper to test plain text output.

### Mappings

#### /people/{nb_lines}

Sample data source to demonstrate plain text output via UrlMapper.

##### Operations

###### GetOperation

<b>GET</b> operation that calls the plain text (CSV) library.
 <br/>All parameters starting with '<b>_use_</b>' are only transmitted to the library sequence.
 <br/>All other parameters are transmitted to the target data source sequence.

**Parameters**

<table>
<tr>
<th>name</th><th>comment</th>
</tr>
<tr>
<td>_use_redirect</td><td>Must be set to <b>true</b> here. Only transmitted to the library sequence.</td>
</tr>
<tr>
<td>_use_separator</td><td>Defines the separator between the data of a line. Only transmitted to the library sequence.</td>
</tr>
<tr>
<td>_use_sequence_data</td><td>Data sequence to call in form <b>&lt;project_name&gt;.&lt;sequence_name&gt;</b>
Only transmitted to the library sequence.</td>
</tr>
<tr>
<td>_use_title</td><td>Generates title line from data source tags/keys. Only transmitted to the library sequence.</td>
</tr>
<tr>
<td>nb_lines</td><td>Parameter transmitted to the data source sequence</td>
</tr>
</table>



