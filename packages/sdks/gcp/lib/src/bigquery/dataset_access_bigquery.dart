import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access_args.dart';
import 'dataset_access_authorized_dataset.dart';
import 'dataset_access_condition.dart';
import 'dataset_access_routine.dart';
import 'dataset_access_state.dart';
import 'dataset_access_view.dart';

/// Gives dataset access for a single entity. This resource is intended to be used in cases where
/// it is not possible to compile a full list of access blocks to include in a
/// `gcp.bigquery.Dataset` resource, to enable them to be added separately.
///
/// &gt; **Note:** If this resource is used alongside a `gcp.bigquery.Dataset` resource, the
/// dataset resource must either have no defined `access` blocks or a `lifecycle` block with
/// `ignoreChanges = [access]` so they don't fight over which accesses should be on the dataset.
/// Additionally, both resource cannot be modified in the same apply.
///
///
/// To get more information about DatasetAccess, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets)
/// * How-to Guides
/// * [Controlling access to datasets](https://cloud.google.com/bigquery/docs/dataset-access-controls)
///
/// &gt; **Warning:** You must specify the role field using the legacy format `OWNER` instead of `roles/bigquery.dataOwner`.
/// The API does accept both formats but it will always return the legacy format which results in Terraform
/// showing permanent diff on each plan and apply operation.
///
/// ## Example Usage
///
/// ### Bigquery Dataset Access Basic User
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const bqowner = new gcp.serviceaccount.Account("bqowner", {accountId: "bqowner"});
/// const access = new gcp.bigquery.DatasetAccess("access", {
///     datasetId: dataset.datasetId,
///     role: "OWNER",
///     userByEmail: bqowner.email,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// bqowner = gcp.serviceaccount.Account("bqowner", account_id="bqowner")
/// access = gcp.bigquery.DatasetAccess("access",
///     dataset_id=dataset.dataset_id,
///     role="OWNER",
///     user_by_email=bqowner.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var bqowner = new Gcp.ServiceAccount.Account("bqowner", new()
///     {
///         AccountId = "bqowner",
///     });
///
///     var access = new Gcp.BigQuery.DatasetAccess("access", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "OWNER",
///         UserByEmail = bqowner.Email,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqowner, err := serviceaccount.NewAccount(ctx, "bqowner", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("bqowner"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetAccess(ctx, "access", &bigquery.DatasetAccessArgs{
/// 			DatasetId:   dataset.DatasetId,
/// 			Role:        pulumi.String("OWNER"),
/// 			UserByEmail: bqowner.Email,
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
/// resource "gcp_bigquery_datasetaccess" "access" {
///   dataset_id    = gcp_bigquery_dataset.dataset.dataset_id
///   role          = "OWNER"
///   user_by_email = gcp_serviceaccount_account.bqowner.email
/// }
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id = "example_dataset"
/// }
/// resource "gcp_serviceaccount_account" "bqowner" {
///   account_id = "bqowner"
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.bigquery.DatasetAccess;
/// import com.pulumi.gcp.bigquery.DatasetAccessArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var bqowner = new Account("bqowner", AccountArgs.builder()
///             .accountId("bqowner")
///             .build());
///
///         var access = new DatasetAccess("access", DatasetAccessArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("OWNER")
///             .userByEmail(bqowner.email())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access:
///     type: gcp:bigquery:DatasetAccess
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: OWNER
///       userByEmail: ${bqowner.email}
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///   bqowner:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: bqowner
/// ```
///
/// ### Bigquery Dataset Access View
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _private = new gcp.bigquery.Dataset("private", {datasetId: "example_dataset"});
/// const _public = new gcp.bigquery.Dataset("public", {datasetId: "example_dataset2"});
/// const publicTable = new gcp.bigquery.Table("public", {
///     deletionProtection: false,
///     datasetId: _public.datasetId,
///     tableId: "example_table",
///     view: {
///         query: "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         useLegacySql: false,
///     },
/// });
/// const access = new gcp.bigquery.DatasetAccess("access", {
///     datasetId: _private.datasetId,
///     view: {
///         projectId: publicTable.project,
///         datasetId: _public.datasetId,
///         tableId: publicTable.tableId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// private = gcp.bigquery.Dataset("private", dataset_id="example_dataset")
/// public = gcp.bigquery.Dataset("public", dataset_id="example_dataset2")
/// public_table = gcp.bigquery.Table("public",
///     deletion_protection=False,
///     dataset_id=public.dataset_id,
///     table_id="example_table",
///     view={
///         "query": "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         "use_legacy_sql": False,
///     })
/// access = gcp.bigquery.DatasetAccess("access",
///     dataset_id=private.dataset_id,
///     view={
///         "project_id": public_table.project,
///         "dataset_id": public.dataset_id,
///         "table_id": public_table.table_id,
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
///     var @private = new Gcp.BigQuery.Dataset("private", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var @public = new Gcp.BigQuery.Dataset("public", new()
///     {
///         DatasetId = "example_dataset2",
///     });
///
///     var publicTable = new Gcp.BigQuery.Table("public", new()
///     {
///         DeletionProtection = false,
///         DatasetId = @public.DatasetId,
///         TableId = "example_table",
///         View = new Gcp.BigQuery.Inputs.TableViewArgs
///         {
///             Query = "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///             UseLegacySql = false,
///         },
///     });
///
///     var access = new Gcp.BigQuery.DatasetAccess("access", new()
///     {
///         DatasetId = @private.DatasetId,
///         View = new Gcp.BigQuery.Inputs.DatasetAccessViewArgs
///         {
///             ProjectId = publicTable.Project,
///             DatasetId = @public.DatasetId,
///             TableId = publicTable.TableId,
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
/// 		private, err := bigquery.NewDataset(ctx, "private", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		public, err := bigquery.NewDataset(ctx, "public", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		publicTable, err := bigquery.NewTable(ctx, "public", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          public.DatasetId,
/// 			TableId:            pulumi.String("example_table"),
/// 			View: &bigquery.TableViewArgs{
/// 				Query:        pulumi.String("SELECT state FROM [lookerdata:cdc.project_tycho_reports]"),
/// 				UseLegacySql: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetAccess(ctx, "access", &bigquery.DatasetAccessArgs{
/// 			DatasetId: private.DatasetId,
/// 			View: &bigquery.DatasetAccessViewArgs{
/// 				ProjectId: publicTable.Project,
/// 				DatasetId: public.DatasetId,
/// 				TableId:   publicTable.TableId,
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
/// resource "gcp_bigquery_datasetaccess" "access" {
///   dataset_id = gcp_bigquery_dataset.private.dataset_id
///   view = {
///     project_id = gcp_bigquery_table.public.project
///     dataset_id = gcp_bigquery_dataset.public.dataset_id
///     table_id   = gcp_bigquery_table.public.table_id
///   }
/// }
/// resource "gcp_bigquery_dataset" "private" {
///   dataset_id = "example_dataset"
/// }
/// resource "gcp_bigquery_dataset" "public" {
///   dataset_id = "example_dataset2"
/// }
/// resource "gcp_bigquery_table" "public" {
///   deletion_protection = false
///   dataset_id          = gcp_bigquery_dataset.public.dataset_id
///   table_id            = "example_table"
///   view = {
///     query          = "SELECT state FROM [lookerdata:cdc.project_tycho_reports]"
///     use_legacy_sql = false
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
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableViewArgs;
/// import com.pulumi.gcp.bigquery.DatasetAccess;
/// import com.pulumi.gcp.bigquery.DatasetAccessArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessViewArgs;
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
///         var private_ = new Dataset("private", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var public_ = new Dataset("public", DatasetArgs.builder()
///             .datasetId("example_dataset2")
///             .build());
///
///         var publicTable = new Table("publicTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(public_.datasetId())
///             .tableId("example_table")
///             .view(TableViewArgs.builder()
///                 .query("SELECT state FROM [lookerdata:cdc.project_tycho_reports]")
///                 .useLegacySql(false)
///                 .build())
///             .build());
///
///         var access = new DatasetAccess("access", DatasetAccessArgs.builder()
///             .datasetId(private_.datasetId())
///             .view(DatasetAccessViewArgs.builder()
///                 .projectId(publicTable.project())
///                 .datasetId(public_.datasetId())
///                 .tableId(publicTable.tableId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access:
///     type: gcp:bigquery:DatasetAccess
///     properties:
///       datasetId: ${private.datasetId}
///       view:
///         projectId: ${publicTable.project}
///         datasetId: ${public.datasetId}
///         tableId: ${publicTable.tableId}
///   private:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///   public:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset2
///   publicTable:
///     type: gcp:bigquery:Table
///     name: public
///     properties:
///       deletionProtection: false
///       datasetId: ${public.datasetId}
///       tableId: example_table
///       view:
///         query: SELECT state FROM [lookerdata:cdc.project_tycho_reports]
///         useLegacySql: false
/// ```
///
/// ### Bigquery Dataset Access Authorized Dataset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _private = new gcp.bigquery.Dataset("private", {datasetId: "private"});
/// const _public = new gcp.bigquery.Dataset("public", {datasetId: "public"});
/// const access = new gcp.bigquery.DatasetAccess("access", {
///     datasetId: _private.datasetId,
///     authorizedDataset: {
///         dataset: {
///             projectId: _public.project,
///             datasetId: _public.datasetId,
///         },
///         targetTypes: ["VIEWS"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// private = gcp.bigquery.Dataset("private", dataset_id="private")
/// public = gcp.bigquery.Dataset("public", dataset_id="public")
/// access = gcp.bigquery.DatasetAccess("access",
///     dataset_id=private.dataset_id,
///     authorized_dataset={
///         "dataset": {
///             "project_id": public.project,
///             "dataset_id": public.dataset_id,
///         },
///         "target_types": ["VIEWS"],
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
///     var @private = new Gcp.BigQuery.Dataset("private", new()
///     {
///         DatasetId = "private",
///     });
///
///     var @public = new Gcp.BigQuery.Dataset("public", new()
///     {
///         DatasetId = "public",
///     });
///
///     var access = new Gcp.BigQuery.DatasetAccess("access", new()
///     {
///         DatasetId = @private.DatasetId,
///         AuthorizedDataset = new Gcp.BigQuery.Inputs.DatasetAccessAuthorizedDatasetArgs
///         {
///             Dataset = new Gcp.BigQuery.Inputs.DatasetAccessAuthorizedDatasetDatasetArgs
///             {
///                 ProjectId = @public.Project,
///                 DatasetId = @public.DatasetId,
///             },
///             TargetTypes = new[]
///             {
///                 "VIEWS",
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
/// 		private, err := bigquery.NewDataset(ctx, "private", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		public, err := bigquery.NewDataset(ctx, "public", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("public"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetAccess(ctx, "access", &bigquery.DatasetAccessArgs{
/// 			DatasetId: private.DatasetId,
/// 			AuthorizedDataset: &bigquery.DatasetAccessAuthorizedDatasetArgs{
/// 				Dataset: &bigquery.DatasetAccessAuthorizedDatasetDatasetArgs{
/// 					ProjectId: public.Project,
/// 					DatasetId: public.DatasetId,
/// 				},
/// 				TargetTypes: pulumi.StringArray{
/// 					pulumi.String("VIEWS"),
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
/// resource "gcp_bigquery_datasetaccess" "access" {
///   dataset_id = gcp_bigquery_dataset.private.dataset_id
///   authorized_dataset = {
///     dataset = {
///       project_id = gcp_bigquery_dataset.public.project
///       dataset_id = gcp_bigquery_dataset.public.dataset_id
///     }
///     target_types = ["VIEWS"]
///   }
/// }
/// resource "gcp_bigquery_dataset" "private" {
///   dataset_id = "private"
/// }
/// resource "gcp_bigquery_dataset" "public" {
///   dataset_id = "public"
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
/// import com.pulumi.gcp.bigquery.DatasetAccess;
/// import com.pulumi.gcp.bigquery.DatasetAccessArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessAuthorizedDatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessAuthorizedDatasetDatasetArgs;
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
///         var private_ = new Dataset("private", DatasetArgs.builder()
///             .datasetId("private")
///             .build());
///
///         var public_ = new Dataset("public", DatasetArgs.builder()
///             .datasetId("public")
///             .build());
///
///         var access = new DatasetAccess("access", DatasetAccessArgs.builder()
///             .datasetId(private_.datasetId())
///             .authorizedDataset(DatasetAccessAuthorizedDatasetArgs.builder()
///                 .dataset(DatasetAccessAuthorizedDatasetDatasetArgs.builder()
///                     .projectId(public_.project())
///                     .datasetId(public_.datasetId())
///                     .build())
///                 .targetTypes("VIEWS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access:
///     type: gcp:bigquery:DatasetAccess
///     properties:
///       datasetId: ${private.datasetId}
///       authorizedDataset:
///         dataset:
///           projectId: ${public.project}
///           datasetId: ${public.datasetId}
///         targetTypes:
///           - VIEWS
///   private:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: private
///   public:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: public
/// ```
///
/// ### Bigquery Dataset Access Authorized Routine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _public = new gcp.bigquery.Dataset("public", {
///     datasetId: "public_dataset",
///     description: "This dataset is public",
/// });
/// const publicRoutine = new gcp.bigquery.Routine("public", {
///     datasetId: _public.datasetId,
///     routineId: "public_routine",
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
/// const _private = new gcp.bigquery.Dataset("private", {
///     datasetId: "private_dataset",
///     description: "This dataset is private",
/// });
/// const authorizedRoutine = new gcp.bigquery.DatasetAccess("authorized_routine", {
///     datasetId: _private.datasetId,
///     routine: {
///         projectId: publicRoutine.project,
///         datasetId: publicRoutine.datasetId,
///         routineId: publicRoutine.routineId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// public = gcp.bigquery.Dataset("public",
///     dataset_id="public_dataset",
///     description="This dataset is public")
/// public_routine = gcp.bigquery.Routine("public",
///     dataset_id=public.dataset_id,
///     routine_id="public_routine",
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
/// private = gcp.bigquery.Dataset("private",
///     dataset_id="private_dataset",
///     description="This dataset is private")
/// authorized_routine = gcp.bigquery.DatasetAccess("authorized_routine",
///     dataset_id=private.dataset_id,
///     routine={
///         "project_id": public_routine.project,
///         "dataset_id": public_routine.dataset_id,
///         "routine_id": public_routine.routine_id,
///     })
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
///     var @public = new Gcp.BigQuery.Dataset("public", new()
///     {
///         DatasetId = "public_dataset",
///         Description = "This dataset is public",
///     });
///
///     var publicRoutine = new Gcp.BigQuery.Routine("public", new()
///     {
///         DatasetId = @public.DatasetId,
///         RoutineId = "public_routine",
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
///     var @private = new Gcp.BigQuery.Dataset("private", new()
///     {
///         DatasetId = "private_dataset",
///         Description = "This dataset is private",
///     });
///
///     var authorizedRoutine = new Gcp.BigQuery.DatasetAccess("authorized_routine", new()
///     {
///         DatasetId = @private.DatasetId,
///         Routine = new Gcp.BigQuery.Inputs.DatasetAccessRoutineArgs
///         {
///             ProjectId = publicRoutine.Project,
///             DatasetId = publicRoutine.DatasetId,
///             RoutineId = publicRoutine.RoutineId,
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
/// 		public, err := bigquery.NewDataset(ctx, "public", &bigquery.DatasetArgs{
/// 			DatasetId:   pulumi.String("public_dataset"),
/// 			Description: pulumi.String("This dataset is public"),
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
/// 		publicRoutine, err := bigquery.NewRoutine(ctx, "public", &bigquery.RoutineArgs{
/// 			DatasetId:      public.DatasetId,
/// 			RoutineId:      pulumi.String("public_routine"),
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
/// 		private, err := bigquery.NewDataset(ctx, "private", &bigquery.DatasetArgs{
/// 			DatasetId:   pulumi.String("private_dataset"),
/// 			Description: pulumi.String("This dataset is private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetAccess(ctx, "authorized_routine", &bigquery.DatasetAccessArgs{
/// 			DatasetId: private.DatasetId,
/// 			Routine: &bigquery.DatasetAccessRoutineArgs{
/// 				ProjectId: publicRoutine.Project,
/// 				DatasetId: publicRoutine.DatasetId,
/// 				RoutineId: publicRoutine.RoutineId,
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
/// resource "gcp_bigquery_dataset" "public" {
///   dataset_id  = "public_dataset"
///   description = "This dataset is public"
/// }
/// resource "gcp_bigquery_routine" "public" {
///   dataset_id      = gcp_bigquery_dataset.public.dataset_id
///   routine_id      = "public_routine"
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
/// resource "gcp_bigquery_dataset" "private" {
///   dataset_id  = "private_dataset"
///   description = "This dataset is private"
/// }
/// resource "gcp_bigquery_datasetaccess" "authorized_routine" {
///   dataset_id = gcp_bigquery_dataset.private.dataset_id
///   routine = {
///     project_id = gcp_bigquery_routine.public.project
///     dataset_id = gcp_bigquery_routine.public.dataset_id
///     routine_id = gcp_bigquery_routine.public.routine_id
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
/// import com.pulumi.gcp.bigquery.DatasetAccess;
/// import com.pulumi.gcp.bigquery.DatasetAccessArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessRoutineArgs;
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
///         var public_ = new Dataset("public", DatasetArgs.builder()
///             .datasetId("public_dataset")
///             .description("This dataset is public")
///             .build());
///
///         var publicRoutine = new Routine("publicRoutine", RoutineArgs.builder()
///             .datasetId(public_.datasetId())
///             .routineId("public_routine")
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
///         var private_ = new Dataset("private", DatasetArgs.builder()
///             .datasetId("private_dataset")
///             .description("This dataset is private")
///             .build());
///
///         var authorizedRoutine = new DatasetAccess("authorizedRoutine", DatasetAccessArgs.builder()
///             .datasetId(private_.datasetId())
///             .routine(DatasetAccessRoutineArgs.builder()
///                 .projectId(publicRoutine.project())
///                 .datasetId(publicRoutine.datasetId())
///                 .routineId(publicRoutine.routineId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: public_dataset
///       description: This dataset is public
///   publicRoutine:
///     type: gcp:bigquery:Routine
///     name: public
///     properties:
///       datasetId: ${public.datasetId}
///       routineId: public_routine
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
///   private:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: private_dataset
///       description: This dataset is private
///   authorizedRoutine:
///     type: gcp:bigquery:DatasetAccess
///     name: authorized_routine
///     properties:
///       datasetId: ${private.datasetId}
///       routine:
///         projectId: ${publicRoutine.project}
///         datasetId: ${publicRoutine.datasetId}
///         routineId: ${publicRoutine.routineId}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class DatasetAccessBigquery extends pulumi.CustomResource {
  /// If true, represents that that the iamMember in the config was translated to a different member type by the API, and is stored in state as a different member type
  late final pulumi.Output<bool> apiUpdatedMember;
  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// Structure is documented below.
  late final pulumi.Output<DatasetAccessAuthorizedDataset?> authorizedDataset;
  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  /// Structure is documented below.
  late final pulumi.Output<DatasetAccessCondition?> condition;
  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  late final pulumi.Output<String> datasetId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  late final pulumi.Output<String?> domain;
  /// An email address of a Google Group to grant access to.
  late final pulumi.Output<String?> groupByEmail;
  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: `allUsers`
  late final pulumi.Output<String?> iamMember;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles are
  /// supported. Predefined roles that have equivalent basic roles are
  /// swapped by the API to their basic counterparts, and will show a diff
  /// post-create. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  late final pulumi.Output<String?> role;
  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  late final pulumi.Output<DatasetAccessRoutine?> routine;
  /// A special group to grant access to. Possible values include:
  /// * `projectOwners`: Owners of the enclosing project.
  /// * `projectReaders`: Readers of the enclosing project.
  /// * `projectWriters`: Writers of the enclosing project.
  /// * `allAuthenticatedUsers`: All authenticated BigQuery users.
  late final pulumi.Output<String?> specialGroup;
  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  late final pulumi.Output<String?> userByEmail;
  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  late final pulumi.Output<DatasetAccessView?> view;

  /// Creates a new [DatasetAccessBigquery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetAccessBigquery]. {@macro pulumi_bigquery_dataset_access_dataset_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetAccessBigquery(
    String name, {
    DatasetAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datasetAccess:DatasetAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    apiUpdatedMember = registerOutput<bool>('apiUpdatedMember');
    authorizedDataset = registerOutput<DatasetAccessAuthorizedDataset?>('authorizedDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessAuthorizedDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    condition = registerOutput<DatasetAccessCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String?>('domain');
    groupByEmail = registerOutput<String?>('groupByEmail');
    iamMember = registerOutput<String?>('iamMember');
    project = registerOutput<String>('project');
    role = registerOutput<String?>('role');
    routine = registerOutput<DatasetAccessRoutine?>('routine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessRoutine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specialGroup = registerOutput<String?>('specialGroup');
    userByEmail = registerOutput<String?>('userByEmail');
    view = registerOutput<DatasetAccessView?>('view', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DatasetAccessBigquery] resource's state with the given [name] and [id].
  static DatasetAccessBigquery get(
    String name,
    pulumi.Input<String> id, {
    DatasetAccessState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetAccessBigquery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetAccessBigquery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datasetAccess:DatasetAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiUpdatedMember = registerOutput<bool>('apiUpdatedMember');
    authorizedDataset = registerOutput<DatasetAccessAuthorizedDataset?>('authorizedDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessAuthorizedDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    condition = registerOutput<DatasetAccessCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String?>('domain');
    groupByEmail = registerOutput<String?>('groupByEmail');
    iamMember = registerOutput<String?>('iamMember');
    project = registerOutput<String>('project');
    role = registerOutput<String?>('role');
    routine = registerOutput<DatasetAccessRoutine?>('routine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessRoutine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specialGroup = registerOutput<String?>('specialGroup');
    userByEmail = registerOutput<String?>('userByEmail');
    view = registerOutput<DatasetAccessView?>('view', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DatasetAccessBigquery] resource.
  DatasetAccessBigquery.reference(String urn)
    : super(
        'gcp:bigquery/datasetAccess:DatasetAccess',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiUpdatedMember = registerOutput<bool>('apiUpdatedMember');
    authorizedDataset = registerOutput<DatasetAccessAuthorizedDataset?>('authorizedDataset', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessAuthorizedDataset.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    condition = registerOutput<DatasetAccessCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datasetId = registerOutput<String>('datasetId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String?>('domain');
    groupByEmail = registerOutput<String?>('groupByEmail');
    iamMember = registerOutput<String?>('iamMember');
    project = registerOutput<String>('project');
    role = registerOutput<String?>('role');
    routine = registerOutput<DatasetAccessRoutine?>('routine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessRoutine.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    specialGroup = registerOutput<String?>('specialGroup');
    userByEmail = registerOutput<String?>('userByEmail');
    view = registerOutput<DatasetAccessView?>('view', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetAccessView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
