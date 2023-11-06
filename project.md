
# ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/core/images/project_color_16x16.png?raw=true "Project") lib_csv_response

Plain text output library.
Supports direct call in .cxml or through UrlMapper.

<details><summary><span style="color:DarkGoldenRod"><i>Connectors</i></span></summary><blockquote><p>


## ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/connectors/images/sqlconnector_color_16x16.png?raw=true "SqlConnector") void

void connector, replace or don't use it

<details><summary><span style="color:DarkGoldenRod"><i>Transactions</i></span></summary><blockquote><p>


### ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/transactions/images/sqltransaction_color_16x16.png?raw=true "SqlTransaction") void

does nothing
</p></blockquote></details>
</p></blockquote></details>

<details><summary><span style="color:DarkGoldenRod"><i>Sequences</i></span></summary><blockquote><p>


<details><summary><b>api_data_pure</b> : Sample sequence that genarates fictive data</summary><blockquote><p>


## ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/sequences/images/genericsequence_color_16x16.png?raw=true "GenericSequence") api_data_pure

Sample sequence that genarates fictive data.

<span style="color:DarkGoldenRod">Variables</span>

<table>
<tr>
<th>
name
</th>
<th>
comment
</th>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/variables/images/variable_color_16x16.png?raw=true "  alt="RequestableVariable" >&nbsp;nb_lines
</td>
<td>
Number of lines to return. Max and default to 10.
</td>
</tr>
</table>

</p></blockquote></details>

<details><summary><b>generate_csv</b> : Sequence to generate plain text output from a data source</summary><blockquote><p>


## ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/sequences/images/genericsequence_color_16x16.png?raw=true "GenericSequence") generate_csv

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
<br/>Default is set to <b>../../projects/lib_csv_response/.cxml?__sequence=generate_csv</b>
<br/>You can change project name and sequence name if you want to import the library sequence in your own project.

<span style="color:DarkGoldenRod">Variables</span>

<table>
<tr>
<th>
name
</th>
<th>
comment
</th>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/variables/images/variable_color_16x16.png?raw=true "  alt="RequestableVariable" >&nbsp;_use_redirect
</td>
<td>
Set the value to <b>true</b> if calling the sequence from an UrlMapper GetOperation. Leave blank if calling directly with <b>.cxml</b> servlet request.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/variables/images/variable_color_16x16.png?raw=true "  alt="RequestableVariable" >&nbsp;_use_separator
</td>
<td>
Defines the separator between the data of a line.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/variables/images/variable_color_16x16.png?raw=true "  alt="RequestableVariable" >&nbsp;_use_sequence_data
</td>
<td>
Data sequence to call in form <b>&lt;project_name&gt;.&lt;sequence_name&gt;</b>
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/variables/images/variable_color_16x16.png?raw=true "  alt="RequestableVariable" >&nbsp;_use_title
</td>
<td>
Generates title line from data source tags/keys.
</td>
</tr>
</table>

</p></blockquote></details>

<details><summary><b>my_data_to_csv</b> : Sample sequence to transform a data source in plain text using an XSL Stylesheet (manual way, use generate_csv sequence instead)</summary><blockquote><p>


## ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/sequences/images/genericsequence_color_16x16.png?raw=true "GenericSequence") my_data_to_csv

Sample sequence to transform a data source in plain text using an XSL Stylesheet (manual way, use generate_csv sequence instead).
</p></blockquote></details>
</p></blockquote></details>

<details><summary><span style="color:DarkGoldenRod"><i>Rest Web Service</i></span></summary><blockquote><p>


## ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/core/images/urlmapper_color_16x16.png?raw=true "UrlMapper") UrlMapper

Sample UrlMapper to test plain text output.

<details><summary><span style="color:DarkGoldenRod"><i>Mappings</i></span></summary><blockquote><p>


### ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/pathmapping_color_16x16.png?raw=true "PathMapping") /people/{nb_lines}

Sample data source to demonstrate plain text output via UrlMapper.

<details><summary><span style="color:DarkGoldenRod"><i>Operations</i></span></summary><blockquote><p>


### ![](https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/getoperation_color_16x16.png?raw=true "GetOperation") GetOperation

<b>GET</b> operation that calls the plain text (CSV) library.
 <br/>All parameters starting with '<b>_use_</b>' are only transmitted to the library sequence.
 <br/>All other parameters are transmitted to the target data source sequence.

<span style="color:DarkGoldenRod">Parameters</span>

<table>
<tr>
<th>
name
</th>
<th>
comment
</th>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/queryparameter_color_16x16.png?raw=true "  alt="QueryParameter" >&nbsp;_use_redirect
</td>
<td>
Must be set to <b>true</b> here. Only transmitted to the library sequence.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/queryparameter_color_16x16.png?raw=true "  alt="QueryParameter" >&nbsp;_use_separator
</td>
<td>
Defines the separator between the data of a line. Only transmitted to the library sequence.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/queryparameter_color_16x16.png?raw=true "  alt="QueryParameter" >&nbsp;_use_sequence_data
</td>
<td>
Data sequence to call in form <b>&lt;project_name&gt;.&lt;sequence_name&gt;</b>
Only transmitted to the library sequence.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/queryparameter_color_16x16.png?raw=true "  alt="QueryParameter" >&nbsp;_use_title
</td>
<td>
Generates title line from data source tags/keys. Only transmitted to the library sequence.
</td>
</tr>
<tr>
<td>
<img src="https://github.com/convertigo/convertigo/blob/develop/engine/src/com/twinsoft/convertigo/beans/rest/images/pathparameter_color_16x16.png?raw=true "  alt="PathParameter" >&nbsp;nb_lines
</td>
<td>
Parameter transmitted to the data source sequence
</td>
</tr>
</table>

</p></blockquote></details>
</p></blockquote></details>
</p></blockquote></details>
