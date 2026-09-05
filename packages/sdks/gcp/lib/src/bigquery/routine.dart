import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_args.dart';
import 'routine_argument.dart';
import 'routine_external_runtime_options.dart';
import 'routine_python_options.dart';
import 'routine_remote_function_options.dart';
import 'routine_spark_options.dart';
import 'routine_state.dart';

/// A user-defined function or a stored procedure that belongs to a Dataset
///
///
/// To get more information about Routine, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/routines)
/// * How-to Guides
/// * [Routines Intro](https://cloud.google.com/bigquery/docs/reference/rest/v2/routines)
///
/// ## Example Usage
///
/// ### Bigquery Routine Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const sproc = new gcp.bigquery.Routine("sproc", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "PROCEDURE",
///     language: "SQL",
///     securityMode: "INVOKER",
///     definitionBody: "CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// sproc = gcp.bigquery.Routine("sproc",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="PROCEDURE",
///     language="SQL",
///     security_mode="INVOKER",
///     definition_body="CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var sproc = new Gcp.BigQuery.Routine("sproc", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "PROCEDURE",
///         Language = "SQL",
///         SecurityMode = "INVOKER",
///         DefinitionBody = "CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "sproc", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("PROCEDURE"),
/// 			Language:       pulumi.String("SQL"),
/// 			SecurityMode:   pulumi.String("INVOKER"),
/// 			DefinitionBody: pulumi.String("CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_routine" "sproc" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "PROCEDURE"
///   language        = "SQL"
///   security_mode   = "INVOKER"
///   definition_body = "CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var sproc = new Routine("sproc", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("PROCEDURE")
///             .language("SQL")
///             .securityMode("INVOKER")
///             .definitionBody("CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   sproc:
///     type: gcp:bigquery:Routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: PROCEDURE
///       language: SQL
///       securityMode: INVOKER
///       definitionBody: CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);
/// ```
///
/// ### Bigquery Routine Json
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const sproc = new gcp.bigquery.Routine("sproc", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "SCALAR_FUNCTION",
///     language: "JAVASCRIPT",
///     definitionBody: "CREATE FUNCTION multiplyInputs return x*y;",
///     arguments: [
///         {
///             name: "x",
///             dataType: "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///         {
///             name: "y",
///             dataType: "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///     ],
///     returnType: "{\"typeKind\" :  \"FLOAT64\"}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// sproc = gcp.bigquery.Routine("sproc",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="SCALAR_FUNCTION",
///     language="JAVASCRIPT",
///     definition_body="CREATE FUNCTION multiplyInputs return x*y;",
///     arguments=[
///         {
///             "name": "x",
///             "data_type": "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///         {
///             "name": "y",
///             "data_type": "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///     ],
///     return_type="{\"typeKind\" :  \"FLOAT64\"}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var sproc = new Gcp.BigQuery.Routine("sproc", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "SCALAR_FUNCTION",
///         Language = "JAVASCRIPT",
///         DefinitionBody = "CREATE FUNCTION multiplyInputs return x*y;",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "x",
///                 DataType = "{\"typeKind\" :  \"FLOAT64\"}",
///             },
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "y",
///                 DataType = "{\"typeKind\" :  \"FLOAT64\"}",
///             },
///         },
///         ReturnType = "{\"typeKind\" :  \"FLOAT64\"}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "sproc", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("SCALAR_FUNCTION"),
/// 			Language:       pulumi.String("JAVASCRIPT"),
/// 			DefinitionBody: pulumi.String("CREATE FUNCTION multiplyInputs return x*y;"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("x"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 				},
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("y"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 				},
/// 			},
/// 			ReturnType: pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_routine" "sproc" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "SCALAR_FUNCTION"
///   language        = "JAVASCRIPT"
///   definition_body = "CREATE FUNCTION multiplyInputs return x*y;"
///   arguments {
///     name      = "x"
///     data_type = "{\"typeKind\" :  \"FLOAT64\"}"
///   }
///   arguments {
///     name      = "y"
///     data_type = "{\"typeKind\" :  \"FLOAT64\"}"
///   }
///   return_type = "{\"typeKind\" :  \"FLOAT64\"}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var sproc = new Routine("sproc", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("SCALAR_FUNCTION")
///             .language("JAVASCRIPT")
///             .definitionBody("CREATE FUNCTION multiplyInputs return x*y;")
///             .arguments(
///                 RoutineArgumentArgs.builder()
///                     .name("x")
///                     .dataType("{\"typeKind\" :  \"FLOAT64\"}")
///                     .build(),
///                 RoutineArgumentArgs.builder()
///                     .name("y")
///                     .dataType("{\"typeKind\" :  \"FLOAT64\"}")
///                     .build())
///             .returnType("{\"typeKind\" :  \"FLOAT64\"}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   sproc:
///     type: gcp:bigquery:Routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: SCALAR_FUNCTION
///       language: JAVASCRIPT
///       definitionBody: CREATE FUNCTION multiplyInputs return x*y;
///       arguments:
///         - name: x
///           dataType: '{"typeKind" :  "FLOAT64"}'
///         - name: y
///           dataType: '{"typeKind" :  "FLOAT64"}'
///       returnType: '{"typeKind" :  "FLOAT64"}'
/// ```
///
/// ### Bigquery Routine Tvf
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const sproc = new gcp.bigquery.Routine("sproc", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "TABLE_VALUED_FUNCTION",
///     language: "SQL",
///     definitionBody: "SELECT 1 + value AS value\n",
///     arguments: [{
///         name: "value",
///         argumentKind: "FIXED_TYPE",
///         dataType: JSON.stringify({
///             typeKind: "INT64",
///         }),
///     }],
///     returnTableType: JSON.stringify({
///         columns: [{
///             name: "value",
///             type: {
///                 typeKind: "INT64",
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// sproc = gcp.bigquery.Routine("sproc",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="TABLE_VALUED_FUNCTION",
///     language="SQL",
///     definition_body="SELECT 1 + value AS value\n",
///     arguments=[{
///         "name": "value",
///         "argument_kind": "FIXED_TYPE",
///         "data_type": json.dumps({
///             "typeKind": "INT64",
///         }),
///     }],
///     return_table_type=json.dumps({
///         "columns": [{
///             "name": "value",
///             "type": {
///                 "typeKind": "INT64",
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var sproc = new Gcp.BigQuery.Routine("sproc", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "TABLE_VALUED_FUNCTION",
///         Language = "SQL",
///         DefinitionBody = @"SELECT 1 + value AS value
/// ",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "value",
///                 ArgumentKind = "FIXED_TYPE",
///                 DataType = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["typeKind"] = "INT64",
///                 }),
///             },
///         },
///         ReturnTableType = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["columns"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "value",
///                     ["type"] = new Dictionary<string, object?>
///                     {
///                         ["typeKind"] = "INT64",
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"typeKind": "INT64",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"columns": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "value",
/// 					"type": map[string]string{
/// 						"typeKind": "INT64",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = bigquery.NewRoutine(ctx, "sproc", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 			Language:       pulumi.String("SQL"),
/// 			DefinitionBody: pulumi.String("SELECT 1 + value AS value\n"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:         pulumi.String("value"),
/// 					ArgumentKind: pulumi.String("FIXED_TYPE"),
/// 					DataType:     pulumi.String(json0),
/// 				},
/// 			},
/// 			ReturnTableType: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_routine" "sproc" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "TABLE_VALUED_FUNCTION"
///   language        = "SQL"
///   definition_body = "SELECT 1 + value AS value\n"
///   arguments {
///     name          = "value"
///     argument_kind = "FIXED_TYPE"
///     data_type = jsonencode({
///       "typeKind" = "INT64"
///     })
///   }
///   return_table_type = jsonencode({
///     "columns" = [{
///       "name" = "value"
///       "type" = {
///         "typeKind" = "INT64"
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var sproc = new Routine("sproc", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("TABLE_VALUED_FUNCTION")
///             .language("SQL")
///             .definitionBody("""
/// SELECT 1 + value AS value
///             """)
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("value")
///                 .argumentKind("FIXED_TYPE")
///                 .dataType(serializeJson(
///                     jsonObject(
///                         jsonProperty("typeKind", "INT64")
///                     )))
///                 .build())
///             .returnTableType(serializeJson(
///                 jsonObject(
///                     jsonProperty("columns", jsonArray(jsonObject(
///                         jsonProperty("name", "value"),
///                         jsonProperty("type", jsonObject(
///                             jsonProperty("typeKind", "INT64")
///                         ))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   sproc:
///     type: gcp:bigquery:Routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: TABLE_VALUED_FUNCTION
///       language: SQL
///       definitionBody: |
///         SELECT 1 + value AS value
///       arguments:
///         - name: value
///           argumentKind: FIXED_TYPE
///           dataType:
///             fn::toJSON:
///               typeKind: INT64
///       returnTableType:
///         fn::toJSON:
///           columns:
///             - name: value
///               type:
///                 typeKind: INT64
/// ```
///
/// ### Bigquery Routine Table Type
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const sproc = new gcp.bigquery.Routine("sproc", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "TABLE_VALUED_FUNCTION",
///     language: "SQL",
///     description: "Gets every row from a table.",
///     definitionBody: "SELECT * FROM t1",
///     arguments: [{
///         name: "t1",
///         argumentKind: "FIXED_TABLE",
///         tableType: {
///             columns: [{
///                 name: "year",
///                 type: JSON.stringify({
///                     typeKind: "INT64",
///                 }),
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// sproc = gcp.bigquery.Routine("sproc",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="TABLE_VALUED_FUNCTION",
///     language="SQL",
///     description="Gets every row from a table.",
///     definition_body="SELECT * FROM t1",
///     arguments=[{
///         "name": "t1",
///         "argument_kind": "FIXED_TABLE",
///         "table_type": {
///             "columns": [{
///                 "name": "year",
///                 "type": json.dumps({
///                     "typeKind": "INT64",
///                 }),
///             }],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var sproc = new Gcp.BigQuery.Routine("sproc", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "TABLE_VALUED_FUNCTION",
///         Language = "SQL",
///         Description = "Gets every row from a table.",
///         DefinitionBody = "SELECT * FROM t1",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "t1",
///                 ArgumentKind = "FIXED_TABLE",
///                 TableType = new Gcp.BigQuery.Inputs.RoutineArgumentTableTypeArgs
///                 {
///                     Columns = new[]
///                     {
///                         new Gcp.BigQuery.Inputs.RoutineArgumentTableTypeColumnArgs
///                         {
///                             Name = "year",
///                             Type = JsonSerializer.Serialize(new Dictionary<string, object?>
///                             {
///                                 ["typeKind"] = "INT64",
///                             }),
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"typeKind": "INT64",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bigquery.NewRoutine(ctx, "sproc", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 			Language:       pulumi.String("SQL"),
/// 			Description:    pulumi.String("Gets every row from a table."),
/// 			DefinitionBody: pulumi.String("SELECT * FROM t1"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:         pulumi.String("t1"),
/// 					ArgumentKind: pulumi.String("FIXED_TABLE"),
/// 					TableType: &bigquery.RoutineArgumentTableTypeArgs{
/// 						Columns: bigquery.RoutineArgumentTableTypeColumnArray{
/// 							&bigquery.RoutineArgumentTableTypeColumnArgs{
/// 								Name: pulumi.String("year"),
/// 								Type: pulumi.String(json0),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_routine" "sproc" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "TABLE_VALUED_FUNCTION"
///   language        = "SQL"
///   description     = "Gets every row from a table."
///   definition_body = "SELECT * FROM t1"
///   arguments {
///     name          = "t1"
///     argument_kind = "FIXED_TABLE"
///     table_type = {
///       columns = [{
///         "name" = "year"
///         "type" = jsonencode({
///           "typeKind" = "INT64"
///         })
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentTableTypeArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentTableTypeColumnArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var sproc = new Routine("sproc", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("TABLE_VALUED_FUNCTION")
///             .language("SQL")
///             .description("Gets every row from a table.")
///             .definitionBody("SELECT * FROM t1")
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("t1")
///                 .argumentKind("FIXED_TABLE")
///                 .tableType(RoutineArgumentTableTypeArgs.builder()
///                     .columns(RoutineArgumentTableTypeColumnArgs.builder()
///                         .name("year")
///                         .type(serializeJson(
///                             jsonObject(
///                                 jsonProperty("typeKind", "INT64")
///                             )))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   sproc:
///     type: gcp:bigquery:Routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: TABLE_VALUED_FUNCTION
///       language: SQL
///       description: Gets every row from a table.
///       definitionBody: SELECT * FROM t1
///       arguments:
///         - name: t1
///           argumentKind: FIXED_TABLE
///           tableType:
///             columns:
///               - name: year
///                 type:
///                   fn::toJSON:
///                     typeKind: INT64
/// ```
///
/// ### Bigquery Routine Pyspark
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const testConnection = new gcp.bigquery.Connection("test", {
///     connectionId: "connection_id",
///     location: "US",
///     spark: {},
/// });
/// const pyspark = new gcp.bigquery.Routine("pyspark", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "PROCEDURE",
///     language: "PYTHON",
///     definitionBody: `from pyspark.sql import SparkSession
///
/// spark = SparkSession.builder.appName(\\"spark-bigquery-demo\\").getOrCreate()
///
/// # Load data from BigQuery.
/// words = spark.read.format(\\"bigquery\\") \\\\
///   .option(\\"table\\", \\"bigquery-public-data:samples.shakespeare\\") \\\\
///   .load()
/// words.createOrReplaceTempView(\\"words\\")
///
/// # Perform word count.
/// word_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\\"sum(word_count)\\", \\"sum_word_count\\")
/// word_count.show()
/// word_count.printSchema()
///
/// # Saving the data to BigQuery
/// word_count.write.format(\\"bigquery\\") \\\\
///   .option(\\"writeMethod\\", \\"direct\\") \\\\
///   .save(\\"wordcount_dataset.wordcount_output\\")
/// `,
///     sparkOptions: {
///         connection: testConnection.name,
///         runtimeVersion: "2.1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// test_connection = gcp.bigquery.Connection("test",
///     connection_id="connection_id",
///     location="US",
///     spark={})
/// pyspark = gcp.bigquery.Routine("pyspark",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="PROCEDURE",
///     language="PYTHON",
///     definition_body="""from pyspark.sql import SparkSession
///
/// spark = SparkSession.builder.appName(\"spark-bigquery-demo\").getOrCreate()
///
/// # Load data from BigQuery.
/// words = spark.read.format(\"bigquery\") \\
///   .option(\"table\", \"bigquery-public-data:samples.shakespeare\") \\
///   .load()
/// words.createOrReplaceTempView(\"words\")
///
/// # Perform word count.
/// word_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\"sum(word_count)\", \"sum_word_count\")
/// word_count.show()
/// word_count.printSchema()
///
/// # Saving the data to BigQuery
/// word_count.write.format(\"bigquery\") \\
///   .option(\"writeMethod\", \"direct\") \\
///   .save(\"wordcount_dataset.wordcount_output\")
/// """,
///     spark_options={
///         "connection": test_connection.name,
///         "runtime_version": "2.1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var testConnection = new Gcp.BigQuery.Connection("test", new()
///     {
///         ConnectionId = "connection_id",
///         Location = "US",
///         Spark = new() { },
///     });
///
///     var pyspark = new Gcp.BigQuery.Routine("pyspark", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "PROCEDURE",
///         Language = "PYTHON",
///         DefinitionBody = @"from pyspark.sql import SparkSession
///
/// spark = SparkSession.builder.appName(\""spark-bigquery-demo\"").getOrCreate()
///
/// # Load data from BigQuery.
/// words = spark.read.format(\""bigquery\"") \\
///   .option(\""table\"", \""bigquery-public-data:samples.shakespeare\"") \\
///   .load()
/// words.createOrReplaceTempView(\""words\"")
///
/// # Perform word count.
/// word_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\""sum(word_count)\"", \""sum_word_count\"")
/// word_count.show()
/// word_count.printSchema()
///
/// # Saving the data to BigQuery
/// word_count.write.format(\""bigquery\"") \\
///   .option(\""writeMethod\"", \""direct\"") \\
///   .save(\""wordcount_dataset.wordcount_output\"")
/// ",
///         SparkOptions = new Gcp.BigQuery.Inputs.RoutineSparkOptionsArgs
///         {
///             Connection = testConnection.Name,
///             RuntimeVersion = "2.1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testConnection, err := bigquery.NewConnection(ctx, "test", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("connection_id"),
/// 			Location:     pulumi.String("US"),
/// 			Spark:        &bigquery.ConnectionSparkArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "pyspark", &bigquery.RoutineArgs{
/// 			DatasetId:   test.DatasetId,
/// 			RoutineId:   pulumi.String("routine_id"),
/// 			RoutineType: pulumi.String("PROCEDURE"),
/// 			Language:    pulumi.String("PYTHON"),
/// 			DefinitionBody: pulumi.String(`from pyspark.sql import SparkSession
///
/// spark = SparkSession.builder.appName(\"spark-bigquery-demo\").getOrCreate()
///
/// # Load data from BigQuery.
/// words = spark.read.format(\"bigquery\") \\
///   .option(\"table\", \"bigquery-public-data:samples.shakespeare\") \\
///   .load()
/// words.createOrReplaceTempView(\"words\")
///
/// # Perform word count.
/// word_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\"sum(word_count)\", \"sum_word_count\")
/// word_count.show()
/// word_count.printSchema()
///
/// # Saving the data to BigQuery
/// word_count.write.format(\"bigquery\") \\
///   .option(\"writeMethod\", \"direct\") \\
///   .save(\"wordcount_dataset.wordcount_output\")
/// `),
/// 			SparkOptions: &bigquery.RoutineSparkOptionsArgs{
/// 				Connection:     testConnection.Name,
/// 				RuntimeVersion: pulumi.String("2.1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_connection" "test" {
///   connection_id = "connection_id"
///   location      = "US"
///   spark         = {}
/// }
/// resource "gcp_bigquery_routine" "pyspark" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "PROCEDURE"
///   language        = "PYTHON"
///   definition_body = "from pyspark.sql import SparkSession\n\nspark = SparkSession.builder.appName(\\\"spark-bigquery-demo\\\").getOrCreate()\n    \n# Load data from BigQuery.\nwords = spark.read.format(\\\"bigquery\\\") \\\\\n  .option(\\\"table\\\", \\\"bigquery-public-data:samples.shakespeare\\\") \\\\\n  .load()\nwords.createOrReplaceTempView(\\\"words\\\")\n    \n# Perform word count.\nword_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\\\"sum(word_count)\\\", \\\"sum_word_count\\\")\nword_count.show()\nword_count.printSchema()\n    \n# Saving the data to BigQuery\nword_count.write.format(\\\"bigquery\\\") \\\\\n  .option(\\\"writeMethod\\\", \\\"direct\\\") \\\\\n  .save(\\\"wordcount_dataset.wordcount_output\\\")\n"
///   spark_options = {
///     connection      = gcp_bigquery_connection.test.name
///     runtime_version = "2.1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionSparkArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineSparkOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var testConnection = new Connection("testConnection", ConnectionArgs.builder()
///             .connectionId("connection_id")
///             .location("US")
///             .spark(ConnectionSparkArgs.builder()
///                 .build())
///             .build());
///
///         var pyspark = new Routine("pyspark", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("PROCEDURE")
///             .language("PYTHON")
///             .definitionBody("""
/// from pyspark.sql import SparkSession
///
/// spark = SparkSession.builder.appName(\"spark-bigquery-demo\").getOrCreate()
///
/// # Load data from BigQuery.
/// words = spark.read.format(\"bigquery\") \\
///   .option(\"table\", \"bigquery-public-data:samples.shakespeare\") \\
///   .load()
/// words.createOrReplaceTempView(\"words\")
///
/// # Perform word count.
/// word_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\"sum(word_count)\", \"sum_word_count\")
/// word_count.show()
/// word_count.printSchema()
///
/// # Saving the data to BigQuery
/// word_count.write.format(\"bigquery\") \\
///   .option(\"writeMethod\", \"direct\") \\
///   .save(\"wordcount_dataset.wordcount_output\")
///             """)
///             .sparkOptions(RoutineSparkOptionsArgs.builder()
///                 .connection(testConnection.name())
///                 .runtimeVersion("2.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   testConnection:
///     type: gcp:bigquery:Connection
///     name: test
///     properties:
///       connectionId: connection_id
///       location: US
///       spark: {}
///   pyspark:
///     type: gcp:bigquery:Routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: PROCEDURE
///       language: PYTHON
///       definitionBody: "from pyspark.sql import SparkSession\n\nspark = SparkSession.builder.appName(\\\"spark-bigquery-demo\\\").getOrCreate()\n    \n# Load data from BigQuery.\nwords = spark.read.format(\\\"bigquery\\\") \\\\\n  .option(\\\"table\\\", \\\"bigquery-public-data:samples.shakespeare\\\") \\\\\n  .load()\nwords.createOrReplaceTempView(\\\"words\\\")\n    \n# Perform word count.\nword_count = words.select('word', 'word_count').groupBy('word').sum('word_count').withColumnRenamed(\\\"sum(word_count)\\\", \\\"sum_word_count\\\")\nword_count.show()\nword_count.printSchema()\n    \n# Saving the data to BigQuery\nword_count.write.format(\\\"bigquery\\\") \\\\\n  .option(\\\"writeMethod\\\", \\\"direct\\\") \\\\\n  .save(\\\"wordcount_dataset.wordcount_output\\\")\n"
///       sparkOptions:
///         connection: ${testConnection.name}
///         runtimeVersion: '2.1'
/// ```
///
/// ### Bigquery Routine Pyspark Mainfile
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const testConnection = new gcp.bigquery.Connection("test", {
///     connectionId: "connection_id",
///     location: "US",
///     spark: {},
/// });
/// const pysparkMainfile = new gcp.bigquery.Routine("pyspark_mainfile", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "PROCEDURE",
///     language: "PYTHON",
///     definitionBody: "",
///     sparkOptions: {
///         connection: testConnection.name,
///         runtimeVersion: "2.1",
///         mainFileUri: "gs://test-bucket/main.py",
///         pyFileUris: ["gs://test-bucket/lib.py"],
///         fileUris: ["gs://test-bucket/distribute_in_executor.json"],
///         archiveUris: ["gs://test-bucket/distribute_in_executor.tar.gz"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// test_connection = gcp.bigquery.Connection("test",
///     connection_id="connection_id",
///     location="US",
///     spark={})
/// pyspark_mainfile = gcp.bigquery.Routine("pyspark_mainfile",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="PROCEDURE",
///     language="PYTHON",
///     definition_body="",
///     spark_options={
///         "connection": test_connection.name,
///         "runtime_version": "2.1",
///         "main_file_uri": "gs://test-bucket/main.py",
///         "py_file_uris": ["gs://test-bucket/lib.py"],
///         "file_uris": ["gs://test-bucket/distribute_in_executor.json"],
///         "archive_uris": ["gs://test-bucket/distribute_in_executor.tar.gz"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var testConnection = new Gcp.BigQuery.Connection("test", new()
///     {
///         ConnectionId = "connection_id",
///         Location = "US",
///         Spark = new() { },
///     });
///
///     var pysparkMainfile = new Gcp.BigQuery.Routine("pyspark_mainfile", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "PROCEDURE",
///         Language = "PYTHON",
///         DefinitionBody = "",
///         SparkOptions = new Gcp.BigQuery.Inputs.RoutineSparkOptionsArgs
///         {
///             Connection = testConnection.Name,
///             RuntimeVersion = "2.1",
///             MainFileUri = "gs://test-bucket/main.py",
///             PyFileUris = new[]
///             {
///                 "gs://test-bucket/lib.py",
///             },
///             FileUris = new[]
///             {
///                 "gs://test-bucket/distribute_in_executor.json",
///             },
///             ArchiveUris = new[]
///             {
///                 "gs://test-bucket/distribute_in_executor.tar.gz",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testConnection, err := bigquery.NewConnection(ctx, "test", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("connection_id"),
/// 			Location:     pulumi.String("US"),
/// 			Spark:        &bigquery.ConnectionSparkArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "pyspark_mainfile", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("PROCEDURE"),
/// 			Language:       pulumi.String("PYTHON"),
/// 			DefinitionBody: pulumi.String(""),
/// 			SparkOptions: &bigquery.RoutineSparkOptionsArgs{
/// 				Connection:     testConnection.Name,
/// 				RuntimeVersion: pulumi.String("2.1"),
/// 				MainFileUri:    pulumi.String("gs://test-bucket/main.py"),
/// 				PyFileUris: pulumi.StringArray{
/// 					pulumi.String("gs://test-bucket/lib.py"),
/// 				},
/// 				FileUris: pulumi.StringArray{
/// 					pulumi.String("gs://test-bucket/distribute_in_executor.json"),
/// 				},
/// 				ArchiveUris: pulumi.StringArray{
/// 					pulumi.String("gs://test-bucket/distribute_in_executor.tar.gz"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_connection" "test" {
///   connection_id = "connection_id"
///   location      = "US"
///   spark         = {}
/// }
/// resource "gcp_bigquery_routine" "pyspark_mainfile" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "PROCEDURE"
///   language        = "PYTHON"
///   definition_body = ""
///   spark_options = {
///     connection      = gcp_bigquery_connection.test.name
///     runtime_version = "2.1"
///     main_file_uri   = "gs://test-bucket/main.py"
///     py_file_uris    = ["gs://test-bucket/lib.py"]
///     file_uris       = ["gs://test-bucket/distribute_in_executor.json"]
///     archive_uris    = ["gs://test-bucket/distribute_in_executor.tar.gz"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionSparkArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineSparkOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var testConnection = new Connection("testConnection", ConnectionArgs.builder()
///             .connectionId("connection_id")
///             .location("US")
///             .spark(ConnectionSparkArgs.builder()
///                 .build())
///             .build());
///
///         var pysparkMainfile = new Routine("pysparkMainfile", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("PROCEDURE")
///             .language("PYTHON")
///             .definitionBody("")
///             .sparkOptions(RoutineSparkOptionsArgs.builder()
///                 .connection(testConnection.name())
///                 .runtimeVersion("2.1")
///                 .mainFileUri("gs://test-bucket/main.py")
///                 .pyFileUris("gs://test-bucket/lib.py")
///                 .fileUris("gs://test-bucket/distribute_in_executor.json")
///                 .archiveUris("gs://test-bucket/distribute_in_executor.tar.gz")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   testConnection:
///     type: gcp:bigquery:Connection
///     name: test
///     properties:
///       connectionId: connection_id
///       location: US
///       spark: {}
///   pysparkMainfile:
///     type: gcp:bigquery:Routine
///     name: pyspark_mainfile
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: PROCEDURE
///       language: PYTHON
///       definitionBody: ""
///       sparkOptions:
///         connection: ${testConnection.name}
///         runtimeVersion: '2.1'
///         mainFileUri: gs://test-bucket/main.py
///         pyFileUris:
///           - gs://test-bucket/lib.py
///         fileUris:
///           - gs://test-bucket/distribute_in_executor.json
///         archiveUris:
///           - gs://test-bucket/distribute_in_executor.tar.gz
/// ```
///
/// ### Bigquery Routine Spark Jar
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const testConnection = new gcp.bigquery.Connection("test", {
///     connectionId: "connection_id",
///     location: "US",
///     spark: {},
/// });
/// const sparkJar = new gcp.bigquery.Routine("spark_jar", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "PROCEDURE",
///     language: "SCALA",
///     definitionBody: "",
///     sparkOptions: {
///         connection: testConnection.name,
///         runtimeVersion: "2.1",
///         containerImage: "gcr.io/my-project-id/my-spark-image:latest",
///         mainClass: "com.google.test.jar.MainClass",
///         jarUris: ["gs://test-bucket/uberjar_spark_spark3.jar"],
///         properties: {
///             "spark.dataproc.scaling.version": "2",
///             "spark.reducer.fetchMigratedShuffle.enabled": "true",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// test_connection = gcp.bigquery.Connection("test",
///     connection_id="connection_id",
///     location="US",
///     spark={})
/// spark_jar = gcp.bigquery.Routine("spark_jar",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="PROCEDURE",
///     language="SCALA",
///     definition_body="",
///     spark_options={
///         "connection": test_connection.name,
///         "runtime_version": "2.1",
///         "container_image": "gcr.io/my-project-id/my-spark-image:latest",
///         "main_class": "com.google.test.jar.MainClass",
///         "jar_uris": ["gs://test-bucket/uberjar_spark_spark3.jar"],
///         "properties": {
///             "spark.dataproc.scaling.version": "2",
///             "spark.reducer.fetchMigratedShuffle.enabled": "true",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var testConnection = new Gcp.BigQuery.Connection("test", new()
///     {
///         ConnectionId = "connection_id",
///         Location = "US",
///         Spark = new() { },
///     });
///
///     var sparkJar = new Gcp.BigQuery.Routine("spark_jar", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "PROCEDURE",
///         Language = "SCALA",
///         DefinitionBody = "",
///         SparkOptions = new Gcp.BigQuery.Inputs.RoutineSparkOptionsArgs
///         {
///             Connection = testConnection.Name,
///             RuntimeVersion = "2.1",
///             ContainerImage = "gcr.io/my-project-id/my-spark-image:latest",
///             MainClass = "com.google.test.jar.MainClass",
///             JarUris = new[]
///             {
///                 "gs://test-bucket/uberjar_spark_spark3.jar",
///             },
///             Properties =
///             {
///                 { "spark.dataproc.scaling.version", "2" },
///                 { "spark.reducer.fetchMigratedShuffle.enabled", "true" },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testConnection, err := bigquery.NewConnection(ctx, "test", &bigquery.ConnectionArgs{
/// 			ConnectionId: pulumi.String("connection_id"),
/// 			Location:     pulumi.String("US"),
/// 			Spark:        &bigquery.ConnectionSparkArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "spark_jar", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("PROCEDURE"),
/// 			Language:       pulumi.String("SCALA"),
/// 			DefinitionBody: pulumi.String(""),
/// 			SparkOptions: &bigquery.RoutineSparkOptionsArgs{
/// 				Connection:     testConnection.Name,
/// 				RuntimeVersion: pulumi.String("2.1"),
/// 				ContainerImage: pulumi.String("gcr.io/my-project-id/my-spark-image:latest"),
/// 				MainClass:      pulumi.String("com.google.test.jar.MainClass"),
/// 				JarUris: pulumi.StringArray{
/// 					pulumi.String("gs://test-bucket/uberjar_spark_spark3.jar"),
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"spark.dataproc.scaling.version":             pulumi.String("2"),
/// 					"spark.reducer.fetchMigratedShuffle.enabled": pulumi.String("true"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_connection" "test" {
///   connection_id = "connection_id"
///   location      = "US"
///   spark         = {}
/// }
/// resource "gcp_bigquery_routine" "spark_jar" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "PROCEDURE"
///   language        = "SCALA"
///   definition_body = ""
///   spark_options = {
///     connection      = gcp_bigquery_connection.test.name
///     runtime_version = "2.1"
///     container_image = "gcr.io/my-project-id/my-spark-image:latest"
///     main_class      = "com.google.test.jar.MainClass"
///     jar_uris        = ["gs://test-bucket/uberjar_spark_spark3.jar"]
///     properties = {
///       "spark.dataproc.scaling.version"             = "2"
///       "spark.reducer.fetchMigratedShuffle.enabled" = "true"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionSparkArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineSparkOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var testConnection = new Connection("testConnection", ConnectionArgs.builder()
///             .connectionId("connection_id")
///             .location("US")
///             .spark(ConnectionSparkArgs.builder()
///                 .build())
///             .build());
///
///         var sparkJar = new Routine("sparkJar", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("PROCEDURE")
///             .language("SCALA")
///             .definitionBody("")
///             .sparkOptions(RoutineSparkOptionsArgs.builder()
///                 .connection(testConnection.name())
///                 .runtimeVersion("2.1")
///                 .containerImage("gcr.io/my-project-id/my-spark-image:latest")
///                 .mainClass("com.google.test.jar.MainClass")
///                 .jarUris("gs://test-bucket/uberjar_spark_spark3.jar")
///                 .properties(Map.ofEntries(
///                     Map.entry("spark.dataproc.scaling.version", "2"),
///                     Map.entry("spark.reducer.fetchMigratedShuffle.enabled", "true")
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   testConnection:
///     type: gcp:bigquery:Connection
///     name: test
///     properties:
///       connectionId: connection_id
///       location: US
///       spark: {}
///   sparkJar:
///     type: gcp:bigquery:Routine
///     name: spark_jar
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: PROCEDURE
///       language: SCALA
///       definitionBody: ""
///       sparkOptions:
///         connection: ${testConnection.name}
///         runtimeVersion: '2.1'
///         containerImage: gcr.io/my-project-id/my-spark-image:latest
///         mainClass: com.google.test.jar.MainClass
///         jarUris:
///           - gs://test-bucket/uberjar_spark_spark3.jar
///         properties:
///           spark.dataproc.scaling.version: '2'
///           spark.reducer.fetchMigratedShuffle.enabled: 'true'
/// ```
///
/// ### Bigquery Routine Data Governance Type
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "tf_test_dataset_id_60302"});
/// const customMaskingRoutine = new gcp.bigquery.Routine("custom_masking_routine", {
///     datasetId: test.datasetId,
///     routineId: "custom_masking_routine",
///     routineType: "SCALAR_FUNCTION",
///     language: "SQL",
///     dataGovernanceType: "DATA_MASKING",
///     definitionBody: "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     arguments: [{
///         name: "ssn",
///         dataType: "{\"typeKind\" :  \"STRING\"}",
///     }],
///     returnType: "{\"typeKind\" :  \"STRING\"}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="tf_test_dataset_id_60302")
/// custom_masking_routine = gcp.bigquery.Routine("custom_masking_routine",
///     dataset_id=test.dataset_id,
///     routine_id="custom_masking_routine",
///     routine_type="SCALAR_FUNCTION",
///     language="SQL",
///     data_governance_type="DATA_MASKING",
///     definition_body="SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///     arguments=[{
///         "name": "ssn",
///         "data_type": "{\"typeKind\" :  \"STRING\"}",
///     }],
///     return_type="{\"typeKind\" :  \"STRING\"}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "tf_test_dataset_id_60302",
///     });
///
///     var customMaskingRoutine = new Gcp.BigQuery.Routine("custom_masking_routine", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "custom_masking_routine",
///         RoutineType = "SCALAR_FUNCTION",
///         Language = "SQL",
///         DataGovernanceType = "DATA_MASKING",
///         DefinitionBody = "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "ssn",
///                 DataType = "{\"typeKind\" :  \"STRING\"}",
///             },
///         },
///         ReturnType = "{\"typeKind\" :  \"STRING\"}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("tf_test_dataset_id_60302"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "custom_masking_routine", &bigquery.RoutineArgs{
/// 			DatasetId:          test.DatasetId,
/// 			RoutineId:          pulumi.String("custom_masking_routine"),
/// 			RoutineType:        pulumi.String("SCALAR_FUNCTION"),
/// 			Language:           pulumi.String("SQL"),
/// 			DataGovernanceType: pulumi.String("DATA_MASKING"),
/// 			DefinitionBody:     pulumi.String("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("ssn"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 				},
/// 			},
/// 			ReturnType: pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "tf_test_dataset_id_60302"
/// }
/// resource "gcp_bigquery_routine" "custom_masking_routine" {
///   dataset_id           = gcp_bigquery_dataset.test.dataset_id
///   routine_id           = "custom_masking_routine"
///   routine_type         = "SCALAR_FUNCTION"
///   language             = "SQL"
///   data_governance_type = "DATA_MASKING"
///   definition_body      = "SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')"
///   arguments {
///     name      = "ssn"
///     data_type = "{\"typeKind\" :  \"STRING\"}"
///   }
///   return_type = "{\"typeKind\" :  \"STRING\"}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("tf_test_dataset_id_60302")
///             .build());
///
///         var customMaskingRoutine = new Routine("customMaskingRoutine", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("custom_masking_routine")
///             .routineType("SCALAR_FUNCTION")
///             .language("SQL")
///             .dataGovernanceType("DATA_MASKING")
///             .definitionBody("SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')")
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("ssn")
///                 .dataType("{\"typeKind\" :  \"STRING\"}")
///                 .build())
///             .returnType("{\"typeKind\" :  \"STRING\"}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: tf_test_dataset_id_60302
///   customMaskingRoutine:
///     type: gcp:bigquery:Routine
///     name: custom_masking_routine
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: custom_masking_routine
///       routineType: SCALAR_FUNCTION
///       language: SQL
///       dataGovernanceType: DATA_MASKING
///       definitionBody: SAFE.REGEXP_REPLACE(ssn, '[0-9]', 'X')
///       arguments:
///         - name: ssn
///           dataType: '{"typeKind" :  "STRING"}'
///       returnType: '{"typeKind" :  "STRING"}'
/// ```
///
/// ### Bigquery Routine Remote Function
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const testConnection = new gcp.bigquery.Connection("test", {
///     connectionId: "connection_id",
///     location: "US",
///     cloudResource: {},
/// });
/// const remoteFunction = new gcp.bigquery.Routine("remote_function", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "SCALAR_FUNCTION",
///     definitionBody: "",
///     returnType: "{\"typeKind\" :  \"STRING\"}",
///     remoteFunctionOptions: {
///         endpoint: "https://us-east1-my_gcf_project.cloudfunctions.net/remote_add",
///         connection: testConnection.name,
///         maxBatchingRows: "10",
///         userDefinedContext: {
///             z: "1.5",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// test_connection = gcp.bigquery.Connection("test",
///     connection_id="connection_id",
///     location="US",
///     cloud_resource={})
/// remote_function = gcp.bigquery.Routine("remote_function",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="SCALAR_FUNCTION",
///     definition_body="",
///     return_type="{\"typeKind\" :  \"STRING\"}",
///     remote_function_options={
///         "endpoint": "https://us-east1-my_gcf_project.cloudfunctions.net/remote_add",
///         "connection": test_connection.name,
///         "max_batching_rows": "10",
///         "user_defined_context": {
///             "z": "1.5",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var testConnection = new Gcp.BigQuery.Connection("test", new()
///     {
///         ConnectionId = "connection_id",
///         Location = "US",
///         CloudResource = new() { },
///     });
///
///     var remoteFunction = new Gcp.BigQuery.Routine("remote_function", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "SCALAR_FUNCTION",
///         DefinitionBody = "",
///         ReturnType = "{\"typeKind\" :  \"STRING\"}",
///         RemoteFunctionOptions = new Gcp.BigQuery.Inputs.RoutineRemoteFunctionOptionsArgs
///         {
///             Endpoint = "https://us-east1-my_gcf_project.cloudfunctions.net/remote_add",
///             Connection = testConnection.Name,
///             MaxBatchingRows = "10",
///             UserDefinedContext =
///             {
///                 { "z", "1.5" },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testConnection, err := bigquery.NewConnection(ctx, "test", &bigquery.ConnectionArgs{
/// 			ConnectionId:  pulumi.String("connection_id"),
/// 			Location:      pulumi.String("US"),
/// 			CloudResource: &bigquery.ConnectionCloudResourceArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "remote_function", &bigquery.RoutineArgs{
/// 			DatasetId:      test.DatasetId,
/// 			RoutineId:      pulumi.String("routine_id"),
/// 			RoutineType:    pulumi.String("SCALAR_FUNCTION"),
/// 			DefinitionBody: pulumi.String(""),
/// 			ReturnType:     pulumi.String("{\"typeKind\" :  \"STRING\"}"),
/// 			RemoteFunctionOptions: &bigquery.RoutineRemoteFunctionOptionsArgs{
/// 				Endpoint:        pulumi.String("https://us-east1-my_gcf_project.cloudfunctions.net/remote_add"),
/// 				Connection:      testConnection.Name,
/// 				MaxBatchingRows: pulumi.String("10"),
/// 				UserDefinedContext: pulumi.StringMap{
/// 					"z": pulumi.String("1.5"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_connection" "test" {
///   connection_id  = "connection_id"
///   location       = "US"
///   cloud_resource = {}
/// }
/// resource "gcp_bigquery_routine" "remote_function" {
///   dataset_id      = gcp_bigquery_dataset.test.dataset_id
///   routine_id      = "routine_id"
///   routine_type    = "SCALAR_FUNCTION"
///   definition_body = ""
///   return_type     = "{\"typeKind\" :  \"STRING\"}"
///   remote_function_options = {
///     endpoint          = "https://us-east1-my_gcf_project.cloudfunctions.net/remote_add"
///     connection        = gcp_bigquery_connection.test.name
///     max_batching_rows = "10"
///     user_defined_context = {
///       "z" = "1.5"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudResourceArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineRemoteFunctionOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var testConnection = new Connection("testConnection", ConnectionArgs.builder()
///             .connectionId("connection_id")
///             .location("US")
///             .cloudResource(ConnectionCloudResourceArgs.builder()
///                 .build())
///             .build());
///
///         var remoteFunction = new Routine("remoteFunction", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("SCALAR_FUNCTION")
///             .definitionBody("")
///             .returnType("{\"typeKind\" :  \"STRING\"}")
///             .remoteFunctionOptions(RoutineRemoteFunctionOptionsArgs.builder()
///                 .endpoint("https://us-east1-my_gcf_project.cloudfunctions.net/remote_add")
///                 .connection(testConnection.name())
///                 .maxBatchingRows("10")
///                 .userDefinedContext(Map.of("z", "1.5"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   testConnection:
///     type: gcp:bigquery:Connection
///     name: test
///     properties:
///       connectionId: connection_id
///       location: US
///       cloudResource: {}
///   remoteFunction:
///     type: gcp:bigquery:Routine
///     name: remote_function
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: SCALAR_FUNCTION
///       definitionBody: ""
///       returnType: '{"typeKind" :  "STRING"}'
///       remoteFunctionOptions:
///         endpoint: https://us-east1-my_gcf_project.cloudfunctions.net/remote_add
///         connection: ${testConnection.name}
///         maxBatchingRows: '10'
///         userDefinedContext:
///           z: '1.5'
/// ```
///
/// ### Bigquery Routine Python Function
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.bigquery.Dataset("test", {datasetId: "dataset_id"});
/// const pythonFunction = new gcp.bigquery.Routine("python_function", {
///     datasetId: test.datasetId,
///     routineId: "routine_id",
///     routineType: "SCALAR_FUNCTION",
///     language: "PYTHON",
///     arguments: [
///         {
///             name: "x",
///             dataType: "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///         {
///             name: "y",
///             dataType: "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///     ],
///     definitionBody: `def multiply(x, y):
///   return x * y
/// `,
///     returnType: "{\"typeKind\" :  \"FLOAT64\"}",
///     pythonOptions: {
///         entryPoint: "multiply",
///     },
///     externalRuntimeOptions: {
///         containerMemory: "512Mi",
///         containerCpu: 0.5,
///         runtimeVersion: "python-3.11",
///         containerRequestConcurrency: "1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.bigquery.Dataset("test", dataset_id="dataset_id")
/// python_function = gcp.bigquery.Routine("python_function",
///     dataset_id=test.dataset_id,
///     routine_id="routine_id",
///     routine_type="SCALAR_FUNCTION",
///     language="PYTHON",
///     arguments=[
///         {
///             "name": "x",
///             "data_type": "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///         {
///             "name": "y",
///             "data_type": "{\"typeKind\" :  \"FLOAT64\"}",
///         },
///     ],
///     definition_body="""def multiply(x, y):
///   return x * y
/// """,
///     return_type="{\"typeKind\" :  \"FLOAT64\"}",
///     python_options={
///         "entry_point": "multiply",
///     },
///     external_runtime_options={
///         "container_memory": "512Mi",
///         "container_cpu": 0.5,
///         "runtime_version": "python-3.11",
///         "container_request_concurrency": "1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "dataset_id",
///     });
///
///     var pythonFunction = new Gcp.BigQuery.Routine("python_function", new()
///     {
///         DatasetId = test.DatasetId,
///         RoutineId = "routine_id",
///         RoutineType = "SCALAR_FUNCTION",
///         Language = "PYTHON",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "x",
///                 DataType = "{\"typeKind\" :  \"FLOAT64\"}",
///             },
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "y",
///                 DataType = "{\"typeKind\" :  \"FLOAT64\"}",
///             },
///         },
///         DefinitionBody = @"def multiply(x, y):
///   return x * y
/// ",
///         ReturnType = "{\"typeKind\" :  \"FLOAT64\"}",
///         PythonOptions = new Gcp.BigQuery.Inputs.RoutinePythonOptionsArgs
///         {
///             EntryPoint = "multiply",
///         },
///         ExternalRuntimeOptions = new Gcp.BigQuery.Inputs.RoutineExternalRuntimeOptionsArgs
///         {
///             ContainerMemory = "512Mi",
///             ContainerCpu = 0.5,
///             RuntimeVersion = "python-3.11",
///             ContainerRequestConcurrency = "1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewRoutine(ctx, "python_function", &bigquery.RoutineArgs{
/// 			DatasetId:   test.DatasetId,
/// 			RoutineId:   pulumi.String("routine_id"),
/// 			RoutineType: pulumi.String("SCALAR_FUNCTION"),
/// 			Language:    pulumi.String("PYTHON"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("x"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 				},
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:     pulumi.String("y"),
/// 					DataType: pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 				},
/// 			},
/// 			DefinitionBody: pulumi.String("def multiply(x, y):\n  return x * y\n"),
/// 			ReturnType:     pulumi.String("{\"typeKind\" :  \"FLOAT64\"}"),
/// 			PythonOptions: &bigquery.RoutinePythonOptionsArgs{
/// 				EntryPoint: pulumi.String("multiply"),
/// 			},
/// 			ExternalRuntimeOptions: &bigquery.RoutineExternalRuntimeOptionsArgs{
/// 				ContainerMemory:             pulumi.String("512Mi"),
/// 				ContainerCpu:                pulumi.Float64(0.5),
/// 				RuntimeVersion:              pulumi.String("python-3.11"),
/// 				ContainerRequestConcurrency: pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "test" {
///   dataset_id = "dataset_id"
/// }
/// resource "gcp_bigquery_routine" "python_function" {
///   dataset_id   = gcp_bigquery_dataset.test.dataset_id
///   routine_id   = "routine_id"
///   routine_type = "SCALAR_FUNCTION"
///   language     = "PYTHON"
///   arguments {
///     name      = "x"
///     data_type = "{\"typeKind\" :  \"FLOAT64\"}"
///   }
///   arguments {
///     name      = "y"
///     data_type = "{\"typeKind\" :  \"FLOAT64\"}"
///   }
///   definition_body = "def multiply(x, y):\n  return x * y\n"
///   return_type     = "{\"typeKind\" :  \"FLOAT64\"}"
///   python_options = {
///     entry_point = "multiply"
///   }
///   external_runtime_options = {
///     container_memory              = "512Mi"
///     container_cpu                 = 0.5
///     runtime_version               = "python-3.11"
///     container_request_concurrency = "1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutinePythonOptionsArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineExternalRuntimeOptionsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Dataset("test", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .build());
///
///         var pythonFunction = new Routine("pythonFunction", RoutineArgs.builder()
///             .datasetId(test.datasetId())
///             .routineId("routine_id")
///             .routineType("SCALAR_FUNCTION")
///             .language("PYTHON")
///             .arguments(
///                 RoutineArgumentArgs.builder()
///                     .name("x")
///                     .dataType("{\"typeKind\" :  \"FLOAT64\"}")
///                     .build(),
///                 RoutineArgumentArgs.builder()
///                     .name("y")
///                     .dataType("{\"typeKind\" :  \"FLOAT64\"}")
///                     .build())
///             .definitionBody("""
/// def multiply(x, y):
///   return x * y
///             """)
///             .returnType("{\"typeKind\" :  \"FLOAT64\"}")
///             .pythonOptions(RoutinePythonOptionsArgs.builder()
///                 .entryPoint("multiply")
///                 .build())
///             .externalRuntimeOptions(RoutineExternalRuntimeOptionsArgs.builder()
///                 .containerMemory("512Mi")
///                 .containerCpu(0.5)
///                 .runtimeVersion("python-3.11")
///                 .containerRequestConcurrency("1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataset_id
///   pythonFunction:
///     type: gcp:bigquery:Routine
///     name: python_function
///     properties:
///       datasetId: ${test.datasetId}
///       routineId: routine_id
///       routineType: SCALAR_FUNCTION
///       language: PYTHON
///       arguments:
///         - name: x
///           dataType: '{"typeKind" :  "FLOAT64"}'
///         - name: y
///           dataType: '{"typeKind" :  "FLOAT64"}'
///       definitionBody: |
///         def multiply(x, y):
///           return x * y
///       returnType: '{"typeKind" :  "FLOAT64"}'
///       pythonOptions:
///         entryPoint: multiply
///       externalRuntimeOptions:
///         containerMemory: 512Mi
///         containerCpu: 0.5
///         runtimeVersion: python-3.11
///         containerRequestConcurrency: '1'
/// ```
///
///
/// ## Import
///
/// Routine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}`
/// * `{{project}}/{{dataset_id}}/{{routine_id}}`
/// * `{{dataset_id}}/{{routine_id}}`
///
///
/// When using the `pulumi import` command, Routine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/routine:Routine default projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}
/// $ pulumi import gcp:bigquery/routine:Routine default {{project}}/{{dataset_id}}/{{routine_id}}
/// $ pulumi import gcp:bigquery/routine:Routine default {{dataset_id}}/{{routine_id}}
/// ```
class Routine extends pulumi.CustomResource {
  /// Input/output argument of a function or a stored procedure.
  /// Structure is documented below.
  late final pulumi.Output<List<RoutineArgument>?> arguments;
  /// The time when this routine was created, in milliseconds since the
  /// epoch.
  late final pulumi.Output<int> creationTime;
  /// If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// Possible values are: `DATA_MASKING`.
  late final pulumi.Output<String?> dataGovernanceType;
  /// The ID of the dataset containing this routine
  late final pulumi.Output<String> datasetId;
  /// The body of the routine. For functions, this is the expression in the AS clause.
  /// If language=SQL, it is the substring inside (but excluding) the parentheses.
  late final pulumi.Output<String> definitionBody;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the routine if defined.
  late final pulumi.Output<String?> description;
  /// The determinism level of the JavaScript UDF if defined.
  /// Possible values are: `DETERMINISM_LEVEL_UNSPECIFIED`, `DETERMINISTIC`, `NOT_DETERMINISTIC`.
  late final pulumi.Output<String?> determinismLevel;
  /// (Optional, Beta)
  /// Options for the runtime of the external system.
  /// This field is only applicable for Python UDFs.
  /// Structure is documented below.
  late final pulumi.Output<RoutineExternalRuntimeOptions?> externalRuntimeOptions;
  /// Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// imported JAVASCRIPT libraries.
  late final pulumi.Output<List<String>?> importedLibraries;
  /// The language of the routine.
  /// Possible values are: `SQL`, `JAVASCRIPT`, `PYTHON`, `JAVA`, `SCALA`.
  late final pulumi.Output<String?> language;
  /// The time when this routine was modified, in milliseconds since the
  /// epoch.
  late final pulumi.Output<int> lastModifiedTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// (Optional, Beta)
  /// Options for a user-defined Python function.
  /// Structure is documented below.
  late final pulumi.Output<RoutinePythonOptions?> pythonOptions;
  /// Remote function specific options.
  /// Structure is documented below.
  late final pulumi.Output<RoutineRemoteFunctionOptions?> remoteFunctionOptions;
  /// Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// If absent, the return table type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the columns in the evaluated table result will
  /// be cast to match the column types specificed in return table type, at query time.
  late final pulumi.Output<String?> returnTableType;
  /// A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// If absent, the return type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the evaluated result will be cast to
  /// the specified returned type at query time. ~&gt;**NOTE**: Because this field expects a JSON
  /// string, any changes to the string will create a diff, even if the JSON itself hasn't
  /// changed. If the API returns a different value for the same schema, e.g. it switche
  /// d the order of values or replaced STRUCT field type with RECORD field type, we currently
  /// cannot suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  late final pulumi.Output<String?> returnType;
  /// The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  late final pulumi.Output<String> routineId;
  /// The type of routine.
  /// Possible values are: `SCALAR_FUNCTION`, `PROCEDURE`, `TABLE_VALUED_FUNCTION`.
  late final pulumi.Output<String> routineType;
  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// Possible values are: `DEFINER`, `INVOKER`.
  late final pulumi.Output<String?> securityMode;
  /// Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  /// Structure is documented below.
  late final pulumi.Output<RoutineSparkOptions?> sparkOptions;

  /// Creates a new [Routine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Routine]. {@macro pulumi_bigquery_routine_routine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Routine(
    String name, {
    RoutineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/routine:Routine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    arguments = registerOutput<List<RoutineArgument>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutineArgument>(guardedValue, (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    dataGovernanceType = registerOutput<String?>('dataGovernanceType');
    datasetId = registerOutput<String>('datasetId');
    definitionBody = registerOutput<String>('definitionBody');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    determinismLevel = registerOutput<String?>('determinismLevel');
    externalRuntimeOptions = registerOutput<RoutineExternalRuntimeOptions?>('externalRuntimeOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineExternalRuntimeOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importedLibraries = registerOutput<List<String>?>('importedLibraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    language = registerOutput<String?>('language');
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    project = registerOutput<String>('project');
    pythonOptions = registerOutput<RoutinePythonOptions?>('pythonOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutinePythonOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteFunctionOptions = registerOutput<RoutineRemoteFunctionOptions?>('remoteFunctionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineRemoteFunctionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnTableType = registerOutput<String?>('returnTableType');
    returnType = registerOutput<String?>('returnType');
    routineId = registerOutput<String>('routineId');
    routineType = registerOutput<String>('routineType');
    securityMode = registerOutput<String?>('securityMode');
    sparkOptions = registerOutput<RoutineSparkOptions?>('sparkOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineSparkOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Routine] resource's state with the given [name] and [id].
  static Routine get(
    String name,
    pulumi.Input<String> id, {
    RoutineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Routine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Routine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/routine:Routine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arguments = registerOutput<List<RoutineArgument>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutineArgument>(guardedValue, (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    dataGovernanceType = registerOutput<String?>('dataGovernanceType');
    datasetId = registerOutput<String>('datasetId');
    definitionBody = registerOutput<String>('definitionBody');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    determinismLevel = registerOutput<String?>('determinismLevel');
    externalRuntimeOptions = registerOutput<RoutineExternalRuntimeOptions?>('externalRuntimeOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineExternalRuntimeOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importedLibraries = registerOutput<List<String>?>('importedLibraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    language = registerOutput<String?>('language');
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    project = registerOutput<String>('project');
    pythonOptions = registerOutput<RoutinePythonOptions?>('pythonOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutinePythonOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteFunctionOptions = registerOutput<RoutineRemoteFunctionOptions?>('remoteFunctionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineRemoteFunctionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnTableType = registerOutput<String?>('returnTableType');
    returnType = registerOutput<String?>('returnType');
    routineId = registerOutput<String>('routineId');
    routineType = registerOutput<String>('routineType');
    securityMode = registerOutput<String?>('securityMode');
    sparkOptions = registerOutput<RoutineSparkOptions?>('sparkOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineSparkOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Routine] resource.
  Routine.reference(String urn)
    : super(
        'gcp:bigquery/routine:Routine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arguments = registerOutput<List<RoutineArgument>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutineArgument>(guardedValue, (value) => RoutineArgument.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    dataGovernanceType = registerOutput<String?>('dataGovernanceType');
    datasetId = registerOutput<String>('datasetId');
    definitionBody = registerOutput<String>('definitionBody');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    determinismLevel = registerOutput<String?>('determinismLevel');
    externalRuntimeOptions = registerOutput<RoutineExternalRuntimeOptions?>('externalRuntimeOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineExternalRuntimeOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importedLibraries = registerOutput<List<String>?>('importedLibraries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    language = registerOutput<String?>('language');
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    project = registerOutput<String>('project');
    pythonOptions = registerOutput<RoutinePythonOptions?>('pythonOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutinePythonOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteFunctionOptions = registerOutput<RoutineRemoteFunctionOptions?>('remoteFunctionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineRemoteFunctionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnTableType = registerOutput<String?>('returnTableType');
    returnType = registerOutput<String?>('returnType');
    routineId = registerOutput<String>('routineId');
    routineType = registerOutput<String>('routineType');
    securityMode = registerOutput<String?>('securityMode');
    sparkOptions = registerOutput<RoutineSparkOptions?>('sparkOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutineSparkOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
