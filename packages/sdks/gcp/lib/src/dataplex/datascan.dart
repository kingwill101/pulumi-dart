import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_args.dart';
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_documentation_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
import 'datascan_execution_identity.dart';
import 'datascan_execution_spec.dart';
import 'datascan_state.dart';

/// Represents a user-visible job which provides the insights for the related data source.
///
///
/// To get more information about Datascan, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Datascan Basic Profile
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicProfile = new gcp.dataplex.Datascan("basic_profile", {
///     location: "us-central1",
///     dataScanId: "dataprofile-basic",
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     dataProfileSpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_profile = gcp.dataplex.Datascan("basic_profile",
///     location="us-central1",
///     data_scan_id="dataprofile-basic",
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     data_profile_spec={},
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicProfile = new Gcp.DataPlex.Datascan("basic_profile", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataprofile-basic",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         DataProfileSpec = null,
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascan(ctx, "basic_profile", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataprofile-basic"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			DataProfileSpec: &dataplex.DatascanDataProfileSpecArgs{},
/// 			Project:         pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "basic_profile" {
///   location     = "us-central1"
///   data_scan_id = "dataprofile-basic"
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   data_profile_spec = {}
///   project           = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecArgs;
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
///         var basicProfile = new Datascan("basicProfile", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataprofile-basic")
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .dataProfileSpec(DatascanDataProfileSpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicProfile:
///     type: gcp:dataplex:Datascan
///     name: basic_profile
///     properties:
///       location: us-central1
///       dataScanId: dataprofile-basic
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare
///       executionSpec:
///         trigger:
///           onDemand: {}
///       dataProfileSpec: {}
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Full Profile
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source = new gcp.bigquery.Dataset("source", {
///     datasetId: "dataplex_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
///     deleteContentsOnDestroy: true,
/// });
/// const fullProfile = new gcp.dataplex.Datascan("full_profile", {
///     location: "us-central1",
///     displayName: "Full Datascan Profile",
///     dataScanId: "dataprofile-full",
///     description: "Example resource - Full Datascan Profile",
///     labels: {
///         author: "billing",
///     },
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     executionSpec: {
///         trigger: {
///             schedule: {
///                 cron: "TZ=America/New_York 1 1 * * *",
///             },
///         },
///     },
///     dataProfileSpec: {
///         samplingPercent: 80,
///         rowFilter: "word_count > 10",
///         includeFields: {
///             fieldNames: ["word_count"],
///         },
///         excludeFields: {
///             fieldNames: ["property_type"],
///         },
///         postScanActions: {
///             bigqueryExport: {
///                 resultsTable: "//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export",
///             },
///         },
///         catalogPublishingEnabled: true,
///     },
///     project: "my-project-name",
/// }, {
///     dependsOn: [source],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source = gcp.bigquery.Dataset("source",
///     dataset_id="dataplex_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US",
///     delete_contents_on_destroy=True)
/// full_profile = gcp.dataplex.Datascan("full_profile",
///     location="us-central1",
///     display_name="Full Datascan Profile",
///     data_scan_id="dataprofile-full",
///     description="Example resource - Full Datascan Profile",
///     labels={
///         "author": "billing",
///     },
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     execution_spec={
///         "trigger": {
///             "schedule": {
///                 "cron": "TZ=America/New_York 1 1 * * *",
///             },
///         },
///     },
///     data_profile_spec={
///         "sampling_percent": float(80),
///         "row_filter": "word_count > 10",
///         "include_fields": {
///             "field_names": ["word_count"],
///         },
///         "exclude_fields": {
///             "field_names": ["property_type"],
///         },
///         "post_scan_actions": {
///             "bigquery_export": {
///                 "results_table": "//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export",
///             },
///         },
///         "catalog_publishing_enabled": True,
///     },
///     project="my-project-name",
///     opts = pulumi.ResourceOptions(depends_on=[source]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = new Gcp.BigQuery.Dataset("source", new()
///     {
///         DatasetId = "dataplex_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var fullProfile = new Gcp.DataPlex.Datascan("full_profile", new()
///     {
///         Location = "us-central1",
///         DisplayName = "Full Datascan Profile",
///         DataScanId = "dataprofile-full",
///         Description = "Example resource - Full Datascan Profile",
///         Labels =
///         {
///             { "author", "billing" },
///         },
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 Schedule = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerScheduleArgs
///                 {
///                     Cron = "TZ=America/New_York 1 1 * * *",
///                 },
///             },
///         },
///         DataProfileSpec = new Gcp.DataPlex.Inputs.DatascanDataProfileSpecArgs
///         {
///             SamplingPercent = 80.0,
///             RowFilter = "word_count > 10",
///             IncludeFields = new Gcp.DataPlex.Inputs.DatascanDataProfileSpecIncludeFieldsArgs
///             {
///                 FieldNames = new[]
///                 {
///                     "word_count",
///                 },
///             },
///             ExcludeFields = new Gcp.DataPlex.Inputs.DatascanDataProfileSpecExcludeFieldsArgs
///             {
///                 FieldNames = new[]
///                 {
///                     "property_type",
///                 },
///             },
///             PostScanActions = new Gcp.DataPlex.Inputs.DatascanDataProfileSpecPostScanActionsArgs
///             {
///                 BigqueryExport = new Gcp.DataPlex.Inputs.DatascanDataProfileSpecPostScanActionsBigqueryExportArgs
///                 {
///                     ResultsTable = "//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export",
///                 },
///             },
///             CatalogPublishingEnabled = true,
///         },
///         Project = "my-project-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             source,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source, err := bigquery.NewDataset(ctx, "source", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("dataplex_dataset"),
/// 			FriendlyName:            pulumi.String("test"),
/// 			Description:             pulumi.String("This is a test description"),
/// 			Location:                pulumi.String("US"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "full_profile", &dataplex.DatascanArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Full Datascan Profile"),
/// 			DataScanId:  pulumi.String("dataprofile-full"),
/// 			Description: pulumi.String("Example resource - Full Datascan Profile"),
/// 			Labels: pulumi.StringMap{
/// 				"author": pulumi.String("billing"),
/// 			},
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					Schedule: &dataplex.DatascanExecutionSpecTriggerScheduleArgs{
/// 						Cron: pulumi.String("TZ=America/New_York 1 1 * * *"),
/// 					},
/// 				},
/// 			},
/// 			DataProfileSpec: &dataplex.DatascanDataProfileSpecArgs{
/// 				SamplingPercent: pulumi.Float64(80),
/// 				RowFilter:       pulumi.String("word_count > 10"),
/// 				IncludeFields: &dataplex.DatascanDataProfileSpecIncludeFieldsArgs{
/// 					FieldNames: pulumi.StringArray{
/// 						pulumi.String("word_count"),
/// 					},
/// 				},
/// 				ExcludeFields: &dataplex.DatascanDataProfileSpecExcludeFieldsArgs{
/// 					FieldNames: pulumi.StringArray{
/// 						pulumi.String("property_type"),
/// 					},
/// 				},
/// 				PostScanActions: &dataplex.DatascanDataProfileSpecPostScanActionsArgs{
/// 					BigqueryExport: &dataplex.DatascanDataProfileSpecPostScanActionsBigqueryExportArgs{
/// 						ResultsTable: pulumi.String("//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export"),
/// 					},
/// 				},
/// 				CatalogPublishingEnabled: pulumi.Bool(true),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			source,
/// 		}))
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
/// resource "gcp_dataplex_datascan" "full_profile" {
///   depends_on   = [gcp_bigquery_dataset.source]
///   location     = "us-central1"
///   display_name = "Full Datascan Profile"
///   data_scan_id = "dataprofile-full"
///   description  = "Example resource - Full Datascan Profile"
///   labels = {
///     "author" = "billing"
///   }
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
///   }
///   execution_spec = {
///     trigger = {
///       schedule = {
///         cron = "TZ=America/New_York 1 1 * * *"
///       }
///     }
///   }
///   data_profile_spec = {
///     sampling_percent = 80
///     row_filter       = "word_count > 10"
///     include_fields = {
///       field_names = ["word_count"]
///     }
///     exclude_fields = {
///       field_names = ["property_type"]
///     }
///     post_scan_actions = {
///       bigquery_export = {
///         results_table = "//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export"
///       }
///     }
///     catalog_publishing_enabled = true
///   }
///   project = "my-project-name"
/// }
/// resource "gcp_bigquery_dataset" "source" {
///   dataset_id                 = "dataplex_dataset"
///   friendly_name              = "test"
///   description                = "This is a test description"
///   location                   = "US"
///   delete_contents_on_destroy = true
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
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerScheduleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecIncludeFieldsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecExcludeFieldsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecPostScanActionsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecPostScanActionsBigqueryExportArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var source = new Dataset("source", DatasetArgs.builder()
///             .datasetId("dataplex_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var fullProfile = new Datascan("fullProfile", DatascanArgs.builder()
///             .location("us-central1")
///             .displayName("Full Datascan Profile")
///             .dataScanId("dataprofile-full")
///             .description("Example resource - Full Datascan Profile")
///             .labels(Map.of("author", "billing"))
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .schedule(DatascanExecutionSpecTriggerScheduleArgs.builder()
///                         .cron("TZ=America/New_York 1 1 * * *")
///                         .build())
///                     .build())
///                 .build())
///             .dataProfileSpec(DatascanDataProfileSpecArgs.builder()
///                 .samplingPercent(80.0)
///                 .rowFilter("word_count > 10")
///                 .includeFields(DatascanDataProfileSpecIncludeFieldsArgs.builder()
///                     .fieldNames("word_count")
///                     .build())
///                 .excludeFields(DatascanDataProfileSpecExcludeFieldsArgs.builder()
///                     .fieldNames("property_type")
///                     .build())
///                 .postScanActions(DatascanDataProfileSpecPostScanActionsArgs.builder()
///                     .bigqueryExport(DatascanDataProfileSpecPostScanActionsBigqueryExportArgs.builder()
///                         .resultsTable("//bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export")
///                         .build())
///                     .build())
///                 .catalogPublishingEnabled(true)
///                 .build())
///             .project("my-project-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(source)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fullProfile:
///     type: gcp:dataplex:Datascan
///     name: full_profile
///     properties:
///       location: us-central1
///       displayName: Full Datascan Profile
///       dataScanId: dataprofile-full
///       description: Example resource - Full Datascan Profile
///       labels:
///         author: billing
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare
///       executionSpec:
///         trigger:
///           schedule:
///             cron: TZ=America/New_York 1 1 * * *
///       dataProfileSpec:
///         samplingPercent: 80
///         rowFilter: word_count > 10
///         includeFields:
///           fieldNames:
///             - word_count
///         excludeFields:
///           fieldNames:
///             - property_type
///         postScanActions:
///           bigqueryExport:
///             resultsTable: //bigquery.googleapis.com/projects/my-project-name/datasets/dataplex_dataset/tables/profile_export
///         catalogPublishingEnabled: true
///       project: my-project-name
///     options:
///       dependsOn:
///         - ${source}
///   source:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: dataplex_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///       deleteContentsOnDestroy: true
/// ```
///
/// ### Dataplex Datascan Onetime Profile
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const onetimeProfile = new gcp.dataplex.Datascan("onetime_profile", {
///     location: "us-central1",
///     dataScanId: "dataprofile-onetime",
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     executionSpec: {
///         trigger: {
///             oneTime: {
///                 ttlAfterScanCompletion: "120s",
///             },
///         },
///     },
///     dataProfileSpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// onetime_profile = gcp.dataplex.Datascan("onetime_profile",
///     location="us-central1",
///     data_scan_id="dataprofile-onetime",
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     execution_spec={
///         "trigger": {
///             "one_time": {
///                 "ttl_after_scan_completion": "120s",
///             },
///         },
///     },
///     data_profile_spec={},
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var onetimeProfile = new Gcp.DataPlex.Datascan("onetime_profile", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataprofile-onetime",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OneTime = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerOneTimeArgs
///                 {
///                     TtlAfterScanCompletion = "120s",
///                 },
///             },
///         },
///         DataProfileSpec = null,
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascan(ctx, "onetime_profile", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataprofile-onetime"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OneTime: &dataplex.DatascanExecutionSpecTriggerOneTimeArgs{
/// 						TtlAfterScanCompletion: pulumi.String("120s"),
/// 					},
/// 				},
/// 			},
/// 			DataProfileSpec: &dataplex.DatascanDataProfileSpecArgs{},
/// 			Project:         pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "onetime_profile" {
///   location     = "us-central1"
///   data_scan_id = "dataprofile-onetime"
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
///   }
///   execution_spec = {
///     trigger = {
///       one_time = {
///         ttl_after_scan_completion = "120s"
///       }
///     }
///   }
///   data_profile_spec = {}
///   project           = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOneTimeArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecArgs;
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
///         var onetimeProfile = new Datascan("onetimeProfile", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataprofile-onetime")
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .oneTime(DatascanExecutionSpecTriggerOneTimeArgs.builder()
///                         .ttlAfterScanCompletion("120s")
///                         .build())
///                     .build())
///                 .build())
///             .dataProfileSpec(DatascanDataProfileSpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   onetimeProfile:
///     type: gcp:dataplex:Datascan
///     name: onetime_profile
///     properties:
///       location: us-central1
///       dataScanId: dataprofile-onetime
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare
///       executionSpec:
///         trigger:
///           oneTime:
///             ttlAfterScanCompletion: 120s
///       dataProfileSpec: {}
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Basic Quality
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicQuality = new gcp.dataplex.Datascan("basic_quality", {
///     location: "us-central1",
///     dataScanId: "dataquality-basic",
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     dataQualitySpec: {
///         rules: [{
///             dimension: "VALIDITY",
///             name: "rule1",
///             description: "rule 1 for validity dimension",
///             tableConditionExpectation: {
///                 sqlExpression: "COUNT(*) > 0",
///             },
///         }],
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_quality = gcp.dataplex.Datascan("basic_quality",
///     location="us-central1",
///     data_scan_id="dataquality-basic",
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     data_quality_spec={
///         "rules": [{
///             "dimension": "VALIDITY",
///             "name": "rule1",
///             "description": "rule 1 for validity dimension",
///             "table_condition_expectation": {
///                 "sql_expression": "COUNT(*) > 0",
///             },
///         }],
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicQuality = new Gcp.DataPlex.Datascan("basic_quality", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataquality-basic",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         DataQualitySpec = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Dimension = "VALIDITY",
///                     Name = "rule1",
///                     Description = "rule 1 for validity dimension",
///                     TableConditionExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs
///                     {
///                         SqlExpression = "COUNT(*) > 0",
///                     },
///                 },
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascan(ctx, "basic_quality", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataquality-basic"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			DataQualitySpec: &dataplex.DatascanDataQualitySpecArgs{
/// 				Rules: dataplex.DatascanDataQualitySpecRuleArray{
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Dimension:   pulumi.String("VALIDITY"),
/// 						Name:        pulumi.String("rule1"),
/// 						Description: pulumi.String("rule 1 for validity dimension"),
/// 						TableConditionExpectation: &dataplex.DatascanDataQualitySpecRuleTableConditionExpectationArgs{
/// 							SqlExpression: pulumi.String("COUNT(*) > 0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "basic_quality" {
///   location     = "us-central1"
///   data_scan_id = "dataquality-basic"
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   data_quality_spec = {
///     rules = [{
///       "dimension"   = "VALIDITY"
///       "name"        = "rule1"
///       "description" = "rule 1 for validity dimension"
///       "tableConditionExpectation" = {
///         "sqlExpression" = "COUNT(*) > 0"
///       }
///     }]
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs;
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
///         var basicQuality = new Datascan("basicQuality", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataquality-basic")
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .dataQualitySpec(DatascanDataQualitySpecArgs.builder()
///                 .rules(DatascanDataQualitySpecRuleArgs.builder()
///                     .dimension("VALIDITY")
///                     .name("rule1")
///                     .description("rule 1 for validity dimension")
///                     .tableConditionExpectation(DatascanDataQualitySpecRuleTableConditionExpectationArgs.builder()
///                         .sqlExpression("COUNT(*) > 0")
///                         .build())
///                     .build())
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicQuality:
///     type: gcp:dataplex:Datascan
///     name: basic_quality
///     properties:
///       location: us-central1
///       dataScanId: dataquality-basic
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare
///       executionSpec:
///         trigger:
///           onDemand: {}
///       dataQualitySpec:
///         rules:
///           - dimension: VALIDITY
///             name: rule1
///             description: rule 1 for validity dimension
///             tableConditionExpectation:
///               sqlExpression: COUNT(*) > 0
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Full Quality
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fullQuality = new gcp.dataplex.Datascan("full_quality", {
///     location: "us-central1",
///     displayName: "Full Datascan Quality",
///     dataScanId: "dataquality-full",
///     description: "Example resource - Full Datascan Quality",
///     labels: {
///         author: "billing",
///     },
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations",
///     },
///     executionSpec: {
///         trigger: {
///             schedule: {
///                 cron: "TZ=America/New_York 1 1 * * *",
///             },
///         },
///         field: "modified_date",
///     },
///     dataQualitySpec: {
///         samplingPercent: 5,
///         rowFilter: "station_id > 1000",
///         catalogPublishingEnabled: true,
///         filter: "attributes.priority = 'high'",
///         postScanActions: {
///             notificationReport: {
///                 recipients: {
///                     emails: ["jane.doe@example.com"],
///                 },
///                 scoreThresholdTrigger: {
///                     scoreThreshold: 86,
///                 },
///             },
///         },
///         rules: [
///             {
///                 column: "address",
///                 dimension: "VALIDITY",
///                 threshold: 0.99,
///                 attributes: {
///                     priority: "high",
///                 },
///                 nonNullExpectation: {},
///             },
///             {
///                 column: "council_district",
///                 dimension: "VALIDITY",
///                 ignoreNull: true,
///                 threshold: 0.9,
///                 rangeExpectation: {
///                     minValue: "1",
///                     maxValue: "10",
///                     strictMinEnabled: true,
///                     strictMaxEnabled: false,
///                 },
///             },
///             {
///                 column: "power_type",
///                 dimension: "VALIDITY",
///                 ignoreNull: false,
///                 regexExpectation: {
///                     regex: ".*solar.*",
///                 },
///             },
///             {
///                 column: "property_type",
///                 dimension: "VALIDITY",
///                 ignoreNull: false,
///                 setExpectation: {
///                     values: [
///                         "sidewalk",
///                         "parkland",
///                     ],
///                 },
///             },
///             {
///                 column: "address",
///                 dimension: "UNIQUENESS",
///                 uniquenessExpectation: {},
///             },
///             {
///                 column: "number_of_docks",
///                 dimension: "VALIDITY",
///                 statisticRangeExpectation: {
///                     statistic: "MEAN",
///                     minValue: "5",
///                     maxValue: "15",
///                     strictMinEnabled: true,
///                     strictMaxEnabled: true,
///                 },
///             },
///             {
///                 column: "footprint_length",
///                 dimension: "VALIDITY",
///                 rowConditionExpectation: {
///                     sqlExpression: "footprint_length > 0 AND footprint_length <= 10",
///                 },
///             },
///             {
///                 dimension: "VALIDITY",
///                 tableConditionExpectation: {
///                     sqlExpression: "COUNT(*) > 0",
///                 },
///             },
///             {
///                 dimension: "VALIDITY",
///                 sqlAssertion: {
///                     sqlStatement: "select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null",
///                 },
///             },
///         ],
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// full_quality = gcp.dataplex.Datascan("full_quality",
///     location="us-central1",
///     display_name="Full Datascan Quality",
///     data_scan_id="dataquality-full",
///     description="Example resource - Full Datascan Quality",
///     labels={
///         "author": "billing",
///     },
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations",
///     },
///     execution_spec={
///         "trigger": {
///             "schedule": {
///                 "cron": "TZ=America/New_York 1 1 * * *",
///             },
///         },
///         "field": "modified_date",
///     },
///     data_quality_spec={
///         "sampling_percent": float(5),
///         "row_filter": "station_id > 1000",
///         "catalog_publishing_enabled": True,
///         "filter": "attributes.priority = 'high'",
///         "post_scan_actions": {
///             "notification_report": {
///                 "recipients": {
///                     "emails": ["jane.doe@example.com"],
///                 },
///                 "score_threshold_trigger": {
///                     "score_threshold": float(86),
///                 },
///             },
///         },
///         "rules": [
///             {
///                 "column": "address",
///                 "dimension": "VALIDITY",
///                 "threshold": 0.99,
///                 "attributes": {
///                     "priority": "high",
///                 },
///                 "non_null_expectation": {},
///             },
///             {
///                 "column": "council_district",
///                 "dimension": "VALIDITY",
///                 "ignore_null": True,
///                 "threshold": 0.9,
///                 "range_expectation": {
///                     "min_value": "1",
///                     "max_value": "10",
///                     "strict_min_enabled": True,
///                     "strict_max_enabled": False,
///                 },
///             },
///             {
///                 "column": "power_type",
///                 "dimension": "VALIDITY",
///                 "ignore_null": False,
///                 "regex_expectation": {
///                     "regex": ".*solar.*",
///                 },
///             },
///             {
///                 "column": "property_type",
///                 "dimension": "VALIDITY",
///                 "ignore_null": False,
///                 "set_expectation": {
///                     "values": [
///                         "sidewalk",
///                         "parkland",
///                     ],
///                 },
///             },
///             {
///                 "column": "address",
///                 "dimension": "UNIQUENESS",
///                 "uniqueness_expectation": {},
///             },
///             {
///                 "column": "number_of_docks",
///                 "dimension": "VALIDITY",
///                 "statistic_range_expectation": {
///                     "statistic": "MEAN",
///                     "min_value": "5",
///                     "max_value": "15",
///                     "strict_min_enabled": True,
///                     "strict_max_enabled": True,
///                 },
///             },
///             {
///                 "column": "footprint_length",
///                 "dimension": "VALIDITY",
///                 "row_condition_expectation": {
///                     "sql_expression": "footprint_length > 0 AND footprint_length <= 10",
///                 },
///             },
///             {
///                 "dimension": "VALIDITY",
///                 "table_condition_expectation": {
///                     "sql_expression": "COUNT(*) > 0",
///                 },
///             },
///             {
///                 "dimension": "VALIDITY",
///                 "sql_assertion": {
///                     "sql_statement": "select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null",
///                 },
///             },
///         ],
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fullQuality = new Gcp.DataPlex.Datascan("full_quality", new()
///     {
///         Location = "us-central1",
///         DisplayName = "Full Datascan Quality",
///         DataScanId = "dataquality-full",
///         Description = "Example resource - Full Datascan Quality",
///         Labels =
///         {
///             { "author", "billing" },
///         },
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 Schedule = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerScheduleArgs
///                 {
///                     Cron = "TZ=America/New_York 1 1 * * *",
///                 },
///             },
///             Field = "modified_date",
///         },
///         DataQualitySpec = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecArgs
///         {
///             SamplingPercent = 5.0,
///             RowFilter = "station_id > 1000",
///             CatalogPublishingEnabled = true,
///             Filter = "attributes.priority = 'high'",
///             PostScanActions = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecPostScanActionsArgs
///             {
///                 NotificationReport = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecPostScanActionsNotificationReportArgs
///                 {
///                     Recipients = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecPostScanActionsNotificationReportRecipientsArgs
///                     {
///                         Emails = new[]
///                         {
///                             "jane.doe@example.com",
///                         },
///                     },
///                     ScoreThresholdTrigger = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTriggerArgs
///                     {
///                         ScoreThreshold = 86.0,
///                     },
///                 },
///             },
///             Rules = new[]
///             {
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "address",
///                     Dimension = "VALIDITY",
///                     Threshold = 0.99,
///                     Attributes =
///                     {
///                         { "priority", "high" },
///                     },
///                     NonNullExpectation = null,
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "council_district",
///                     Dimension = "VALIDITY",
///                     IgnoreNull = true,
///                     Threshold = 0.9,
///                     RangeExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleRangeExpectationArgs
///                     {
///                         MinValue = "1",
///                         MaxValue = "10",
///                         StrictMinEnabled = true,
///                         StrictMaxEnabled = false,
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "power_type",
///                     Dimension = "VALIDITY",
///                     IgnoreNull = false,
///                     RegexExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleRegexExpectationArgs
///                     {
///                         Regex = ".*solar.*",
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "property_type",
///                     Dimension = "VALIDITY",
///                     IgnoreNull = false,
///                     SetExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleSetExpectationArgs
///                     {
///                         Values = new[]
///                         {
///                             "sidewalk",
///                             "parkland",
///                         },
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "address",
///                     Dimension = "UNIQUENESS",
///                     UniquenessExpectation = null,
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "number_of_docks",
///                     Dimension = "VALIDITY",
///                     StatisticRangeExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleStatisticRangeExpectationArgs
///                     {
///                         Statistic = "MEAN",
///                         MinValue = "5",
///                         MaxValue = "15",
///                         StrictMinEnabled = true,
///                         StrictMaxEnabled = true,
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "footprint_length",
///                     Dimension = "VALIDITY",
///                     RowConditionExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleRowConditionExpectationArgs
///                     {
///                         SqlExpression = "footprint_length > 0 AND footprint_length <= 10",
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Dimension = "VALIDITY",
///                     TableConditionExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs
///                     {
///                         SqlExpression = "COUNT(*) > 0",
///                     },
///                 },
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Dimension = "VALIDITY",
///                     SqlAssertion = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleSqlAssertionArgs
///                     {
///                         SqlStatement = "select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null",
///                     },
///                 },
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascan(ctx, "full_quality", &dataplex.DatascanArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Full Datascan Quality"),
/// 			DataScanId:  pulumi.String("dataquality-full"),
/// 			Description: pulumi.String("Example resource - Full Datascan Quality"),
/// 			Labels: pulumi.StringMap{
/// 				"author": pulumi.String("billing"),
/// 			},
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					Schedule: &dataplex.DatascanExecutionSpecTriggerScheduleArgs{
/// 						Cron: pulumi.String("TZ=America/New_York 1 1 * * *"),
/// 					},
/// 				},
/// 				Field: pulumi.String("modified_date"),
/// 			},
/// 			DataQualitySpec: &dataplex.DatascanDataQualitySpecArgs{
/// 				SamplingPercent:          pulumi.Float64(5),
/// 				RowFilter:                pulumi.String("station_id > 1000"),
/// 				CatalogPublishingEnabled: pulumi.Bool(true),
/// 				Filter:                   pulumi.String("attributes.priority = 'high'"),
/// 				PostScanActions: &dataplex.DatascanDataQualitySpecPostScanActionsArgs{
/// 					NotificationReport: &dataplex.DatascanDataQualitySpecPostScanActionsNotificationReportArgs{
/// 						Recipients: &dataplex.DatascanDataQualitySpecPostScanActionsNotificationReportRecipientsArgs{
/// 							Emails: pulumi.StringArray{
/// 								pulumi.String("jane.doe@example.com"),
/// 							},
/// 						},
/// 						ScoreThresholdTrigger: &dataplex.DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTriggerArgs{
/// 							ScoreThreshold: pulumi.Float64(86),
/// 						},
/// 					},
/// 				},
/// 				Rules: dataplex.DatascanDataQualitySpecRuleArray{
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:    pulumi.String("address"),
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						Threshold: pulumi.Float64(0.99),
/// 						Attributes: pulumi.StringMap{
/// 							"priority": pulumi.String("high"),
/// 						},
/// 						NonNullExpectation: &dataplex.DatascanDataQualitySpecRuleNonNullExpectationArgs{},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:     pulumi.String("council_district"),
/// 						Dimension:  pulumi.String("VALIDITY"),
/// 						IgnoreNull: pulumi.Bool(true),
/// 						Threshold:  pulumi.Float64(0.9),
/// 						RangeExpectation: &dataplex.DatascanDataQualitySpecRuleRangeExpectationArgs{
/// 							MinValue:         pulumi.String("1"),
/// 							MaxValue:         pulumi.String("10"),
/// 							StrictMinEnabled: pulumi.Bool(true),
/// 							StrictMaxEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:     pulumi.String("power_type"),
/// 						Dimension:  pulumi.String("VALIDITY"),
/// 						IgnoreNull: pulumi.Bool(false),
/// 						RegexExpectation: &dataplex.DatascanDataQualitySpecRuleRegexExpectationArgs{
/// 							Regex: pulumi.String(".*solar.*"),
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:     pulumi.String("property_type"),
/// 						Dimension:  pulumi.String("VALIDITY"),
/// 						IgnoreNull: pulumi.Bool(false),
/// 						SetExpectation: &dataplex.DatascanDataQualitySpecRuleSetExpectationArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("sidewalk"),
/// 								pulumi.String("parkland"),
/// 							},
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:                pulumi.String("address"),
/// 						Dimension:             pulumi.String("UNIQUENESS"),
/// 						UniquenessExpectation: &dataplex.DatascanDataQualitySpecRuleUniquenessExpectationArgs{},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:    pulumi.String("number_of_docks"),
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						StatisticRangeExpectation: &dataplex.DatascanDataQualitySpecRuleStatisticRangeExpectationArgs{
/// 							Statistic:        pulumi.String("MEAN"),
/// 							MinValue:         pulumi.String("5"),
/// 							MaxValue:         pulumi.String("15"),
/// 							StrictMinEnabled: pulumi.Bool(true),
/// 							StrictMaxEnabled: pulumi.Bool(true),
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:    pulumi.String("footprint_length"),
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						RowConditionExpectation: &dataplex.DatascanDataQualitySpecRuleRowConditionExpectationArgs{
/// 							SqlExpression: pulumi.String("footprint_length > 0 AND footprint_length <= 10"),
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						TableConditionExpectation: &dataplex.DatascanDataQualitySpecRuleTableConditionExpectationArgs{
/// 							SqlExpression: pulumi.String("COUNT(*) > 0"),
/// 						},
/// 					},
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						SqlAssertion: &dataplex.DatascanDataQualitySpecRuleSqlAssertionArgs{
/// 							SqlStatement: pulumi.String("select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "full_quality" {
///   location     = "us-central1"
///   display_name = "Full Datascan Quality"
///   data_scan_id = "dataquality-full"
///   description  = "Example resource - Full Datascan Quality"
///   labels = {
///     "author" = "billing"
///   }
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations"
///   }
///   execution_spec = {
///     trigger = {
///       schedule = {
///         cron = "TZ=America/New_York 1 1 * * *"
///       }
///     }
///     field = "modified_date"
///   }
///   data_quality_spec = {
///     sampling_percent           = 5
///     row_filter                 = "station_id > 1000"
///     catalog_publishing_enabled = true
///     filter                     = "attributes.priority = 'high'"
///     post_scan_actions = {
///       notification_report = {
///         recipients = {
///           emails = ["jane.doe@example.com"]
///         }
///         score_threshold_trigger = {
///           score_threshold = 86
///         }
///       }
///     }
///     rules = [{
///       "column"    = "address"
///       "dimension" = "VALIDITY"
///       "threshold" = 0.99
///       "attributes" = {
///         "priority" = "high"
///       }
///       "nonNullExpectation" = {}
///       }, {
///       "column"     = "council_district"
///       "dimension"  = "VALIDITY"
///       "ignoreNull" = true
///       "threshold"  = 0.9
///       "rangeExpectation" = {
///         "minValue"         = 1
///         "maxValue"         = 10
///         "strictMinEnabled" = true
///         "strictMaxEnabled" = false
///       }
///       }, {
///       "column"     = "power_type"
///       "dimension"  = "VALIDITY"
///       "ignoreNull" = false
///       "regexExpectation" = {
///         "regex" = ".*solar.*"
///       }
///       }, {
///       "column"     = "property_type"
///       "dimension"  = "VALIDITY"
///       "ignoreNull" = false
///       "setExpectation" = {
///         "values" = ["sidewalk", "parkland"]
///       }
///       }, {
///       "column"                = "address"
///       "dimension"             = "UNIQUENESS"
///       "uniquenessExpectation" = {}
///       }, {
///       "column"    = "number_of_docks"
///       "dimension" = "VALIDITY"
///       "statisticRangeExpectation" = {
///         "statistic"        = "MEAN"
///         "minValue"         = 5
///         "maxValue"         = 15
///         "strictMinEnabled" = true
///         "strictMaxEnabled" = true
///       }
///       }, {
///       "column"    = "footprint_length"
///       "dimension" = "VALIDITY"
///       "rowConditionExpectation" = {
///         "sqlExpression" = "footprint_length > 0 AND footprint_length <= 10"
///       }
///       }, {
///       "dimension" = "VALIDITY"
///       "tableConditionExpectation" = {
///         "sqlExpression" = "COUNT(*) > 0"
///       }
///       }, {
///       "dimension" = "VALIDITY"
///       "sqlAssertion" = {
///         "sqlStatement" = "select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null"
///       }
///     }]
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerScheduleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecPostScanActionsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecPostScanActionsNotificationReportArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecPostScanActionsNotificationReportRecipientsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleNonNullExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleRangeExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleRegexExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleSetExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleUniquenessExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleStatisticRangeExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleRowConditionExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleSqlAssertionArgs;
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
///         var fullQuality = new Datascan("fullQuality", DatascanArgs.builder()
///             .location("us-central1")
///             .displayName("Full Datascan Quality")
///             .dataScanId("dataquality-full")
///             .description("Example resource - Full Datascan Quality")
///             .labels(Map.of("author", "billing"))
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .schedule(DatascanExecutionSpecTriggerScheduleArgs.builder()
///                         .cron("TZ=America/New_York 1 1 * * *")
///                         .build())
///                     .build())
///                 .field("modified_date")
///                 .build())
///             .dataQualitySpec(DatascanDataQualitySpecArgs.builder()
///                 .samplingPercent(5.0)
///                 .rowFilter("station_id > 1000")
///                 .catalogPublishingEnabled(true)
///                 .filter("attributes.priority = 'high'")
///                 .postScanActions(DatascanDataQualitySpecPostScanActionsArgs.builder()
///                     .notificationReport(DatascanDataQualitySpecPostScanActionsNotificationReportArgs.builder()
///                         .recipients(DatascanDataQualitySpecPostScanActionsNotificationReportRecipientsArgs.builder()
///                             .emails("jane.doe@example.com")
///                             .build())
///                         .scoreThresholdTrigger(DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTriggerArgs.builder()
///                             .scoreThreshold(86.0)
///                             .build())
///                         .build())
///                     .build())
///                 .rules(
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("address")
///                         .dimension("VALIDITY")
///                         .threshold(0.99)
///                         .attributes(Map.of("priority", "high"))
///                         .nonNullExpectation(DatascanDataQualitySpecRuleNonNullExpectationArgs.builder()
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("council_district")
///                         .dimension("VALIDITY")
///                         .ignoreNull(true)
///                         .threshold(0.9)
///                         .rangeExpectation(DatascanDataQualitySpecRuleRangeExpectationArgs.builder()
///                             .minValue("1")
///                             .maxValue("10")
///                             .strictMinEnabled(true)
///                             .strictMaxEnabled(false)
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("power_type")
///                         .dimension("VALIDITY")
///                         .ignoreNull(false)
///                         .regexExpectation(DatascanDataQualitySpecRuleRegexExpectationArgs.builder()
///                             .regex(".*solar.*")
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("property_type")
///                         .dimension("VALIDITY")
///                         .ignoreNull(false)
///                         .setExpectation(DatascanDataQualitySpecRuleSetExpectationArgs.builder()
///                             .values(
///                                 "sidewalk",
///                                 "parkland")
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("address")
///                         .dimension("UNIQUENESS")
///                         .uniquenessExpectation(DatascanDataQualitySpecRuleUniquenessExpectationArgs.builder()
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("number_of_docks")
///                         .dimension("VALIDITY")
///                         .statisticRangeExpectation(DatascanDataQualitySpecRuleStatisticRangeExpectationArgs.builder()
///                             .statistic("MEAN")
///                             .minValue("5")
///                             .maxValue("15")
///                             .strictMinEnabled(true)
///                             .strictMaxEnabled(true)
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .column("footprint_length")
///                         .dimension("VALIDITY")
///                         .rowConditionExpectation(DatascanDataQualitySpecRuleRowConditionExpectationArgs.builder()
///                             .sqlExpression("footprint_length > 0 AND footprint_length <= 10")
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .dimension("VALIDITY")
///                         .tableConditionExpectation(DatascanDataQualitySpecRuleTableConditionExpectationArgs.builder()
///                             .sqlExpression("COUNT(*) > 0")
///                             .build())
///                         .build(),
///                     DatascanDataQualitySpecRuleArgs.builder()
///                         .dimension("VALIDITY")
///                         .sqlAssertion(DatascanDataQualitySpecRuleSqlAssertionArgs.builder()
///                             .sqlStatement("select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null")
///                             .build())
///                         .build())
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fullQuality:
///     type: gcp:dataplex:Datascan
///     name: full_quality
///     properties:
///       location: us-central1
///       displayName: Full Datascan Quality
///       dataScanId: dataquality-full
///       description: Example resource - Full Datascan Quality
///       labels:
///         author: billing
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/austin_bikeshare/tables/bikeshare_stations
///       executionSpec:
///         trigger:
///           schedule:
///             cron: TZ=America/New_York 1 1 * * *
///         field: modified_date
///       dataQualitySpec:
///         samplingPercent: 5
///         rowFilter: station_id > 1000
///         catalogPublishingEnabled: true
///         filter: attributes.priority = 'high'
///         postScanActions:
///           notificationReport:
///             recipients:
///               emails:
///                 - jane.doe@example.com
///             scoreThresholdTrigger:
///               scoreThreshold: 86
///         rules:
///           - column: address
///             dimension: VALIDITY
///             threshold: 0.99
///             attributes:
///               priority: high
///             nonNullExpectation: {}
///           - column: council_district
///             dimension: VALIDITY
///             ignoreNull: true
///             threshold: 0.9
///             rangeExpectation:
///               minValue: 1
///               maxValue: 10
///               strictMinEnabled: true
///               strictMaxEnabled: false
///           - column: power_type
///             dimension: VALIDITY
///             ignoreNull: false
///             regexExpectation:
///               regex: .*solar.*
///           - column: property_type
///             dimension: VALIDITY
///             ignoreNull: false
///             setExpectation:
///               values:
///                 - sidewalk
///                 - parkland
///           - column: address
///             dimension: UNIQUENESS
///             uniquenessExpectation: {}
///           - column: number_of_docks
///             dimension: VALIDITY
///             statisticRangeExpectation:
///               statistic: MEAN
///               minValue: 5
///               maxValue: 15
///               strictMinEnabled: true
///               strictMaxEnabled: true
///           - column: footprint_length
///             dimension: VALIDITY
///             rowConditionExpectation:
///               sqlExpression: footprint_length > 0 AND footprint_length <= 10
///           - dimension: VALIDITY
///             tableConditionExpectation:
///               sqlExpression: COUNT(*) > 0
///           - dimension: VALIDITY
///             sqlAssertion:
///               sqlStatement: select * from bigquery-public-data.austin_bikeshare.bikeshare_stations where station_id is null
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Onetime Quality
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const onetimeQuality = new gcp.dataplex.Datascan("onetime_quality", {
///     location: "us-central1",
///     dataScanId: "dataquality-onetime",
///     data: {
///         resource: "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     executionSpec: {
///         trigger: {
///             oneTime: {
///                 ttlAfterScanCompletion: "120s",
///             },
///         },
///     },
///     dataQualitySpec: {
///         rules: [{
///             dimension: "VALIDITY",
///             name: "rule1",
///             description: "rule 1 for validity dimension",
///             tableConditionExpectation: {
///                 sqlExpression: "COUNT(*) > 0",
///             },
///         }],
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// onetime_quality = gcp.dataplex.Datascan("onetime_quality",
///     location="us-central1",
///     data_scan_id="dataquality-onetime",
///     data={
///         "resource": "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///     },
///     execution_spec={
///         "trigger": {
///             "one_time": {
///                 "ttl_after_scan_completion": "120s",
///             },
///         },
///     },
///     data_quality_spec={
///         "rules": [{
///             "dimension": "VALIDITY",
///             "name": "rule1",
///             "description": "rule 1 for validity dimension",
///             "table_condition_expectation": {
///                 "sql_expression": "COUNT(*) > 0",
///             },
///         }],
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var onetimeQuality = new Gcp.DataPlex.Datascan("onetime_quality", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataquality-onetime",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare",
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OneTime = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerOneTimeArgs
///                 {
///                     TtlAfterScanCompletion = "120s",
///                 },
///             },
///         },
///         DataQualitySpec = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Dimension = "VALIDITY",
///                     Name = "rule1",
///                     Description = "rule 1 for validity dimension",
///                     TableConditionExpectation = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs
///                     {
///                         SqlExpression = "COUNT(*) > 0",
///                     },
///                 },
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDatascan(ctx, "onetime_quality", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataquality-onetime"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.String("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OneTime: &dataplex.DatascanExecutionSpecTriggerOneTimeArgs{
/// 						TtlAfterScanCompletion: pulumi.String("120s"),
/// 					},
/// 				},
/// 			},
/// 			DataQualitySpec: &dataplex.DatascanDataQualitySpecArgs{
/// 				Rules: dataplex.DatascanDataQualitySpecRuleArray{
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Dimension:   pulumi.String("VALIDITY"),
/// 						Name:        pulumi.String("rule1"),
/// 						Description: pulumi.String("rule 1 for validity dimension"),
/// 						TableConditionExpectation: &dataplex.DatascanDataQualitySpecRuleTableConditionExpectationArgs{
/// 							SqlExpression: pulumi.String("COUNT(*) > 0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "onetime_quality" {
///   location     = "us-central1"
///   data_scan_id = "dataquality-onetime"
///   data = {
///     resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
///   }
///   execution_spec = {
///     trigger = {
///       one_time = {
///         ttl_after_scan_completion = "120s"
///       }
///     }
///   }
///   data_quality_spec = {
///     rules = [{
///       "dimension"   = "VALIDITY"
///       "name"        = "rule1"
///       "description" = "rule 1 for validity dimension"
///       "tableConditionExpectation" = {
///         "sqlExpression" = "COUNT(*) > 0"
///       }
///     }]
///   }
///   project = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOneTimeArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleTableConditionExpectationArgs;
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
///         var onetimeQuality = new Datascan("onetimeQuality", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataquality-onetime")
///             .data(DatascanDataArgs.builder()
///                 .resource("//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare")
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .oneTime(DatascanExecutionSpecTriggerOneTimeArgs.builder()
///                         .ttlAfterScanCompletion("120s")
///                         .build())
///                     .build())
///                 .build())
///             .dataQualitySpec(DatascanDataQualitySpecArgs.builder()
///                 .rules(DatascanDataQualitySpecRuleArgs.builder()
///                     .dimension("VALIDITY")
///                     .name("rule1")
///                     .description("rule 1 for validity dimension")
///                     .tableConditionExpectation(DatascanDataQualitySpecRuleTableConditionExpectationArgs.builder()
///                         .sqlExpression("COUNT(*) > 0")
///                         .build())
///                     .build())
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   onetimeQuality:
///     type: gcp:dataplex:Datascan
///     name: onetime_quality
///     properties:
///       location: us-central1
///       dataScanId: dataquality-onetime
///       data:
///         resource: //bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare
///       executionSpec:
///         trigger:
///           oneTime:
///             ttlAfterScanCompletion: 120s
///       dataQualitySpec:
///         rules:
///           - dimension: VALIDITY
///             name: rule1
///             description: rule 1 for validity dimension
///             tableConditionExpectation:
///               sqlExpression: COUNT(*) > 0
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Basic Discovery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfTestBucket = new gcp.storage.Bucket("tf_test_bucket", {
///     name: "tf-test-bucket-name-_1443",
///     location: "us-west1",
///     uniformBucketLevelAccess: true,
/// });
/// const basicDiscovery = new gcp.dataplex.Datascan("basic_discovery", {
///     location: "us-central1",
///     dataScanId: "datadiscovery-basic",
///     data: {
///         resource: pulumi.interpolate`//storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}`,
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     dataDiscoverySpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_test_bucket = gcp.storage.Bucket("tf_test_bucket",
///     name="tf-test-bucket-name-_1443",
///     location="us-west1",
///     uniform_bucket_level_access=True)
/// basic_discovery = gcp.dataplex.Datascan("basic_discovery",
///     location="us-central1",
///     data_scan_id="datadiscovery-basic",
///     data={
///         "resource": pulumi.Output.all(
///             project=tf_test_bucket.project,
///             name=tf_test_bucket.name
/// ).apply(lambda resolved_outputs: f"//storage.googleapis.com/projects/{resolved_outputs['project']}/buckets/{resolved_outputs['name']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     data_discovery_spec={},
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfTestBucket = new Gcp.Storage.Bucket("tf_test_bucket", new()
///     {
///         Name = "tf-test-bucket-name-_1443",
///         Location = "us-west1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var basicDiscovery = new Gcp.DataPlex.Datascan("basic_discovery", new()
///     {
///         Location = "us-central1",
///         DataScanId = "datadiscovery-basic",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfTestBucket.Project, tfTestBucket.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"//storage.googleapis.com/projects/{project}/buckets/{name}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         DataDiscoverySpec = null,
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfTestBucket, err := storage.NewBucket(ctx, "tf_test_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-bucket-name-_1443"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "basic_discovery", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("datadiscovery-basic"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestBucket.Project, tfTestBucket.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("//storage.googleapis.com/projects/%v/buckets/%v", project, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			DataDiscoverySpec: &dataplex.DatascanDataDiscoverySpecArgs{},
/// 			Project:           pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "basic_discovery" {
///   location     = "us-central1"
///   data_scan_id = "datadiscovery-basic"
///   data = {
///     resource ="//storage.googleapis.com/projects/${gcp_storage_bucket.tf_test_bucket.project}/buckets/${gcp_storage_bucket.tf_test_bucket.name}"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   data_discovery_spec = {}
///   project             = "my-project-name"
/// }
/// resource "gcp_storage_bucket" "tf_test_bucket" {
///   name                        = "tf-test-bucket-name-_1443"
///   location                    = "us-west1"
///   uniform_bucket_level_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecArgs;
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
///         var tfTestBucket = new Bucket("tfTestBucket", BucketArgs.builder()
///             .name("tf-test-bucket-name-_1443")
///             .location("us-west1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var basicDiscovery = new Datascan("basicDiscovery", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("datadiscovery-basic")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestBucket.project(), tfTestBucket.name()).applyValue(values -> {
///                     var project = values.t1;
///                     var name = values.t2;
///                     return String.format("//storage.googleapis.com/projects/%s/buckets/%s", project,name);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .dataDiscoverySpec(DatascanDataDiscoverySpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicDiscovery:
///     type: gcp:dataplex:Datascan
///     name: basic_discovery
///     properties:
///       location: us-central1
///       dataScanId: datadiscovery-basic
///       data:
///         resource: //storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}
///       executionSpec:
///         trigger:
///           onDemand: {}
///       dataDiscoverySpec: {}
///       project: my-project-name
///   tfTestBucket:
///     type: gcp:storage:Bucket
///     name: tf_test_bucket
///     properties:
///       name: tf-test-bucket-name-_1443
///       location: us-west1
///       uniformBucketLevelAccess: true
/// ```
///
/// ### Dataplex Datascan Full Discovery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfTestBucket = new gcp.storage.Bucket("tf_test_bucket", {
///     name: "tf-test-bucket-name-_26032",
///     location: "us-west1",
///     uniformBucketLevelAccess: true,
/// });
/// const tfTestConnection = new gcp.bigquery.Connection("tf_test_connection", {
///     connectionId: "tf-test-connection-_8647",
///     location: "us-central1",
///     friendlyName: "tf-test-connection-_50610",
///     description: "a bigquery connection for tf test",
///     cloudResource: {},
/// });
/// const fullDiscovery = new gcp.dataplex.Datascan("full_discovery", {
///     location: "us-central1",
///     displayName: "Full Datascan Discovery",
///     dataScanId: "datadiscovery-full",
///     description: "Example resource - Full Datascan Discovery",
///     labels: {
///         author: "billing",
///     },
///     data: {
///         resource: pulumi.interpolate`//storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}`,
///     },
///     executionSpec: {
///         trigger: {
///             schedule: {
///                 cron: "TZ=America/New_York 1 1 * * *",
///             },
///         },
///     },
///     dataDiscoverySpec: {
///         bigqueryPublishingConfig: {
///             tableType: "BIGLAKE",
///             connection: pulumi.interpolate`projects/${tfTestConnection.project}/locations/${tfTestConnection.location}/connections/${tfTestConnection.connectionId}`,
///             location: tfTestBucket.location,
///             project: pulumi.interpolate`projects/${tfTestBucket.project}`,
///         },
///         storageConfig: {
///             includePatterns: [
///                 "ai*",
///                 "ml*",
///             ],
///             excludePatterns: [
///                 "doc*",
///                 "gen*",
///             ],
///             csvOptions: {
///                 headerRows: 5,
///                 delimiter: ",",
///                 encoding: "UTF-8",
///                 typeInferenceDisabled: false,
///                 quote: "'",
///             },
///             jsonOptions: {
///                 encoding: "UTF-8",
///                 typeInferenceDisabled: false,
///             },
///         },
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_test_bucket = gcp.storage.Bucket("tf_test_bucket",
///     name="tf-test-bucket-name-_26032",
///     location="us-west1",
///     uniform_bucket_level_access=True)
/// tf_test_connection = gcp.bigquery.Connection("tf_test_connection",
///     connection_id="tf-test-connection-_8647",
///     location="us-central1",
///     friendly_name="tf-test-connection-_50610",
///     description="a bigquery connection for tf test",
///     cloud_resource={})
/// full_discovery = gcp.dataplex.Datascan("full_discovery",
///     location="us-central1",
///     display_name="Full Datascan Discovery",
///     data_scan_id="datadiscovery-full",
///     description="Example resource - Full Datascan Discovery",
///     labels={
///         "author": "billing",
///     },
///     data={
///         "resource": pulumi.Output.all(
///             project=tf_test_bucket.project,
///             name=tf_test_bucket.name
/// ).apply(lambda resolved_outputs: f"//storage.googleapis.com/projects/{resolved_outputs['project']}/buckets/{resolved_outputs['name']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "schedule": {
///                 "cron": "TZ=America/New_York 1 1 * * *",
///             },
///         },
///     },
///     data_discovery_spec={
///         "bigquery_publishing_config": {
///             "table_type": "BIGLAKE",
///             "connection": pulumi.Output.all(
///                 project=tf_test_connection.project,
///                 location=tf_test_connection.location,
///                 connection_id=tf_test_connection.connection_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/locations/{resolved_outputs['location']}/connections/{resolved_outputs['connection_id']}")
/// ,
///             "location": tf_test_bucket.location,
///             "project": tf_test_bucket.project.apply(lambda project: f"projects/{project}"),
///         },
///         "storage_config": {
///             "include_patterns": [
///                 "ai*",
///                 "ml*",
///             ],
///             "exclude_patterns": [
///                 "doc*",
///                 "gen*",
///             ],
///             "csv_options": {
///                 "header_rows": 5,
///                 "delimiter": ",",
///                 "encoding": "UTF-8",
///                 "type_inference_disabled": False,
///                 "quote": "'",
///             },
///             "json_options": {
///                 "encoding": "UTF-8",
///                 "type_inference_disabled": False,
///             },
///         },
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfTestBucket = new Gcp.Storage.Bucket("tf_test_bucket", new()
///     {
///         Name = "tf-test-bucket-name-_26032",
///         Location = "us-west1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var tfTestConnection = new Gcp.BigQuery.Connection("tf_test_connection", new()
///     {
///         ConnectionId = "tf-test-connection-_8647",
///         Location = "us-central1",
///         FriendlyName = "tf-test-connection-_50610",
///         Description = "a bigquery connection for tf test",
///         CloudResource = null,
///     });
///
///     var fullDiscovery = new Gcp.DataPlex.Datascan("full_discovery", new()
///     {
///         Location = "us-central1",
///         DisplayName = "Full Datascan Discovery",
///         DataScanId = "datadiscovery-full",
///         Description = "Example resource - Full Datascan Discovery",
///         Labels =
///         {
///             { "author", "billing" },
///         },
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfTestBucket.Project, tfTestBucket.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"//storage.googleapis.com/projects/{project}/buckets/{name}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 Schedule = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerScheduleArgs
///                 {
///                     Cron = "TZ=America/New_York 1 1 * * *",
///                 },
///             },
///         },
///         DataDiscoverySpec = new Gcp.DataPlex.Inputs.DatascanDataDiscoverySpecArgs
///         {
///             BigqueryPublishingConfig = new Gcp.DataPlex.Inputs.DatascanDataDiscoverySpecBigqueryPublishingConfigArgs
///             {
///                 TableType = "BIGLAKE",
///                 Connection = Output.Tuple(tfTestConnection.Project, tfTestConnection.Location, tfTestConnection.ConnectionId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var location = values.Item2;
///                     var connectionId = values.Item3;
///                     return $"projects/{project}/locations/{location}/connections/{connectionId}";
///                 }),
///                 Location = tfTestBucket.Location,
///                 Project = tfTestBucket.Project.Apply(project => $"projects/{project}"),
///             },
///             StorageConfig = new Gcp.DataPlex.Inputs.DatascanDataDiscoverySpecStorageConfigArgs
///             {
///                 IncludePatterns = new[]
///                 {
///                     "ai*",
///                     "ml*",
///                 },
///                 ExcludePatterns = new[]
///                 {
///                     "doc*",
///                     "gen*",
///                 },
///                 CsvOptions = new Gcp.DataPlex.Inputs.DatascanDataDiscoverySpecStorageConfigCsvOptionsArgs
///                 {
///                     HeaderRows = 5,
///                     Delimiter = ",",
///                     Encoding = "UTF-8",
///                     TypeInferenceDisabled = false,
///                     Quote = "'",
///                 },
///                 JsonOptions = new Gcp.DataPlex.Inputs.DatascanDataDiscoverySpecStorageConfigJsonOptionsArgs
///                 {
///                     Encoding = "UTF-8",
///                     TypeInferenceDisabled = false,
///                 },
///             },
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfTestBucket, err := storage.NewBucket(ctx, "tf_test_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-bucket-name-_26032"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestConnection, err := bigquery.NewConnection(ctx, "tf_test_connection", &bigquery.ConnectionArgs{
/// 			ConnectionId:  pulumi.String("tf-test-connection-_8647"),
/// 			Location:      pulumi.String("us-central1"),
/// 			FriendlyName:  pulumi.String("tf-test-connection-_50610"),
/// 			Description:   pulumi.String("a bigquery connection for tf test"),
/// 			CloudResource: &bigquery.ConnectionCloudResourceArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "full_discovery", &dataplex.DatascanArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Full Datascan Discovery"),
/// 			DataScanId:  pulumi.String("datadiscovery-full"),
/// 			Description: pulumi.String("Example resource - Full Datascan Discovery"),
/// 			Labels: pulumi.StringMap{
/// 				"author": pulumi.String("billing"),
/// 			},
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestBucket.Project, tfTestBucket.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("//storage.googleapis.com/projects/%v/buckets/%v", project, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					Schedule: &dataplex.DatascanExecutionSpecTriggerScheduleArgs{
/// 						Cron: pulumi.String("TZ=America/New_York 1 1 * * *"),
/// 					},
/// 				},
/// 			},
/// 			DataDiscoverySpec: &dataplex.DatascanDataDiscoverySpecArgs{
/// 				BigqueryPublishingConfig: &dataplex.DatascanDataDiscoverySpecBigqueryPublishingConfigArgs{
/// 					TableType: pulumi.String("BIGLAKE"),
/// 					Connection: pulumi.All(tfTestConnection.Project, tfTestConnection.Location, tfTestConnection.ConnectionId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						location := _args[1].(*string)
/// 						connectionId := _args[2].(string)
/// 						return fmt.Sprintf("projects/%v/locations/%v/connections/%v", project, location, connectionId), nil
/// 					}).(pulumi.StringOutput),
/// 					Location: tfTestBucket.Location,
/// 					Project: tfTestBucket.Project.ApplyT(func(project string) (string, error) {
/// 						return fmt.Sprintf("projects/%v", project), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				StorageConfig: &dataplex.DatascanDataDiscoverySpecStorageConfigArgs{
/// 					IncludePatterns: pulumi.StringArray{
/// 						pulumi.String("ai*"),
/// 						pulumi.String("ml*"),
/// 					},
/// 					ExcludePatterns: pulumi.StringArray{
/// 						pulumi.String("doc*"),
/// 						pulumi.String("gen*"),
/// 					},
/// 					CsvOptions: &dataplex.DatascanDataDiscoverySpecStorageConfigCsvOptionsArgs{
/// 						HeaderRows:            pulumi.Int(5),
/// 						Delimiter:             pulumi.String(","),
/// 						Encoding:              pulumi.String("UTF-8"),
/// 						TypeInferenceDisabled: pulumi.Bool(false),
/// 						Quote:                 pulumi.String("'"),
/// 					},
/// 					JsonOptions: &dataplex.DatascanDataDiscoverySpecStorageConfigJsonOptionsArgs{
/// 						Encoding:              pulumi.String("UTF-8"),
/// 						TypeInferenceDisabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "full_discovery" {
///   location     = "us-central1"
///   display_name = "Full Datascan Discovery"
///   data_scan_id = "datadiscovery-full"
///   description  = "Example resource - Full Datascan Discovery"
///   labels = {
///     "author" = "billing"
///   }
///   data = {
///     resource ="//storage.googleapis.com/projects/${gcp_storage_bucket.tf_test_bucket.project}/buckets/${gcp_storage_bucket.tf_test_bucket.name}"
///   }
///   execution_spec = {
///     trigger = {
///       schedule = {
///         cron = "TZ=America/New_York 1 1 * * *"
///       }
///     }
///   }
///   data_discovery_spec = {
///     bigquery_publishing_config = {
///       table_type = "BIGLAKE"
///       connection ="projects/${gcp_bigquery_connection.tf_test_connection.project}/locations/${gcp_bigquery_connection.tf_test_connection.location}/connections/${gcp_bigquery_connection.tf_test_connection.connection_id}"
///       location   = gcp_storage_bucket.tf_test_bucket.location
///       project    ="projects/${gcp_storage_bucket.tf_test_bucket.project}"
///     }
///     storage_config = {
///       include_patterns = ["ai*", "ml*"]
///       exclude_patterns = ["doc*", "gen*"]
///       csv_options = {
///         header_rows             = 5
///         delimiter               = ","
///         encoding                = "UTF-8"
///         type_inference_disabled = false
///         quote                   = "'"
///       }
///       json_options = {
///         encoding                = "UTF-8"
///         type_inference_disabled = false
///       }
///     }
///   }
///   project = "my-project-name"
/// }
/// resource "gcp_storage_bucket" "tf_test_bucket" {
///   name                        = "tf-test-bucket-name-_26032"
///   location                    = "us-west1"
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_bigquery_connection" "tf_test_connection" {
///   connection_id  = "tf-test-connection-_8647"
///   location       = "us-central1"
///   friendly_name  = "tf-test-connection-_50610"
///   description    = "a bigquery connection for tf test"
///   cloud_resource = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.bigquery.Connection;
/// import com.pulumi.gcp.bigquery.ConnectionArgs;
/// import com.pulumi.gcp.bigquery.inputs.ConnectionCloudResourceArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerScheduleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecBigqueryPublishingConfigArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecStorageConfigArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecStorageConfigCsvOptionsArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecStorageConfigJsonOptionsArgs;
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
///         var tfTestBucket = new Bucket("tfTestBucket", BucketArgs.builder()
///             .name("tf-test-bucket-name-_26032")
///             .location("us-west1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var tfTestConnection = new Connection("tfTestConnection", ConnectionArgs.builder()
///             .connectionId("tf-test-connection-_8647")
///             .location("us-central1")
///             .friendlyName("tf-test-connection-_50610")
///             .description("a bigquery connection for tf test")
///             .cloudResource(ConnectionCloudResourceArgs.builder()
///                 .build())
///             .build());
///
///         var fullDiscovery = new Datascan("fullDiscovery", DatascanArgs.builder()
///             .location("us-central1")
///             .displayName("Full Datascan Discovery")
///             .dataScanId("datadiscovery-full")
///             .description("Example resource - Full Datascan Discovery")
///             .labels(Map.of("author", "billing"))
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestBucket.project(), tfTestBucket.name()).applyValue(values -> {
///                     var project = values.t1;
///                     var name = values.t2;
///                     return String.format("//storage.googleapis.com/projects/%s/buckets/%s", project,name);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .schedule(DatascanExecutionSpecTriggerScheduleArgs.builder()
///                         .cron("TZ=America/New_York 1 1 * * *")
///                         .build())
///                     .build())
///                 .build())
///             .dataDiscoverySpec(DatascanDataDiscoverySpecArgs.builder()
///                 .bigqueryPublishingConfig(DatascanDataDiscoverySpecBigqueryPublishingConfigArgs.builder()
///                     .tableType("BIGLAKE")
///                     .connection(Output.tuple(tfTestConnection.project(), tfTestConnection.location(), tfTestConnection.connectionId()).applyValue(values -> {
///                         var project = values.t1;
///                         var location = values.t2;
///                         var connectionId = values.t3;
///                         return String.format("projects/%s/locations/%s/connections/%s", project,location,connectionId);
///                     }))
///                     .location(tfTestBucket.location())
///                     .project(tfTestBucket.project().applyValue(_project -> String.format("projects/%s", _project)))
///                     .build())
///                 .storageConfig(DatascanDataDiscoverySpecStorageConfigArgs.builder()
///                     .includePatterns(
///                         "ai*",
///                         "ml*")
///                     .excludePatterns(
///                         "doc*",
///                         "gen*")
///                     .csvOptions(DatascanDataDiscoverySpecStorageConfigCsvOptionsArgs.builder()
///                         .headerRows(5)
///                         .delimiter(",")
///                         .encoding("UTF-8")
///                         .typeInferenceDisabled(false)
///                         .quote("'")
///                         .build())
///                     .jsonOptions(DatascanDataDiscoverySpecStorageConfigJsonOptionsArgs.builder()
///                         .encoding("UTF-8")
///                         .typeInferenceDisabled(false)
///                         .build())
///                     .build())
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fullDiscovery:
///     type: gcp:dataplex:Datascan
///     name: full_discovery
///     properties:
///       location: us-central1
///       displayName: Full Datascan Discovery
///       dataScanId: datadiscovery-full
///       description: Example resource - Full Datascan Discovery
///       labels:
///         author: billing
///       data:
///         resource: //storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}
///       executionSpec:
///         trigger:
///           schedule:
///             cron: TZ=America/New_York 1 1 * * *
///       dataDiscoverySpec:
///         bigqueryPublishingConfig:
///           tableType: BIGLAKE
///           connection: projects/${tfTestConnection.project}/locations/${tfTestConnection.location}/connections/${tfTestConnection.connectionId}
///           location: ${tfTestBucket.location}
///           project: projects/${tfTestBucket.project}
///         storageConfig:
///           includePatterns:
///             - ai*
///             - ml*
///           excludePatterns:
///             - doc*
///             - gen*
///           csvOptions:
///             headerRows: 5
///             delimiter: ','
///             encoding: UTF-8
///             typeInferenceDisabled: false
///             quote: ''''
///           jsonOptions:
///             encoding: UTF-8
///             typeInferenceDisabled: false
///       project: my-project-name
///   tfTestBucket:
///     type: gcp:storage:Bucket
///     name: tf_test_bucket
///     properties:
///       name: tf-test-bucket-name-_26032
///       location: us-west1
///       uniformBucketLevelAccess: true
///   tfTestConnection:
///     type: gcp:bigquery:Connection
///     name: tf_test_connection
///     properties:
///       connectionId: tf-test-connection-_8647
///       location: us-central1
///       friendlyName: tf-test-connection-_50610
///       description: a bigquery connection for tf test
///       cloudResource: {}
/// ```
///
/// ### Dataplex Datascan Onetime Discovery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfTestBucket = new gcp.storage.Bucket("tf_test_bucket", {
///     name: "tf-test-bucket-name-_77124",
///     location: "us-west1",
///     uniformBucketLevelAccess: true,
/// });
/// const onetimeDiscovery = new gcp.dataplex.Datascan("onetime_discovery", {
///     location: "us-central1",
///     dataScanId: "datadiscovery-onetime",
///     data: {
///         resource: pulumi.interpolate`//storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}`,
///     },
///     executionSpec: {
///         trigger: {
///             oneTime: {
///                 ttlAfterScanCompletion: "120s",
///             },
///         },
///     },
///     dataDiscoverySpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_test_bucket = gcp.storage.Bucket("tf_test_bucket",
///     name="tf-test-bucket-name-_77124",
///     location="us-west1",
///     uniform_bucket_level_access=True)
/// onetime_discovery = gcp.dataplex.Datascan("onetime_discovery",
///     location="us-central1",
///     data_scan_id="datadiscovery-onetime",
///     data={
///         "resource": pulumi.Output.all(
///             project=tf_test_bucket.project,
///             name=tf_test_bucket.name
/// ).apply(lambda resolved_outputs: f"//storage.googleapis.com/projects/{resolved_outputs['project']}/buckets/{resolved_outputs['name']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "one_time": {
///                 "ttl_after_scan_completion": "120s",
///             },
///         },
///     },
///     data_discovery_spec={},
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfTestBucket = new Gcp.Storage.Bucket("tf_test_bucket", new()
///     {
///         Name = "tf-test-bucket-name-_77124",
///         Location = "us-west1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var onetimeDiscovery = new Gcp.DataPlex.Datascan("onetime_discovery", new()
///     {
///         Location = "us-central1",
///         DataScanId = "datadiscovery-onetime",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfTestBucket.Project, tfTestBucket.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"//storage.googleapis.com/projects/{project}/buckets/{name}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OneTime = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerOneTimeArgs
///                 {
///                     TtlAfterScanCompletion = "120s",
///                 },
///             },
///         },
///         DataDiscoverySpec = null,
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfTestBucket, err := storage.NewBucket(ctx, "tf_test_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-bucket-name-_77124"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "onetime_discovery", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("datadiscovery-onetime"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestBucket.Project, tfTestBucket.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					name := _args[1].(string)
/// 					return fmt.Sprintf("//storage.googleapis.com/projects/%v/buckets/%v", project, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OneTime: &dataplex.DatascanExecutionSpecTriggerOneTimeArgs{
/// 						TtlAfterScanCompletion: pulumi.String("120s"),
/// 					},
/// 				},
/// 			},
/// 			DataDiscoverySpec: &dataplex.DatascanDataDiscoverySpecArgs{},
/// 			Project:           pulumi.String("my-project-name"),
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
/// resource "gcp_dataplex_datascan" "onetime_discovery" {
///   location     = "us-central1"
///   data_scan_id = "datadiscovery-onetime"
///   data = {
///     resource ="//storage.googleapis.com/projects/${gcp_storage_bucket.tf_test_bucket.project}/buckets/${gcp_storage_bucket.tf_test_bucket.name}"
///   }
///   execution_spec = {
///     trigger = {
///       one_time = {
///         ttl_after_scan_completion = "120s"
///       }
///     }
///   }
///   data_discovery_spec = {}
///   project             = "my-project-name"
/// }
/// resource "gcp_storage_bucket" "tf_test_bucket" {
///   name                        = "tf-test-bucket-name-_77124"
///   location                    = "us-west1"
///   uniform_bucket_level_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOneTimeArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDiscoverySpecArgs;
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
///         var tfTestBucket = new Bucket("tfTestBucket", BucketArgs.builder()
///             .name("tf-test-bucket-name-_77124")
///             .location("us-west1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var onetimeDiscovery = new Datascan("onetimeDiscovery", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("datadiscovery-onetime")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestBucket.project(), tfTestBucket.name()).applyValue(values -> {
///                     var project = values.t1;
///                     var name = values.t2;
///                     return String.format("//storage.googleapis.com/projects/%s/buckets/%s", project,name);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .oneTime(DatascanExecutionSpecTriggerOneTimeArgs.builder()
///                         .ttlAfterScanCompletion("120s")
///                         .build())
///                     .build())
///                 .build())
///             .dataDiscoverySpec(DatascanDataDiscoverySpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   onetimeDiscovery:
///     type: gcp:dataplex:Datascan
///     name: onetime_discovery
///     properties:
///       location: us-central1
///       dataScanId: datadiscovery-onetime
///       data:
///         resource: //storage.googleapis.com/projects/${tfTestBucket.project}/buckets/${tfTestBucket.name}
///       executionSpec:
///         trigger:
///           oneTime:
///             ttlAfterScanCompletion: 120s
///       dataDiscoverySpec: {}
///       project: my-project-name
///   tfTestBucket:
///     type: gcp:storage:Bucket
///     name: tf_test_bucket
///     properties:
///       name: tf-test-bucket-name-_77124
///       location: us-west1
///       uniformBucketLevelAccess: true
/// ```
///
/// ### Dataplex Datascan Documentation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfDataplexTestDataset = new gcp.bigquery.Dataset("tf_dataplex_test_dataset", {
///     datasetId: "tf_dataplex_test_dataset_id__15335",
///     defaultTableExpirationMs: 3600000,
/// });
/// const tfDataplexTestTable = new gcp.bigquery.Table("tf_dataplex_test_table", {
///     datasetId: tfDataplexTestDataset.datasetId,
///     tableId: "tf_dataplex_test_table_id__20665",
///     deletionProtection: false,
///     schema: `    [
///     {
///       \\"name\\": \\"name\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///       \\"name\\": \\"station_id\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The id of the bike station\\"
///     },
///     {
///       \\"name\\": \\"address\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The address of the bike station\\"
///     },
///     {
///       \\"name\\": \\"power_type\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The powert type of the bike station\\"
///     },
///     {
///       \\"name\\": \\"property_type\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The type of the property\\"
///     },
///     {
///       \\"name\\": \\"number_of_docks\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The number of docks the property have\\"
///     },
///     {
///       \\"name\\": \\"footprint_length\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The footpring lenght of the property\\"
///     },
///     {
///       \\"name\\": \\"council_district\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The council district the property is in\\"
///     }
///     ]
/// `,
/// });
/// const documentation = new gcp.dataplex.Datascan("documentation", {
///     location: "us-central1",
///     dataScanId: "datadocumentation",
///     data: {
///         resource: pulumi.interpolate`//bigquery.googleapis.com/projects/my-project-name/datasets/${tfDataplexTestDataset.datasetId}/tables/${tfDataplexTestTable.tableId}`,
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     dataDocumentationSpec: {
///         catalogPublishingEnabled: true,
///     },
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_dataplex_test_dataset = gcp.bigquery.Dataset("tf_dataplex_test_dataset",
///     dataset_id="tf_dataplex_test_dataset_id__15335",
///     default_table_expiration_ms=3600000)
/// tf_dataplex_test_table = gcp.bigquery.Table("tf_dataplex_test_table",
///     dataset_id=tf_dataplex_test_dataset.dataset_id,
///     table_id="tf_dataplex_test_table_id__20665",
///     deletion_protection=False,
///     schema="""    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
/// """)
/// documentation = gcp.dataplex.Datascan("documentation",
///     location="us-central1",
///     data_scan_id="datadocumentation",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_dataplex_test_dataset.dataset_id,
///             table_id=tf_dataplex_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/my-project-name/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     data_documentation_spec={
///         "catalog_publishing_enabled": True,
///     },
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfDataplexTestDataset = new Gcp.BigQuery.Dataset("tf_dataplex_test_dataset", new()
///     {
///         DatasetId = "tf_dataplex_test_dataset_id__15335",
///         DefaultTableExpirationMs = 3600000,
///     });
///
///     var tfDataplexTestTable = new Gcp.BigQuery.Table("tf_dataplex_test_table", new()
///     {
///         DatasetId = tfDataplexTestDataset.DatasetId,
///         TableId = "tf_dataplex_test_table_id__20665",
///         DeletionProtection = false,
///         Schema = @"    [
///     {
///       \""name\"": \""name\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\""
///     },
///     {
///       \""name\"": \""station_id\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The id of the bike station\""
///     },
///     {
///       \""name\"": \""address\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The address of the bike station\""
///     },
///     {
///       \""name\"": \""power_type\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The powert type of the bike station\""
///     },
///     {
///       \""name\"": \""property_type\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The type of the property\""
///     },
///     {
///       \""name\"": \""number_of_docks\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The number of docks the property have\""
///     },
///     {
///       \""name\"": \""footprint_length\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The footpring lenght of the property\""
///     },
///     {
///       \""name\"": \""council_district\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The council district the property is in\""
///     }
///     ]
/// ",
///     });
///
///     var documentation = new Gcp.DataPlex.Datascan("documentation", new()
///     {
///         Location = "us-central1",
///         DataScanId = "datadocumentation",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfDataplexTestDataset.DatasetId, tfDataplexTestTable.TableId).Apply(values =>
///             {
///                 var datasetId = values.Item1;
///                 var tableId = values.Item2;
///                 return $"//bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         DataDocumentationSpec = new Gcp.DataPlex.Inputs.DatascanDataDocumentationSpecArgs
///         {
///             CatalogPublishingEnabled = true,
///         },
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfDataplexTestDataset, err := bigquery.NewDataset(ctx, "tf_dataplex_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_dataplex_test_dataset_id__15335"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfDataplexTestTable, err := bigquery.NewTable(ctx, "tf_dataplex_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfDataplexTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_dataplex_test_table_id__20665"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema: pulumi.String(`    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "documentation", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("datadocumentation"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfDataplexTestDataset.DatasetId, tfDataplexTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/my-project-name/datasets/%v/tables/%v", datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			DataDocumentationSpec: &dataplex.DatascanDataDocumentationSpecArgs{
/// 				CatalogPublishingEnabled: pulumi.Bool(true),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
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
/// resource "gcp_bigquery_dataset" "tf_dataplex_test_dataset" {
///   dataset_id                  = "tf_dataplex_test_dataset_id__15335"
///   default_table_expiration_ms = 3600000
/// }
/// resource "gcp_bigquery_table" "tf_dataplex_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_dataplex_test_dataset.dataset_id
///   table_id            = "tf_dataplex_test_table_id__20665"
///   deletion_protection = false
///   schema              = "    [\n    {\n      \\\"name\\\": \\\"name\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\"\n    },\n    {\n      \\\"name\\\": \\\"station_id\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The id of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"address\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The address of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"power_type\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The powert type of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"property_type\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The type of the property\\\"\n    },\n    {\n      \\\"name\\\": \\\"number_of_docks\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The number of docks the property have\\\"\n    },\n    {\n      \\\"name\\\": \\\"footprint_length\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The footpring lenght of the property\\\"\n    },\n    {\n      \\\"name\\\": \\\"council_district\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The council district the property is in\\\"\n    }\n    ]\n"
/// }
/// resource "gcp_dataplex_datascan" "documentation" {
///   location     = "us-central1"
///   data_scan_id = "datadocumentation"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.tf_dataplex_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_dataplex_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   data_documentation_spec = {
///     catalog_publishing_enabled = true
///   }
///   project = "my-project-name"
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
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDocumentationSpecArgs;
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
///         var tfDataplexTestDataset = new Dataset("tfDataplexTestDataset", DatasetArgs.builder()
///             .datasetId("tf_dataplex_test_dataset_id__15335")
///             .defaultTableExpirationMs(3600000)
///             .build());
///
///         var tfDataplexTestTable = new Table("tfDataplexTestTable", TableArgs.builder()
///             .datasetId(tfDataplexTestDataset.datasetId())
///             .tableId("tf_dataplex_test_table_id__20665")
///             .deletionProtection(false)
///             .schema("""
///     [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
///             """)
///             .build());
///
///         var documentation = new Datascan("documentation", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("datadocumentation")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfDataplexTestDataset.datasetId(), tfDataplexTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/my-project-name/datasets/%s/tables/%s", datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .dataDocumentationSpec(DatascanDataDocumentationSpecArgs.builder()
///                 .catalogPublishingEnabled(true)
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tfDataplexTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_dataplex_test_dataset
///     properties:
///       datasetId: tf_dataplex_test_dataset_id__15335
///       defaultTableExpirationMs: 3.6e+06
///   tfDataplexTestTable:
///     type: gcp:bigquery:Table
///     name: tf_dataplex_test_table
///     properties:
///       datasetId: ${tfDataplexTestDataset.datasetId}
///       tableId: tf_dataplex_test_table_id__20665
///       deletionProtection: false
///       schema: |2
///             [
///             {
///               \"name\": \"name\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\"
///             },
///             {
///               \"name\": \"station_id\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The id of the bike station\"
///             },
///             {
///               \"name\": \"address\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The address of the bike station\"
///             },
///             {
///               \"name\": \"power_type\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The powert type of the bike station\"
///             },
///             {
///               \"name\": \"property_type\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The type of the property\"
///             },
///             {
///               \"name\": \"number_of_docks\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The number of docks the property have\"
///             },
///             {
///               \"name\": \"footprint_length\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The footpring lenght of the property\"
///             },
///             {
///               \"name\": \"council_district\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The council district the property is in\"
///             }
///             ]
///   documentation:
///     type: gcp:dataplex:Datascan
///     properties:
///       location: us-central1
///       dataScanId: datadocumentation
///       data:
///         resource: //bigquery.googleapis.com/projects/my-project-name/datasets/${tfDataplexTestDataset.datasetId}/tables/${tfDataplexTestTable.tableId}
///       executionSpec:
///         trigger:
///           onDemand: {}
///       dataDocumentationSpec:
///         catalogPublishingEnabled: true
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Onetime Documentation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfDataplexTestDataset = new gcp.bigquery.Dataset("tf_dataplex_test_dataset", {
///     datasetId: "tf_dataplex_test_dataset_id__85160",
///     defaultTableExpirationMs: 3600000,
/// });
/// const tfDataplexTestTable = new gcp.bigquery.Table("tf_dataplex_test_table", {
///     datasetId: tfDataplexTestDataset.datasetId,
///     tableId: "tf_dataplex_test_table_id__92130",
///     deletionProtection: false,
///     schema: `    [
///     {
///       \\"name\\": \\"name\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///       \\"name\\": \\"station_id\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The id of the bike station\\"
///     },
///     {
///       \\"name\\": \\"address\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The address of the bike station\\"
///     },
///     {
///       \\"name\\": \\"power_type\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The powert type of the bike station\\"
///     },
///     {
///       \\"name\\": \\"property_type\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The type of the property\\"
///     },
///     {
///       \\"name\\": \\"number_of_docks\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The number of docks the property have\\"
///     },
///     {
///       \\"name\\": \\"footprint_length\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The footpring lenght of the property\\"
///     },
///     {
///       \\"name\\": \\"council_district\\",
///       \\"type\\": \\"INTEGER\\",
///       \\"mode\\": \\"NULLABLE\\",
///       \\"description\\": \\"The council district the property is in\\"
///     }
///     ]
/// `,
/// });
/// const onetimeDocumentation = new gcp.dataplex.Datascan("onetime_documentation", {
///     location: "us-central1",
///     dataScanId: "datadocumentation-onetime",
///     data: {
///         resource: pulumi.interpolate`//bigquery.googleapis.com/projects/my-project-name/datasets/${tfDataplexTestDataset.datasetId}/tables/${tfDataplexTestTable.tableId}`,
///     },
///     executionSpec: {
///         trigger: {
///             oneTime: {
///                 ttlAfterScanCompletion: "120s",
///             },
///         },
///     },
///     dataDocumentationSpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_dataplex_test_dataset = gcp.bigquery.Dataset("tf_dataplex_test_dataset",
///     dataset_id="tf_dataplex_test_dataset_id__85160",
///     default_table_expiration_ms=3600000)
/// tf_dataplex_test_table = gcp.bigquery.Table("tf_dataplex_test_table",
///     dataset_id=tf_dataplex_test_dataset.dataset_id,
///     table_id="tf_dataplex_test_table_id__92130",
///     deletion_protection=False,
///     schema="""    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
/// """)
/// onetime_documentation = gcp.dataplex.Datascan("onetime_documentation",
///     location="us-central1",
///     data_scan_id="datadocumentation-onetime",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_dataplex_test_dataset.dataset_id,
///             table_id=tf_dataplex_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/my-project-name/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "one_time": {
///                 "ttl_after_scan_completion": "120s",
///             },
///         },
///     },
///     data_documentation_spec={},
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfDataplexTestDataset = new Gcp.BigQuery.Dataset("tf_dataplex_test_dataset", new()
///     {
///         DatasetId = "tf_dataplex_test_dataset_id__85160",
///         DefaultTableExpirationMs = 3600000,
///     });
///
///     var tfDataplexTestTable = new Gcp.BigQuery.Table("tf_dataplex_test_table", new()
///     {
///         DatasetId = tfDataplexTestDataset.DatasetId,
///         TableId = "tf_dataplex_test_table_id__92130",
///         DeletionProtection = false,
///         Schema = @"    [
///     {
///       \""name\"": \""name\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\""
///     },
///     {
///       \""name\"": \""station_id\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The id of the bike station\""
///     },
///     {
///       \""name\"": \""address\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The address of the bike station\""
///     },
///     {
///       \""name\"": \""power_type\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The powert type of the bike station\""
///     },
///     {
///       \""name\"": \""property_type\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The type of the property\""
///     },
///     {
///       \""name\"": \""number_of_docks\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The number of docks the property have\""
///     },
///     {
///       \""name\"": \""footprint_length\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The footpring lenght of the property\""
///     },
///     {
///       \""name\"": \""council_district\"",
///       \""type\"": \""INTEGER\"",
///       \""mode\"": \""NULLABLE\"",
///       \""description\"": \""The council district the property is in\""
///     }
///     ]
/// ",
///     });
///
///     var onetimeDocumentation = new Gcp.DataPlex.Datascan("onetime_documentation", new()
///     {
///         Location = "us-central1",
///         DataScanId = "datadocumentation-onetime",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfDataplexTestDataset.DatasetId, tfDataplexTestTable.TableId).Apply(values =>
///             {
///                 var datasetId = values.Item1;
///                 var tableId = values.Item2;
///                 return $"//bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OneTime = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerOneTimeArgs
///                 {
///                     TtlAfterScanCompletion = "120s",
///                 },
///             },
///         },
///         DataDocumentationSpec = null,
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfDataplexTestDataset, err := bigquery.NewDataset(ctx, "tf_dataplex_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_dataplex_test_dataset_id__85160"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfDataplexTestTable, err := bigquery.NewTable(ctx, "tf_dataplex_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfDataplexTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_dataplex_test_table_id__92130"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema: pulumi.String(`    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "onetime_documentation", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("datadocumentation-onetime"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfDataplexTestDataset.DatasetId, tfDataplexTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/my-project-name/datasets/%v/tables/%v", datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OneTime: &dataplex.DatascanExecutionSpecTriggerOneTimeArgs{
/// 						TtlAfterScanCompletion: pulumi.String("120s"),
/// 					},
/// 				},
/// 			},
/// 			DataDocumentationSpec: &dataplex.DatascanDataDocumentationSpecArgs{},
/// 			Project:               pulumi.String("my-project-name"),
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
/// resource "gcp_bigquery_dataset" "tf_dataplex_test_dataset" {
///   dataset_id                  = "tf_dataplex_test_dataset_id__85160"
///   default_table_expiration_ms = 3600000
/// }
/// resource "gcp_bigquery_table" "tf_dataplex_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_dataplex_test_dataset.dataset_id
///   table_id            = "tf_dataplex_test_table_id__92130"
///   deletion_protection = false
///   schema              = "    [\n    {\n      \\\"name\\\": \\\"name\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\"\n    },\n    {\n      \\\"name\\\": \\\"station_id\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The id of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"address\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The address of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"power_type\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The powert type of the bike station\\\"\n    },\n    {\n      \\\"name\\\": \\\"property_type\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The type of the property\\\"\n    },\n    {\n      \\\"name\\\": \\\"number_of_docks\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The number of docks the property have\\\"\n    },\n    {\n      \\\"name\\\": \\\"footprint_length\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The footpring lenght of the property\\\"\n    },\n    {\n      \\\"name\\\": \\\"council_district\\\",\n      \\\"type\\\": \\\"INTEGER\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\",\n      \\\"description\\\": \\\"The council district the property is in\\\"\n    }\n    ]\n"
/// }
/// resource "gcp_dataplex_datascan" "onetime_documentation" {
///   location     = "us-central1"
///   data_scan_id = "datadocumentation-onetime"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.tf_dataplex_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_dataplex_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       one_time = {
///         ttl_after_scan_completion = "120s"
///       }
///     }
///   }
///   data_documentation_spec = {}
///   project                 = "my-project-name"
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
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOneTimeArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataDocumentationSpecArgs;
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
///         var tfDataplexTestDataset = new Dataset("tfDataplexTestDataset", DatasetArgs.builder()
///             .datasetId("tf_dataplex_test_dataset_id__85160")
///             .defaultTableExpirationMs(3600000)
///             .build());
///
///         var tfDataplexTestTable = new Table("tfDataplexTestTable", TableArgs.builder()
///             .datasetId(tfDataplexTestDataset.datasetId())
///             .tableId("tf_dataplex_test_table_id__92130")
///             .deletionProtection(false)
///             .schema("""
///     [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     },
///     {
///       \"name\": \"station_id\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The id of the bike station\"
///     },
///     {
///       \"name\": \"address\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The address of the bike station\"
///     },
///     {
///       \"name\": \"power_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The powert type of the bike station\"
///     },
///     {
///       \"name\": \"property_type\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The type of the property\"
///     },
///     {
///       \"name\": \"number_of_docks\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The number of docks the property have\"
///     },
///     {
///       \"name\": \"footprint_length\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The footpring lenght of the property\"
///     },
///     {
///       \"name\": \"council_district\",
///       \"type\": \"INTEGER\",
///       \"mode\": \"NULLABLE\",
///       \"description\": \"The council district the property is in\"
///     }
///     ]
///             """)
///             .build());
///
///         var onetimeDocumentation = new Datascan("onetimeDocumentation", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("datadocumentation-onetime")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfDataplexTestDataset.datasetId(), tfDataplexTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/my-project-name/datasets/%s/tables/%s", datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .oneTime(DatascanExecutionSpecTriggerOneTimeArgs.builder()
///                         .ttlAfterScanCompletion("120s")
///                         .build())
///                     .build())
///                 .build())
///             .dataDocumentationSpec(DatascanDataDocumentationSpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tfDataplexTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_dataplex_test_dataset
///     properties:
///       datasetId: tf_dataplex_test_dataset_id__85160
///       defaultTableExpirationMs: 3.6e+06
///   tfDataplexTestTable:
///     type: gcp:bigquery:Table
///     name: tf_dataplex_test_table
///     properties:
///       datasetId: ${tfDataplexTestDataset.datasetId}
///       tableId: tf_dataplex_test_table_id__92130
///       deletionProtection: false
///       schema: |2
///             [
///             {
///               \"name\": \"name\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\"
///             },
///             {
///               \"name\": \"station_id\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The id of the bike station\"
///             },
///             {
///               \"name\": \"address\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The address of the bike station\"
///             },
///             {
///               \"name\": \"power_type\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The powert type of the bike station\"
///             },
///             {
///               \"name\": \"property_type\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The type of the property\"
///             },
///             {
///               \"name\": \"number_of_docks\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The number of docks the property have\"
///             },
///             {
///               \"name\": \"footprint_length\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The footpring lenght of the property\"
///             },
///             {
///               \"name\": \"council_district\",
///               \"type\": \"INTEGER\",
///               \"mode\": \"NULLABLE\",
///               \"description\": \"The council district the property is in\"
///             }
///             ]
///   onetimeDocumentation:
///     type: gcp:dataplex:Datascan
///     name: onetime_documentation
///     properties:
///       location: us-central1
///       dataScanId: datadocumentation-onetime
///       data:
///         resource: //bigquery.googleapis.com/projects/my-project-name/datasets/${tfDataplexTestDataset.datasetId}/tables/${tfDataplexTestTable.tableId}
///       executionSpec:
///         trigger:
///           oneTime:
///             ttlAfterScanCompletion: 120s
///       dataDocumentationSpec: {}
///       project: my-project-name
/// ```
///
/// ### Dataplex Datascan Execution Identity User Credential
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tfTestDataset = new gcp.bigquery.Dataset("tf_test_dataset", {
///     datasetId: "tf_test_ds__16199",
///     defaultTableExpirationMs: 3600000,
///     deleteContentsOnDestroy: true,
///     project: "my-project-name",
/// });
/// const tfTestTable = new gcp.bigquery.Table("tf_test_table", {
///     datasetId: tfTestDataset.datasetId,
///     tableId: "tf_test_tbl__21563",
///     deletionProtection: false,
///     project: "my-project-name",
///     schema: `    [
///       {
///         \\"name\\": \\"word\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"REQUIRED\\"
///       },
///       {
///         \\"name\\": \\"word_count\\",
///         \\"type\\": \\"INTEGER\\",
///         \\"mode\\": \\"REQUIRED\\"
///       }
///     ]
/// `,
/// });
/// const identityUserCredential = new gcp.dataplex.Datascan("identity_user_credential", {
///     location: "us-central1",
///     dataScanId: "dataplex-id-user-cred",
///     data: {
///         resource: pulumi.interpolate`//bigquery.googleapis.com/projects/my-project-name/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}`,
///     },
///     executionSpec: {
///         trigger: {
///             oneTime: {},
///         },
///     },
///     executionIdentity: {
///         userCredential: {},
///     },
///     dataProfileSpec: {},
///     project: "my-project-name",
/// }, {
///     dependsOn: [tfTestTable],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_test_dataset = gcp.bigquery.Dataset("tf_test_dataset",
///     dataset_id="tf_test_ds__16199",
///     default_table_expiration_ms=3600000,
///     delete_contents_on_destroy=True,
///     project="my-project-name")
/// tf_test_table = gcp.bigquery.Table("tf_test_table",
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="tf_test_tbl__21563",
///     deletion_protection=False,
///     project="my-project-name",
///     schema="""    [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
/// """)
/// identity_user_credential = gcp.dataplex.Datascan("identity_user_credential",
///     location="us-central1",
///     data_scan_id="dataplex-id-user-cred",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_test_dataset.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/my-project-name/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "one_time": {},
///         },
///     },
///     execution_identity={
///         "user_credential": {},
///     },
///     data_profile_spec={},
///     project="my-project-name",
///     opts = pulumi.ResourceOptions(depends_on=[tf_test_table]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tfTestDataset = new Gcp.BigQuery.Dataset("tf_test_dataset", new()
///     {
///         DatasetId = "tf_test_ds__16199",
///         DefaultTableExpirationMs = 3600000,
///         DeleteContentsOnDestroy = true,
///         Project = "my-project-name",
///     });
///
///     var tfTestTable = new Gcp.BigQuery.Table("tf_test_table", new()
///     {
///         DatasetId = tfTestDataset.DatasetId,
///         TableId = "tf_test_tbl__21563",
///         DeletionProtection = false,
///         Project = "my-project-name",
///         Schema = @"    [
///       {
///         \""name\"": \""word\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""REQUIRED\""
///       },
///       {
///         \""name\"": \""word_count\"",
///         \""type\"": \""INTEGER\"",
///         \""mode\"": \""REQUIRED\""
///       }
///     ]
/// ",
///     });
///
///     var identityUserCredential = new Gcp.DataPlex.Datascan("identity_user_credential", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataplex-id-user-cred",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///             {
///                 var datasetId = values.Item1;
///                 var tableId = values.Item2;
///                 return $"//bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OneTime = null,
///             },
///         },
///         ExecutionIdentity = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityArgs
///         {
///             UserCredential = null,
///         },
///         DataProfileSpec = null,
///         Project = "my-project-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tfTestTable,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tfTestDataset, err := bigquery.NewDataset(ctx, "tf_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_test_ds__16199"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			DeleteContentsOnDestroy:  pulumi.Bool(true),
/// 			Project:                  pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestTable, err := bigquery.NewTable(ctx, "tf_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_test_tbl__21563"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Project:            pulumi.String("my-project-name"),
/// 			Schema: pulumi.String(`    [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "identity_user_credential", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataplex-id-user-cred"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/my-project-name/datasets/%v/tables/%v", datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OneTime: &dataplex.DatascanExecutionSpecTriggerOneTimeArgs{},
/// 				},
/// 			},
/// 			ExecutionIdentity: &dataplex.DatascanExecutionIdentityArgs{
/// 				UserCredential: &dataplex.DatascanExecutionIdentityUserCredentialArgs{},
/// 			},
/// 			DataProfileSpec: &dataplex.DatascanDataProfileSpecArgs{},
/// 			Project:         pulumi.String("my-project-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tfTestTable,
/// 		}))
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
/// resource "gcp_bigquery_dataset" "tf_test_dataset" {
///   dataset_id                  = "tf_test_ds__16199"
///   default_table_expiration_ms = 3600000
///   delete_contents_on_destroy  = true
///   project                     = "my-project-name"
/// }
/// resource "gcp_bigquery_table" "tf_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_test_dataset.dataset_id
///   table_id            = "tf_test_tbl__21563"
///   deletion_protection = false
///   project             = "my-project-name"
///   schema              = "    [\n      {\n        \\\"name\\\": \\\"word\\\",\n        \\\"type\\\": \\\"STRING\\\",\n        \\\"mode\\\": \\\"REQUIRED\\\"\n      },\n      {\n        \\\"name\\\": \\\"word_count\\\",\n        \\\"type\\\": \\\"INTEGER\\\",\n        \\\"mode\\\": \\\"REQUIRED\\\"\n      }\n    ]\n"
/// }
/// resource "gcp_dataplex_datascan" "identity_user_credential" {
///   depends_on   = [gcp_bigquery_table.tf_test_table]
///   location     = "us-central1"
///   data_scan_id = "dataplex-id-user-cred"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       one_time = {}
///     }
///   }
///   execution_identity = {
///     user_credential = {}
///   }
///   data_profile_spec = {}
///   project           = "my-project-name"
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
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOneTimeArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityUserCredentialArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var tfTestDataset = new Dataset("tfTestDataset", DatasetArgs.builder()
///             .datasetId("tf_test_ds__16199")
///             .defaultTableExpirationMs(3600000)
///             .deleteContentsOnDestroy(true)
///             .project("my-project-name")
///             .build());
///
///         var tfTestTable = new Table("tfTestTable", TableArgs.builder()
///             .datasetId(tfTestDataset.datasetId())
///             .tableId("tf_test_tbl__21563")
///             .deletionProtection(false)
///             .project("my-project-name")
///             .schema("""
///     [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
///             """)
///             .build());
///
///         var identityUserCredential = new Datascan("identityUserCredential", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataplex-id-user-cred")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/my-project-name/datasets/%s/tables/%s", datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .oneTime(DatascanExecutionSpecTriggerOneTimeArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .executionIdentity(DatascanExecutionIdentityArgs.builder()
///                 .userCredential(DatascanExecutionIdentityUserCredentialArgs.builder()
///                     .build())
///                 .build())
///             .dataProfileSpec(DatascanDataProfileSpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(tfTestTable)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tfTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_test_dataset
///     properties:
///       datasetId: tf_test_ds__16199
///       defaultTableExpirationMs: 3.6e+06
///       deleteContentsOnDestroy: true
///       project: my-project-name
///   tfTestTable:
///     type: gcp:bigquery:Table
///     name: tf_test_table
///     properties:
///       datasetId: ${tfTestDataset.datasetId}
///       tableId: tf_test_tbl__21563
///       deletionProtection: false
///       project: my-project-name
///       schema: |2
///             [
///               {
///                 \"name\": \"word\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"REQUIRED\"
///               },
///               {
///                 \"name\": \"word_count\",
///                 \"type\": \"INTEGER\",
///                 \"mode\": \"REQUIRED\"
///               }
///             ]
///   identityUserCredential:
///     type: gcp:dataplex:Datascan
///     name: identity_user_credential
///     properties:
///       location: us-central1
///       dataScanId: dataplex-id-user-cred
///       data:
///         resource: //bigquery.googleapis.com/projects/my-project-name/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}
///       executionSpec:
///         trigger:
///           oneTime: {}
///       executionIdentity:
///         userCredential: {}
///       dataProfileSpec: {}
///       project: my-project-name
///     options:
///       dependsOn:
///         - ${tfTestTable}
/// ```
///
/// ### Dataplex Datascan Execution Identity Service Account
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "tf-test-sa-_25141",
///     displayName: "DataScan Service Account",
///     project: "my-project-name",
/// });
/// const dataplexSaImpersonate = new gcp.serviceaccount.IAMMember("dataplex_sa_impersonate", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountTokenCreator",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com`),
/// });
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [dataplexSaImpersonate],
/// });
/// const saBqDataViewer = new gcp.projects.IAMMember("sa_bq_data_viewer", {
///     project: "my-project-name",
///     role: "roles/bigquery.dataViewer",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const saBqJobUser = new gcp.projects.IAMMember("sa_bq_job_user", {
///     project: "my-project-name",
///     role: "roles/bigquery.jobUser",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const tfTestDataset = new gcp.bigquery.Dataset("tf_test_dataset", {
///     datasetId: "tf_test_ds__30827",
///     defaultTableExpirationMs: 3600000,
///     deleteContentsOnDestroy: true,
///     project: "my-project-name",
/// }, {
///     dependsOn: [
///         dataplexSaImpersonate,
///         saBqDataViewer,
///         saBqJobUser,
///     ],
/// });
/// const tfTestTable = new gcp.bigquery.Table("tf_test_table", {
///     datasetId: tfTestDataset.datasetId,
///     tableId: "tf_test_tbl__6529",
///     deletionProtection: false,
///     project: "my-project-name",
///     schema: `    [
///       {
///         \\"name\\": \\"word\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"REQUIRED\\"
///       },
///       {
///         \\"name\\": \\"word_count\\",
///         \\"type\\": \\"INTEGER\\",
///         \\"mode\\": \\"REQUIRED\\"
///       }
///     ]
/// `,
/// });
/// const identityServiceAccount = new gcp.dataplex.Datascan("identity_service_account", {
///     location: "us-central1",
///     dataScanId: "dataplex-id-sa",
///     data: {
///         resource: pulumi.interpolate`//bigquery.googleapis.com/projects/my-project-name/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}`,
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     executionIdentity: {
///         serviceAccount: {
///             email: sa.email,
///         },
///     },
///     dataProfileSpec: {},
///     project: "my-project-name",
/// }, {
///     dependsOn: [
///         tfTestTable,
///         wait120Seconds,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="tf-test-sa-_25141",
///     display_name="DataScan Service Account",
///     project="my-project-name")
/// dataplex_sa_impersonate = gcp.serviceaccount.IAMMember("dataplex_sa_impersonate",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountTokenCreator",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataplex.iam.gserviceaccount.com")
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[dataplex_sa_impersonate]))
/// sa_bq_data_viewer = gcp.projects.IAMMember("sa_bq_data_viewer",
///     project="my-project-name",
///     role="roles/bigquery.dataViewer",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// sa_bq_job_user = gcp.projects.IAMMember("sa_bq_job_user",
///     project="my-project-name",
///     role="roles/bigquery.jobUser",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// tf_test_dataset = gcp.bigquery.Dataset("tf_test_dataset",
///     dataset_id="tf_test_ds__30827",
///     default_table_expiration_ms=3600000,
///     delete_contents_on_destroy=True,
///     project="my-project-name",
///     opts = pulumi.ResourceOptions(depends_on=[
///             dataplex_sa_impersonate,
///             sa_bq_data_viewer,
///             sa_bq_job_user,
///         ]))
/// tf_test_table = gcp.bigquery.Table("tf_test_table",
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="tf_test_tbl__6529",
///     deletion_protection=False,
///     project="my-project-name",
///     schema="""    [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
/// """)
/// identity_service_account = gcp.dataplex.Datascan("identity_service_account",
///     location="us-central1",
///     data_scan_id="dataplex-id-sa",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_test_dataset.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/my-project-name/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     execution_identity={
///         "service_account": {
///             "email": sa.email,
///         },
///     },
///     data_profile_spec={},
///     project="my-project-name",
///     opts = pulumi.ResourceOptions(depends_on=[
///             tf_test_table,
///             wait120_seconds,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "tf-test-sa-_25141",
///         DisplayName = "DataScan Service Account",
///         Project = "my-project-name",
///     });
///
///     var dataplexSaImpersonate = new Gcp.ServiceAccount.IAMMember("dataplex_sa_impersonate", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     });
///
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataplexSaImpersonate,
///         },
///     });
///
///     var saBqDataViewer = new Gcp.Projects.IAMMember("sa_bq_data_viewer", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/bigquery.dataViewer",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var saBqJobUser = new Gcp.Projects.IAMMember("sa_bq_job_user", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/bigquery.jobUser",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var tfTestDataset = new Gcp.BigQuery.Dataset("tf_test_dataset", new()
///     {
///         DatasetId = "tf_test_ds__30827",
///         DefaultTableExpirationMs = 3600000,
///         DeleteContentsOnDestroy = true,
///         Project = "my-project-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataplexSaImpersonate,
///             saBqDataViewer,
///             saBqJobUser,
///         },
///     });
///
///     var tfTestTable = new Gcp.BigQuery.Table("tf_test_table", new()
///     {
///         DatasetId = tfTestDataset.DatasetId,
///         TableId = "tf_test_tbl__6529",
///         DeletionProtection = false,
///         Project = "my-project-name",
///         Schema = @"    [
///       {
///         \""name\"": \""word\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""REQUIRED\""
///       },
///       {
///         \""name\"": \""word_count\"",
///         \""type\"": \""INTEGER\"",
///         \""mode\"": \""REQUIRED\""
///       }
///     ]
/// ",
///     });
///
///     var identityServiceAccount = new Gcp.DataPlex.Datascan("identity_service_account", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataplex-id-sa",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///             {
///                 var datasetId = values.Item1;
///                 var tableId = values.Item2;
///                 return $"//bigquery.googleapis.com/projects/my-project-name/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         ExecutionIdentity = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityArgs
///         {
///             ServiceAccount = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityServiceAccountArgs
///             {
///                 Email = sa.Email,
///             },
///         },
///         DataProfileSpec = null,
///         Project = "my-project-name",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tfTestTable,
///             wait120Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("tf-test-sa-_25141"),
/// 			DisplayName: pulumi.String("DataScan Service Account"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataplexSaImpersonate, err := serviceaccount.NewIAMMember(ctx, "dataplex_sa_impersonate", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Member:           pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataplex.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataplexSaImpersonate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqDataViewer, err := projects.NewIAMMember(ctx, "sa_bq_data_viewer", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/bigquery.dataViewer"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqJobUser, err := projects.NewIAMMember(ctx, "sa_bq_job_user", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/bigquery.jobUser"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestDataset, err := bigquery.NewDataset(ctx, "tf_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_test_ds__30827"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			DeleteContentsOnDestroy:  pulumi.Bool(true),
/// 			Project:                  pulumi.String("my-project-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataplexSaImpersonate,
/// 			saBqDataViewer,
/// 			saBqJobUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestTable, err := bigquery.NewTable(ctx, "tf_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_test_tbl__6529"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Project:            pulumi.String("my-project-name"),
/// 			Schema: pulumi.String(`    [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "identity_service_account", &dataplex.DatascanArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			DataScanId: pulumi.String("dataplex-id-sa"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/my-project-name/datasets/%v/tables/%v", datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			ExecutionIdentity: &dataplex.DatascanExecutionIdentityArgs{
/// 				ServiceAccount: &dataplex.DatascanExecutionIdentityServiceAccountArgs{
/// 					Email: sa.Email,
/// 				},
/// 			},
/// 			DataProfileSpec: &dataplex.DatascanDataProfileSpecArgs{},
/// 			Project:         pulumi.String("my-project-name"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tfTestTable,
/// 			wait120Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "tf-test-sa-_25141"
///   display_name = "DataScan Service Account"
///   project      = "my-project-name"
/// }
/// resource "gcp_serviceaccount_iammember" "dataplex_sa_impersonate" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountTokenCreator"
///   member             ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-dataplex.iam.gserviceaccount.com"
/// }
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_serviceaccount_iammember.dataplex_sa_impersonate]
///   create_duration = "120s"
/// }
/// resource "gcp_projects_iammember" "sa_bq_data_viewer" {
///   project = "my-project-name"
///   role    = "roles/bigquery.dataViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_projects_iammember" "sa_bq_job_user" {
///   project = "my-project-name"
///   role    = "roles/bigquery.jobUser"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_bigquery_dataset" "tf_test_dataset" {
///   depends_on                  = [gcp_serviceaccount_iammember.dataplex_sa_impersonate, gcp_projects_iammember.sa_bq_data_viewer, gcp_projects_iammember.sa_bq_job_user]
///   dataset_id                  = "tf_test_ds__30827"
///   default_table_expiration_ms = 3600000
///   delete_contents_on_destroy  = true
///   project                     = "my-project-name"
/// }
/// resource "gcp_bigquery_table" "tf_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_test_dataset.dataset_id
///   table_id            = "tf_test_tbl__6529"
///   deletion_protection = false
///   project             = "my-project-name"
///   schema              = "    [\n      {\n        \\\"name\\\": \\\"word\\\",\n        \\\"type\\\": \\\"STRING\\\",\n        \\\"mode\\\": \\\"REQUIRED\\\"\n      },\n      {\n        \\\"name\\\": \\\"word_count\\\",\n        \\\"type\\\": \\\"INTEGER\\\",\n        \\\"mode\\\": \\\"REQUIRED\\\"\n      }\n    ]\n"
/// }
/// resource "gcp_dataplex_datascan" "identity_service_account" {
///   depends_on   = [gcp_bigquery_table.tf_test_table, time_sleep.wait_120_seconds]
///   location     = "us-central1"
///   data_scan_id = "dataplex-id-sa"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/my-project-name/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   execution_identity = {
///     service_account = {
///       email = gcp_serviceaccount_account.sa.email
///     }
///   }
///   data_profile_spec = {}
///   project           = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityServiceAccountArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataProfileSpecArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("tf-test-sa-_25141")
///             .displayName("DataScan Service Account")
///             .project("my-project-name")
///             .build());
///
///         var dataplexSaImpersonate = new com.pulumi.gcp.serviceaccount.IAMMember("dataplexSaImpersonate", com.pulumi.gcp.serviceaccount.IAMMemberArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountTokenCreator")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataplex.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(dataplexSaImpersonate)
///                 .build());
///
///         var saBqDataViewer = new com.pulumi.gcp.projects.IAMMember("saBqDataViewer", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/bigquery.dataViewer")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var saBqJobUser = new com.pulumi.gcp.projects.IAMMember("saBqJobUser", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/bigquery.jobUser")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var tfTestDataset = new Dataset("tfTestDataset", DatasetArgs.builder()
///             .datasetId("tf_test_ds__30827")
///             .defaultTableExpirationMs(3600000)
///             .deleteContentsOnDestroy(true)
///             .project("my-project-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     dataplexSaImpersonate,
///                     saBqDataViewer,
///                     saBqJobUser)
///                 .build());
///
///         var tfTestTable = new Table("tfTestTable", TableArgs.builder()
///             .datasetId(tfTestDataset.datasetId())
///             .tableId("tf_test_tbl__6529")
///             .deletionProtection(false)
///             .project("my-project-name")
///             .schema("""
///     [
///       {
///         \"name\": \"word\",
///         \"type\": \"STRING\",
///         \"mode\": \"REQUIRED\"
///       },
///       {
///         \"name\": \"word_count\",
///         \"type\": \"INTEGER\",
///         \"mode\": \"REQUIRED\"
///       }
///     ]
///             """)
///             .build());
///
///         var identityServiceAccount = new Datascan("identityServiceAccount", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataplex-id-sa")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/my-project-name/datasets/%s/tables/%s", datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .executionIdentity(DatascanExecutionIdentityArgs.builder()
///                 .serviceAccount(DatascanExecutionIdentityServiceAccountArgs.builder()
///                     .email(sa.email())
///                     .build())
///                 .build())
///             .dataProfileSpec(DatascanDataProfileSpecArgs.builder()
///                 .build())
///             .project("my-project-name")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     tfTestTable,
///                     wait120Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: tf-test-sa-_25141
///       displayName: DataScan Service Account
///       project: my-project-name
///   dataplexSaImpersonate:
///     type: gcp:serviceaccount:IAMMember
///     name: dataplex_sa_impersonate
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountTokenCreator
///       member: serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${dataplexSaImpersonate}
///   saBqDataViewer:
///     type: gcp:projects:IAMMember
///     name: sa_bq_data_viewer
///     properties:
///       project: my-project-name
///       role: roles/bigquery.dataViewer
///       member: serviceAccount:${sa.email}
///   saBqJobUser:
///     type: gcp:projects:IAMMember
///     name: sa_bq_job_user
///     properties:
///       project: my-project-name
///       role: roles/bigquery.jobUser
///       member: serviceAccount:${sa.email}
///   tfTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_test_dataset
///     properties:
///       datasetId: tf_test_ds__30827
///       defaultTableExpirationMs: 3.6e+06
///       deleteContentsOnDestroy: true
///       project: my-project-name
///     options:
///       dependsOn:
///         - ${dataplexSaImpersonate}
///         - ${saBqDataViewer}
///         - ${saBqJobUser}
///   tfTestTable:
///     type: gcp:bigquery:Table
///     name: tf_test_table
///     properties:
///       datasetId: ${tfTestDataset.datasetId}
///       tableId: tf_test_tbl__6529
///       deletionProtection: false
///       project: my-project-name
///       schema: |2
///             [
///               {
///                 \"name\": \"word\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"REQUIRED\"
///               },
///               {
///                 \"name\": \"word_count\",
///                 \"type\": \"INTEGER\",
///                 \"mode\": \"REQUIRED\"
///               }
///             ]
///   identityServiceAccount:
///     type: gcp:dataplex:Datascan
///     name: identity_service_account
///     properties:
///       location: us-central1
///       dataScanId: dataplex-id-sa
///       data:
///         resource: //bigquery.googleapis.com/projects/my-project-name/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}
///       executionSpec:
///         trigger:
///           onDemand: {}
///       executionIdentity:
///         serviceAccount:
///           email: ${sa.email}
///       dataProfileSpec: {}
///       project: my-project-name
///     options:
///       dependsOn:
///         - ${tfTestTable}
///         - ${wait120Seconds}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
/// ### Dataplex Datascan Quality Reusable Rules Catalog Based
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "tf-test-sa-_16178",
///     displayName: "DataScan Service Account",
///     project: "my-project-name",
/// });
/// const dataplexSaImpersonate = new gcp.serviceaccount.IAMMember("dataplex_sa_impersonate", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountTokenCreator",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com`),
/// });
/// const saBqDataViewer = new gcp.projects.IAMMember("sa_bq_data_viewer", {
///     project: "my-project-name",
///     role: "roles/bigquery.dataViewer",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const saBqJobUser = new gcp.projects.IAMMember("sa_bq_job_user", {
///     project: "my-project-name",
///     role: "roles/bigquery.jobUser",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const tfTestDataset = new gcp.bigquery.Dataset("tf_test_dataset", {
///     datasetId: "tf_test_dataset_id__26317",
///     defaultTableExpirationMs: 3600000,
///     deleteContentsOnDestroy: true,
///     project: "my-project-name",
///     location: "us-central1",
/// }, {
///     dependsOn: [
///         dataplexSaImpersonate,
///         saBqDataViewer,
///         saBqJobUser,
///     ],
/// });
/// const tfTestTable = new gcp.bigquery.Table("tf_test_table", {
///     datasetId: tfTestDataset.datasetId,
///     tableId: "tf_test_table_id__4866",
///     deletionProtection: false,
///     project: "my-project-name",
///     schema: `    [
///     {
///       "name": "name",
///       "type": "STRING",
///       "mode": "NULLABLE"
///     }
///     ]
/// `,
/// });
/// const testGroup = new gcp.dataplex.EntryGroup("test_group", {
///     location: "us-central1",
///     entryGroupId: "test-group-_12618",
///     project: "my-project-name",
/// });
/// const testEntry = new gcp.dataplex.Entry("test_entry", {
///     location: "us-central1",
///     entryGroupId: testGroup.entryGroupId,
///     entryId: "test-entry-_32270",
///     entryType: "projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///     project: project.then(project => project.number),
///     aspects: [{
///         aspectKey: "655216118709.global.data-quality-rule-template",
///         aspect: {
///             data: JSON.stringify({
///                 dimension: "VALIDITY",
///                 sqlCollection: [{
///                     query: "SELECT * FROM ${param(table_name)} WHERE ${param(column_name)} IS NULL",
///                 }],
///                 inputParameters: {
///                     table_name: {
///                         description: "Table Name",
///                     },
///                     column_name: {
///                         description: "Column Name",
///                     },
///                 },
///             }),
///         },
///     }],
/// });
/// const waitForBqSync = new time.Sleep("wait_for_bq_sync", {createDuration: "300s"}, {
///     dependsOn: [tfTestTable],
/// });
/// const bqTableEntry = new gcp.dataplex.Entry("bq_table_entry", {
///     entryGroupId: "@bigquery",
///     project: project.then(project => project.projectId),
///     location: "us-central1",
///     entryId: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => `bigquery.googleapis.com/projects/${project.projectId}/datasets/${datasetId}/tables/${tableId}`),
///     entryType: "projects/655216118709/locations/global/entryTypes/bigquery-table",
///     fullyQualifiedName: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => `bigquery:${project.projectId}.${datasetId}.${tableId}`),
///     parentEntry: pulumi.all([project, tfTestDataset.datasetId]).apply(([project, datasetId]) => `projects/${project.projectId}/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/${project.projectId}/datasets/${datasetId}`),
///     aspects: [{
///         aspectKey: "655216118709.global.data-rules@Schema.name",
///         aspect: {
///             data: pulumi.jsonStringify({
///                 rules: [
///                     {
///                         name: "rule-to-filter-out",
///                         dimension: "VALIDITY",
///                         type: "TEMPLATE_REFERENCE",
///                         templateReference: {
///                             name: testEntry.name,
///                             values: {
///                                 table_name: {
///                                     value: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => ``${project.projectId}.${datasetId}.${tableId}``),
///                                 },
///                                 column_name: {
///                                     value: "name",
///                                 },
///                             },
///                         },
///                         attributes: {
///                             priority: "low",
///                         },
///                     },
///                     {
///                         name: "non-null-check-name-manual",
///                         dimension: "VALIDITY",
///                         type: "TEMPLATE_REFERENCE",
///                         templateReference: {
///                             name: testEntry.name,
///                             values: {
///                                 table_name: {
///                                     value: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => ``${project.projectId}.${datasetId}.${tableId}``),
///                                 },
///                                 column_name: {
///                                     value: "name",
///                                 },
///                             },
///                         },
///                         attributes: {
///                             priority: "high",
///                         },
///                     },
///                 ],
///             }),
///         },
///     }],
/// }, {
///     dependsOn: [
///         waitForBqSync,
///         testEntry,
///     ],
/// });
/// const waitForAspectPropagation = new time.Sleep("wait_for_aspect_propagation", {createDuration: "300s"}, {
///     dependsOn: [bqTableEntry],
/// });
/// const reusableRulesCatalogBased = new gcp.dataplex.Datascan("reusable_rules_catalog_based", {
///     location: "us-central1",
///     dataScanId: "dataquality-catalog",
///     displayName: "Catalog Datascan Quality",
///     description: "Example resource - Catalog Datascan Quality",
///     data: {
///         resource: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => `//bigquery.googleapis.com/projects/${project.projectId}/datasets/${datasetId}/tables/${tableId}`),
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     executionIdentity: {
///         serviceAccount: {
///             email: sa.email,
///         },
///     },
///     dataQualitySpec: {
///         enableCatalogBasedRules: true,
///         filter: "attributes.priority = \"high\"",
///     },
///     project: project.then(project => project.projectId),
/// }, {
///     dependsOn: [waitForAspectPropagation],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="tf-test-sa-_16178",
///     display_name="DataScan Service Account",
///     project="my-project-name")
/// dataplex_sa_impersonate = gcp.serviceaccount.IAMMember("dataplex_sa_impersonate",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountTokenCreator",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataplex.iam.gserviceaccount.com")
/// sa_bq_data_viewer = gcp.projects.IAMMember("sa_bq_data_viewer",
///     project="my-project-name",
///     role="roles/bigquery.dataViewer",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// sa_bq_job_user = gcp.projects.IAMMember("sa_bq_job_user",
///     project="my-project-name",
///     role="roles/bigquery.jobUser",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// tf_test_dataset = gcp.bigquery.Dataset("tf_test_dataset",
///     dataset_id="tf_test_dataset_id__26317",
///     default_table_expiration_ms=3600000,
///     delete_contents_on_destroy=True,
///     project="my-project-name",
///     location="us-central1",
///     opts = pulumi.ResourceOptions(depends_on=[
///             dataplex_sa_impersonate,
///             sa_bq_data_viewer,
///             sa_bq_job_user,
///         ]))
/// tf_test_table = gcp.bigquery.Table("tf_test_table",
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="tf_test_table_id__4866",
///     deletion_protection=False,
///     project="my-project-name",
///     schema="""    [
///     {
///       "name": "name",
///       "type": "STRING",
///       "mode": "NULLABLE"
///     }
///     ]
/// """)
/// test_group = gcp.dataplex.EntryGroup("test_group",
///     location="us-central1",
///     entry_group_id="test-group-_12618",
///     project="my-project-name")
/// test_entry = gcp.dataplex.Entry("test_entry",
///     location="us-central1",
///     entry_group_id=test_group.entry_group_id,
///     entry_id="test-entry-_32270",
///     entry_type="projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///     project=project.number,
///     aspects=[{
///         "aspect_key": "655216118709.global.data-quality-rule-template",
///         "aspect": {
///             "data": json.dumps({
///                 "dimension": "VALIDITY",
///                 "sqlCollection": [{
///                     "query": "SELECT * FROM ${param(table_name)} WHERE ${param(column_name)} IS NULL",
///                 }],
///                 "inputParameters": {
///                     "table_name": {
///                         "description": "Table Name",
///                     },
///                     "column_name": {
///                         "description": "Column Name",
///                     },
///                 },
///             }),
///         },
///     }])
/// wait_for_bq_sync = time.Sleep("wait_for_bq_sync", create_duration="300s",
/// opts = pulumi.ResourceOptions(depends_on=[tf_test_table]))
/// bq_table_entry = gcp.dataplex.Entry("bq_table_entry",
///     entry_group_id="@bigquery",
///     project=project.project_id,
///     location="us-central1",
///     entry_id=pulumi.Output.all(
///         dataset_id=tf_test_dataset.dataset_id,
///         table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"bigquery.googleapis.com/projects/{project.project_id}/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     entry_type="projects/655216118709/locations/global/entryTypes/bigquery-table",
///     fully_qualified_name=pulumi.Output.all(
///         dataset_id=tf_test_dataset.dataset_id,
///         table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"bigquery:{project.project_id}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///     parent_entry=tf_test_dataset.dataset_id.apply(lambda dataset_id: f"projects/{project.project_id}/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/{project.project_id}/datasets/{dataset_id}"),
///     aspects=[{
///         "aspect_key": "655216118709.global.data-rules@Schema.name",
///         "aspect": {
///             "data": pulumi.Output.json_dumps({
///                 "rules": [
///                     {
///                         "name": "rule-to-filter-out",
///                         "dimension": "VALIDITY",
///                         "type": "TEMPLATE_REFERENCE",
///                         "templateReference": {
///                             "name": test_entry.name,
///                             "values": {
///                                 "table_name": {
///                                     "value": pulumi.Output.all(
///                                         dataset_id=tf_test_dataset.dataset_id,
///                                         table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"`{project.project_id}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}`")
/// ,
///                                 },
///                                 "column_name": {
///                                     "value": "name",
///                                 },
///                             },
///                         },
///                         "attributes": {
///                             "priority": "low",
///                         },
///                     },
///                     {
///                         "name": "non-null-check-name-manual",
///                         "dimension": "VALIDITY",
///                         "type": "TEMPLATE_REFERENCE",
///                         "templateReference": {
///                             "name": test_entry.name,
///                             "values": {
///                                 "table_name": {
///                                     "value": pulumi.Output.all(
///                                         dataset_id=tf_test_dataset.dataset_id,
///                                         table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"`{project.project_id}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}`")
/// ,
///                                 },
///                                 "column_name": {
///                                     "value": "name",
///                                 },
///                             },
///                         },
///                         "attributes": {
///                             "priority": "high",
///                         },
///                     },
///                 ],
///             }),
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[
///             wait_for_bq_sync,
///             test_entry,
///         ]))
/// wait_for_aspect_propagation = time.Sleep("wait_for_aspect_propagation", create_duration="300s",
/// opts = pulumi.ResourceOptions(depends_on=[bq_table_entry]))
/// reusable_rules_catalog_based = gcp.dataplex.Datascan("reusable_rules_catalog_based",
///     location="us-central1",
///     data_scan_id="dataquality-catalog",
///     display_name="Catalog Datascan Quality",
///     description="Example resource - Catalog Datascan Quality",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_test_dataset.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/{project.project_id}/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     execution_identity={
///         "service_account": {
///             "email": sa.email,
///         },
///     },
///     data_quality_spec={
///         "enable_catalog_based_rules": True,
///         "filter": "attributes.priority = \"high\"",
///     },
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_aspect_propagation]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "tf-test-sa-_16178",
///         DisplayName = "DataScan Service Account",
///         Project = "my-project-name",
///     });
///
///     var dataplexSaImpersonate = new Gcp.ServiceAccount.IAMMember("dataplex_sa_impersonate", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     });
///
///     var saBqDataViewer = new Gcp.Projects.IAMMember("sa_bq_data_viewer", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/bigquery.dataViewer",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var saBqJobUser = new Gcp.Projects.IAMMember("sa_bq_job_user", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/bigquery.jobUser",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var tfTestDataset = new Gcp.BigQuery.Dataset("tf_test_dataset", new()
///     {
///         DatasetId = "tf_test_dataset_id__26317",
///         DefaultTableExpirationMs = 3600000,
///         DeleteContentsOnDestroy = true,
///         Project = "my-project-name",
///         Location = "us-central1",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataplexSaImpersonate,
///             saBqDataViewer,
///             saBqJobUser,
///         },
///     });
///
///     var tfTestTable = new Gcp.BigQuery.Table("tf_test_table", new()
///     {
///         DatasetId = tfTestDataset.DatasetId,
///         TableId = "tf_test_table_id__4866",
///         DeletionProtection = false,
///         Project = "my-project-name",
///         Schema = @"    [
///     {
///       ""name"": ""name"",
///       ""type"": ""STRING"",
///       ""mode"": ""NULLABLE""
///     }
///     ]
/// ",
///     });
///
///     var testGroup = new Gcp.DataPlex.EntryGroup("test_group", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = "test-group-_12618",
///         Project = "my-project-name",
///     });
///
///     var testEntry = new Gcp.DataPlex.Entry("test_entry", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = testGroup.EntryGroupId,
///         EntryId = "test-entry-_32270",
///         EntryType = "projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///         Project = project.Apply(getProjectResult => getProjectResult.Number),
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "655216118709.global.data-quality-rule-template",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["dimension"] = "VALIDITY",
///                         ["sqlCollection"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["query"] = "SELECT * FROM ${param(table_name)} WHERE ${param(column_name)} IS NULL",
///                             },
///                         },
///                         ["inputParameters"] = new Dictionary<string, object?>
///                         {
///                             ["table_name"] = new Dictionary<string, object?>
///                             {
///                                 ["description"] = "Table Name",
///                             },
///                             ["column_name"] = new Dictionary<string, object?>
///                             {
///                                 ["description"] = "Column Name",
///                             },
///                         },
///                     }),
///                 },
///             },
///         },
///     });
///
///     var waitForBqSync = new Time.Sleep("wait_for_bq_sync", new()
///     {
///         CreateDuration = "300s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tfTestTable,
///         },
///     });
///
///     var bqTableEntry = new Gcp.DataPlex.Entry("bq_table_entry", new()
///     {
///         EntryGroupId = "@bigquery",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Location = "us-central1",
///         EntryId = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///         {
///             var project = values.Item1;
///             var datasetId = values.Item2;
///             var tableId = values.Item3;
///             return $"bigquery.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/datasets/{datasetId}/tables/{tableId}";
///         }),
///         EntryType = "projects/655216118709/locations/global/entryTypes/bigquery-table",
///         FullyQualifiedName = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///         {
///             var project = values.Item1;
///             var datasetId = values.Item2;
///             var tableId = values.Item3;
///             return $"bigquery:{project.Apply(getProjectResult => getProjectResult.ProjectId)}.{datasetId}.{tableId}";
///         }),
///         ParentEntry = Output.Tuple(project, tfTestDataset.DatasetId).Apply(values =>
///         {
///             var project = values.Item1;
///             var datasetId = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/datasets/{datasetId}";
///         }),
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "655216118709.global.data-rules@Schema.name",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///                     {
///                         ["rules"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["name"] = "rule-to-filter-out",
///                                 ["dimension"] = "VALIDITY",
///                                 ["type"] = "TEMPLATE_REFERENCE",
///                                 ["templateReference"] = new Dictionary<string, object?>
///                                 {
///                                     ["name"] = testEntry.Name,
///                                     ["values"] = new Dictionary<string, object?>
///                                     {
///                                         ["table_name"] = new Dictionary<string, object?>
///                                         {
///                                             ["value"] = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///                                             {
///                                                 var project = values.Item1;
///                                                 var datasetId = values.Item2;
///                                                 var tableId = values.Item3;
///                                                 return $"`{project.Apply(getProjectResult => getProjectResult.ProjectId)}.{datasetId}.{tableId}`";
///                                             }),
///                                         },
///                                         ["column_name"] = new Dictionary<string, object?>
///                                         {
///                                             ["value"] = "name",
///                                         },
///                                     },
///                                 },
///                                 ["attributes"] = new Dictionary<string, object?>
///                                 {
///                                     ["priority"] = "low",
///                                 },
///                             },
///                             new Dictionary<string, object?>
///                             {
///                                 ["name"] = "non-null-check-name-manual",
///                                 ["dimension"] = "VALIDITY",
///                                 ["type"] = "TEMPLATE_REFERENCE",
///                                 ["templateReference"] = new Dictionary<string, object?>
///                                 {
///                                     ["name"] = testEntry.Name,
///                                     ["values"] = new Dictionary<string, object?>
///                                     {
///                                         ["table_name"] = new Dictionary<string, object?>
///                                         {
///                                             ["value"] = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///                                             {
///                                                 var project = values.Item1;
///                                                 var datasetId = values.Item2;
///                                                 var tableId = values.Item3;
///                                                 return $"`{project.Apply(getProjectResult => getProjectResult.ProjectId)}.{datasetId}.{tableId}`";
///                                             }),
///                                         },
///                                         ["column_name"] = new Dictionary<string, object?>
///                                         {
///                                             ["value"] = "name",
///                                         },
///                                     },
///                                 },
///                                 ["attributes"] = new Dictionary<string, object?>
///                                 {
///                                     ["priority"] = "high",
///                                 },
///                             },
///                         },
///                     })),
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForBqSync,
///             testEntry,
///         },
///     });
///
///     var waitForAspectPropagation = new Time.Sleep("wait_for_aspect_propagation", new()
///     {
///         CreateDuration = "300s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bqTableEntry,
///         },
///     });
///
///     var reusableRulesCatalogBased = new Gcp.DataPlex.Datascan("reusable_rules_catalog_based", new()
///     {
///         Location = "us-central1",
///         DataScanId = "dataquality-catalog",
///         DisplayName = "Catalog Datascan Quality",
///         Description = "Example resource - Catalog Datascan Quality",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"//bigquery.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         ExecutionIdentity = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityArgs
///         {
///             ServiceAccount = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityServiceAccountArgs
///             {
///                 Email = sa.Email,
///             },
///         },
///         DataQualitySpec = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecArgs
///         {
///             EnableCatalogBasedRules = true,
///             Filter = "attributes.priority = \"high\"",
///         },
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForAspectPropagation,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("tf-test-sa-_16178"),
/// 			DisplayName: pulumi.String("DataScan Service Account"),
/// 			Project:     pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataplexSaImpersonate, err := serviceaccount.NewIAMMember(ctx, "dataplex_sa_impersonate", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Member:           pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataplex.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqDataViewer, err := projects.NewIAMMember(ctx, "sa_bq_data_viewer", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/bigquery.dataViewer"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqJobUser, err := projects.NewIAMMember(ctx, "sa_bq_job_user", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/bigquery.jobUser"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestDataset, err := bigquery.NewDataset(ctx, "tf_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_test_dataset_id__26317"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			DeleteContentsOnDestroy:  pulumi.Bool(true),
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Location:                 pulumi.String("us-central1"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataplexSaImpersonate,
/// 			saBqDataViewer,
/// 			saBqJobUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestTable, err := bigquery.NewTable(ctx, "tf_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_test_table_id__4866"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Project:            pulumi.String("my-project-name"),
/// 			Schema: pulumi.String(`    [
///     {
///       "name": "name",
///       "type": "STRING",
///       "mode": "NULLABLE"
///     }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testGroup, err := dataplex.NewEntryGroup(ctx, "test_group", &dataplex.EntryGroupArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: pulumi.String("test-group-_12618"),
/// 			Project:      pulumi.String("my-project-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"dimension": "VALIDITY",
/// 			"sqlCollection": []map[string]string{
/// 				{
/// 					"query": "SELECT * FROM ${param(table_name)} WHERE ${param(column_name)} IS NULL",
/// 				},
/// 			},
/// 			"inputParameters": map[string]map[string]string{
/// 				"table_name": map[string]string{
/// 					"description": "Table Name",
/// 				},
/// 				"column_name": map[string]string{
/// 					"description": "Column Name",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		testEntry, err := dataplex.NewEntry(ctx, "test_entry", &dataplex.EntryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: testGroup.EntryGroupId,
/// 			EntryId:      pulumi.String("test-entry-_32270"),
/// 			EntryType:    pulumi.String("projects/655216118709/locations/global/entryTypes/data-quality-rule-template"),
/// 			Project:      pulumi.String(project.Number),
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("655216118709.global.data-quality-rule-template"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String(json0),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForBqSync, err := time.NewSleep(ctx, "wait_for_bq_sync", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("300s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tfTestTable,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTableEntry, err := dataplex.NewEntry(ctx, "bq_table_entry", &dataplex.EntryArgs{
/// 			EntryGroupId: pulumi.String("@bigquery"),
/// 			Project:      pulumi.String(project.ProjectId),
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryId: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 				datasetId := _args[0].(string)
/// 				tableId := _args[1].(string)
/// 				return fmt.Sprintf("bigquery.googleapis.com/projects/%v/datasets/%v/tables/%v", project.ProjectId, datasetId, tableId), nil
/// 			}).(pulumi.StringOutput),
/// 			EntryType: pulumi.String("projects/655216118709/locations/global/entryTypes/bigquery-table"),
/// 			FullyQualifiedName: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 				datasetId := _args[0].(string)
/// 				tableId := _args[1].(string)
/// 				return fmt.Sprintf("bigquery:%v.%v.%v", project.ProjectId, datasetId, tableId), nil
/// 			}).(pulumi.StringOutput),
/// 			ParentEntry: tfTestDataset.DatasetId.ApplyT(func(datasetId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/%v/datasets/%v", project.ProjectId, project.ProjectId, datasetId), nil
/// 			}).(pulumi.StringOutput),
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("655216118709.global.data-rules@Schema.name"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.All(testEntry.Name, tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 							name := _args[0].(string)
/// 							datasetId := _args[1].(string)
/// 							tableId := _args[2].(string)
/// 							var _zero string
/// 							tmpJSON1, err := json.Marshal(map[string][]map[string]interface{}{
/// 								"rules": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"name":      "rule-to-filter-out",
/// 										"dimension": "VALIDITY",
/// 										"type":      "TEMPLATE_REFERENCE",
/// 										"templateReference": map[string]interface{}{
/// 											"name": name,
/// 											"values": map[string]map[string]string{
/// 												"table_name": map[string]string{
/// 													"value": fmt.Sprintf("`%v.%v.%v`", project.ProjectId, datasetId, tableId),
/// 												},
/// 												"column_name": map[string]string{
/// 													"value": "name",
/// 												},
/// 											},
/// 										},
/// 										"attributes": map[string]string{
/// 											"priority": "low",
/// 										},
/// 									},
/// 									map[string]interface{}{
/// 										"name":      "non-null-check-name-manual",
/// 										"dimension": "VALIDITY",
/// 										"type":      "TEMPLATE_REFERENCE",
/// 										"templateReference": map[string]interface{}{
/// 											"name": name,
/// 											"values": map[string]map[string]string{
/// 												"table_name": map[string]string{
/// 													"value": fmt.Sprintf("`%v.%v.%v`", project.ProjectId, datasetId, tableId),
/// 												},
/// 												"column_name": map[string]string{
/// 													"value": "name",
/// 												},
/// 											},
/// 										},
/// 										"attributes": map[string]string{
/// 											"priority": "high",
/// 										},
/// 									},
/// 								},
/// 							})
/// 							if err != nil {
/// 								return _zero, err
/// 							}
/// 							json1 := string(tmpJSON1)
/// 							return json1, nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForBqSync,
/// 			testEntry,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForAspectPropagation, err := time.NewSleep(ctx, "wait_for_aspect_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("300s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bqTableEntry,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "reusable_rules_catalog_based", &dataplex.DatascanArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DataScanId:  pulumi.String("dataquality-catalog"),
/// 			DisplayName: pulumi.String("Catalog Datascan Quality"),
/// 			Description: pulumi.String("Example resource - Catalog Datascan Quality"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/%v/datasets/%v/tables/%v", project.ProjectId, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			ExecutionIdentity: &dataplex.DatascanExecutionIdentityArgs{
/// 				ServiceAccount: &dataplex.DatascanExecutionIdentityServiceAccountArgs{
/// 					Email: sa.Email,
/// 				},
/// 			},
/// 			DataQualitySpec: &dataplex.DatascanDataQualitySpecArgs{
/// 				EnableCatalogBasedRules: pulumi.Bool(true),
/// 				Filter:                  pulumi.String("attributes.priority = \"high\""),
/// 			},
/// 			Project: pulumi.String(project.ProjectId),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForAspectPropagation,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "tf-test-sa-_16178"
///   display_name = "DataScan Service Account"
///   project      = "my-project-name"
/// }
/// resource "gcp_serviceaccount_iammember" "dataplex_sa_impersonate" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountTokenCreator"
///   member             ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-dataplex.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_iammember" "sa_bq_data_viewer" {
///   project = "my-project-name"
///   role    = "roles/bigquery.dataViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_projects_iammember" "sa_bq_job_user" {
///   project = "my-project-name"
///   role    = "roles/bigquery.jobUser"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_bigquery_dataset" "tf_test_dataset" {
///   depends_on                  = [gcp_serviceaccount_iammember.dataplex_sa_impersonate, gcp_projects_iammember.sa_bq_data_viewer, gcp_projects_iammember.sa_bq_job_user]
///   dataset_id                  = "tf_test_dataset_id__26317"
///   default_table_expiration_ms = 3600000
///   delete_contents_on_destroy  = true
///   project                     = "my-project-name"
///   location                    = "us-central1"
/// }
/// resource "gcp_bigquery_table" "tf_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_test_dataset.dataset_id
///   table_id            = "tf_test_table_id__4866"
///   deletion_protection = false
///   project             = "my-project-name"
///   schema              = "    [\n    {\n      \"name\": \"name\",\n      \"type\": \"STRING\",\n      \"mode\": \"NULLABLE\"\n    }\n    ]\n"
/// }
/// resource "gcp_dataplex_entrygroup" "test_group" {
///   location       = "us-central1"
///   entry_group_id = "test-group-_12618"
///   project        = "my-project-name"
/// }
/// resource "gcp_dataplex_entry" "test_entry" {
///   location       = "us-central1"
///   entry_group_id = gcp_dataplex_entrygroup.test_group.entry_group_id
///   entry_id       = "test-entry-_32270"
///   entry_type     = "projects/655216118709/locations/global/entryTypes/data-quality-rule-template"
///   project        = data.gcp_organizations_getproject.project.number
///   aspects {
///     aspect_key = "655216118709.global.data-quality-rule-template"
///     aspect = {
///       data = jsonencode({
///         "dimension" = "VALIDITY"
///         "sqlCollection" = [{
///           "query" = "SELECT * FROM $${param(table_name)} WHERE $${param(column_name)} IS NULL"
///         }]
///         "inputParameters" = {
///           "table_name" = {
///             "description" = "Table Name"
///           }
///           "column_name" = {
///             "description" = "Column Name"
///           }
///         }
///       })
///     }
///   }
/// }
/// resource "time_sleep" "wait_for_bq_sync" {
///   depends_on      = [gcp_bigquery_table.tf_test_table]
///   create_duration = "300s"
/// }
/// resource "gcp_dataplex_entry" "bq_table_entry" {
///   depends_on           = [time_sleep.wait_for_bq_sync, gcp_dataplex_entry.test_entry]
///   entry_group_id       = "@bigquery"
///   project              = data.gcp_organizations_getproject.project.project_id
///   location             = "us-central1"
///   entry_id             ="bigquery.googleapis.com/projects/${data.gcp_organizations_getproject.project.project_id}/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_test_table.table_id}"
///   entry_type           = "projects/655216118709/locations/global/entryTypes/bigquery-table"
///   fully_qualified_name ="bigquery:${data.gcp_organizations_getproject.project.project_id}.${gcp_bigquery_dataset.tf_test_dataset.dataset_id}.${gcp_bigquery_table.tf_test_table.table_id}"
///   parent_entry         ="projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/${data.gcp_organizations_getproject.project.project_id}/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}"
///   aspects {
///     aspect_key = "655216118709.global.data-rules@Schema.name"
///     aspect = {
///       data = jsonencode({
///         "rules" = [{
///           "name"      = "rule-to-filter-out"
///           "dimension" = "VALIDITY"
///           "type"      = "TEMPLATE_REFERENCE"
///           "templateReference" = {
///             "name" = gcp_dataplex_entry.test_entry.name
///             "values" = {
///               "table_name" = {
///                 "value" ="`${data.gcp_organizations_getproject.project.project_id}.${gcp_bigquery_dataset.tf_test_dataset.dataset_id}.${gcp_bigquery_table.tf_test_table.table_id}`"
///               }
///               "column_name" = {
///                 "value" = "name"
///               }
///             }
///           }
///           "attributes" = {
///             "priority" = "low"
///           }
///           }, {
///           "name"      = "non-null-check-name-manual"
///           "dimension" = "VALIDITY"
///           "type"      = "TEMPLATE_REFERENCE"
///           "templateReference" = {
///             "name" = gcp_dataplex_entry.test_entry.name
///             "values" = {
///               "table_name" = {
///                 "value" ="`${data.gcp_organizations_getproject.project.project_id}.${gcp_bigquery_dataset.tf_test_dataset.dataset_id}.${gcp_bigquery_table.tf_test_table.table_id}`"
///               }
///               "column_name" = {
///                 "value" = "name"
///               }
///             }
///           }
///           "attributes" = {
///             "priority" = "high"
///           }
///         }]
///       })
///     }
///   }
/// }
/// resource "time_sleep" "wait_for_aspect_propagation" {
///   depends_on      = [gcp_dataplex_entry.bq_table_entry]
///   create_duration = "300s"
/// }
/// resource "gcp_dataplex_datascan" "reusable_rules_catalog_based" {
///   depends_on   = [time_sleep.wait_for_aspect_propagation]
///   location     = "us-central1"
///   data_scan_id = "dataquality-catalog"
///   display_name = "Catalog Datascan Quality"
///   description  = "Example resource - Catalog Datascan Quality"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/${data.gcp_organizations_getproject.project.project_id}/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   execution_identity = {
///     service_account = {
///       email = gcp_serviceaccount_account.sa.email
///     }
///   }
///   data_quality_spec = {
///     enable_catalog_based_rules = true
///     filter                     = "attributes.priority = \"high\""
///   }
///   project = data.gcp_organizations_getproject.project.project_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectAspectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityServiceAccountArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("tf-test-sa-_16178")
///             .displayName("DataScan Service Account")
///             .project("my-project-name")
///             .build());
///
///         var dataplexSaImpersonate = new com.pulumi.gcp.serviceaccount.IAMMember("dataplexSaImpersonate", com.pulumi.gcp.serviceaccount.IAMMemberArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountTokenCreator")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataplex.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var saBqDataViewer = new com.pulumi.gcp.projects.IAMMember("saBqDataViewer", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/bigquery.dataViewer")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var saBqJobUser = new com.pulumi.gcp.projects.IAMMember("saBqJobUser", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/bigquery.jobUser")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var tfTestDataset = new Dataset("tfTestDataset", DatasetArgs.builder()
///             .datasetId("tf_test_dataset_id__26317")
///             .defaultTableExpirationMs(3600000)
///             .deleteContentsOnDestroy(true)
///             .project("my-project-name")
///             .location("us-central1")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     dataplexSaImpersonate,
///                     saBqDataViewer,
///                     saBqJobUser)
///                 .build());
///
///         var tfTestTable = new Table("tfTestTable", TableArgs.builder()
///             .datasetId(tfTestDataset.datasetId())
///             .tableId("tf_test_table_id__4866")
///             .deletionProtection(false)
///             .project("my-project-name")
///             .schema("""
///     [
///     {
///       "name": "name",
///       "type": "STRING",
///       "mode": "NULLABLE"
///     }
///     ]
///             """)
///             .build());
///
///         var testGroup = new EntryGroup("testGroup", EntryGroupArgs.builder()
///             .location("us-central1")
///             .entryGroupId("test-group-_12618")
///             .project("my-project-name")
///             .build());
///
///         var testEntry = new Entry("testEntry", EntryArgs.builder()
///             .location("us-central1")
///             .entryGroupId(testGroup.entryGroupId())
///             .entryId("test-entry-_32270")
///             .entryType("projects/655216118709/locations/global/entryTypes/data-quality-rule-template")
///             .project(project.number())
///             .aspects(EntryAspectArgs.builder()
///                 .aspectKey("655216118709.global.data-quality-rule-template")
///                 .aspect(EntryAspectAspectArgs.builder()
///                     .data(serializeJson(
///                         jsonObject(
///                             jsonProperty("dimension", "VALIDITY"),
///                             jsonProperty("sqlCollection", jsonArray(jsonObject(
///                                 jsonProperty("query", "SELECT * FROM ${param(table_name)} WHERE ${param(column_name)} IS NULL")
///                             ))),
///                             jsonProperty("inputParameters", jsonObject(
///                                 jsonProperty("table_name", jsonObject(
///                                     jsonProperty("description", "Table Name")
///                                 )),
///                                 jsonProperty("column_name", jsonObject(
///                                     jsonProperty("description", "Column Name")
///                                 ))
///                             ))
///                         )))
///                     .build())
///                 .build())
///             .build());
///
///         var waitForBqSync = new Sleep("waitForBqSync", SleepArgs.builder()
///             .createDuration("300s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(tfTestTable)
///                 .build());
///
///         var bqTableEntry = new Entry("bqTableEntry", EntryArgs.builder()
///             .entryGroupId("@bigquery")
///             .project(project.projectId())
///             .location("us-central1")
///             .entryId(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                 var datasetId = values.t1;
///                 var tableId = values.t2;
///                 return String.format("bigquery.googleapis.com/projects/%s/datasets/%s/tables/%s", project.projectId(),datasetId,tableId);
///             }))
///             .entryType("projects/655216118709/locations/global/entryTypes/bigquery-table")
///             .fullyQualifiedName(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                 var datasetId = values.t1;
///                 var tableId = values.t2;
///                 return String.format("bigquery:%s.%s.%s", project.projectId(),datasetId,tableId);
///             }))
///             .parentEntry(tfTestDataset.datasetId().applyValue(_datasetId -> String.format("projects/%s/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/%s/datasets/%s", project.projectId(),project.projectId(),_datasetId)))
///             .aspects(EntryAspectArgs.builder()
///                 .aspectKey("655216118709.global.data-rules@Schema.name")
///                 .aspect(EntryAspectAspectArgs.builder()
///                     .data(Output.tuple(testEntry.name(), tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                         var name = values.t1;
///                         var datasetId = values.t2;
///                         var tableId = values.t3;
///                         return serializeJson(
///                             jsonObject(
///                                 jsonProperty("rules", jsonArray(
///                                     jsonObject(
///                                         jsonProperty("name", "rule-to-filter-out"),
///                                         jsonProperty("dimension", "VALIDITY"),
///                                         jsonProperty("type", "TEMPLATE_REFERENCE"),
///                                         jsonProperty("templateReference", jsonObject(
///                                             jsonProperty("name", name),
///                                             jsonProperty("values", jsonObject(
///                                                 jsonProperty("table_name", jsonObject(
///                                                     jsonProperty("value", String.format("`%s.%s.%s`", project.projectId(),datasetId,tableId))
///                                                 )),
///                                                 jsonProperty("column_name", jsonObject(
///                                                     jsonProperty("value", "name")
///                                                 ))
///                                             ))
///                                         )),
///                                         jsonProperty("attributes", jsonObject(
///                                             jsonProperty("priority", "low")
///                                         ))
///                                     ),
///                                     jsonObject(
///                                         jsonProperty("name", "non-null-check-name-manual"),
///                                         jsonProperty("dimension", "VALIDITY"),
///                                         jsonProperty("type", "TEMPLATE_REFERENCE"),
///                                         jsonProperty("templateReference", jsonObject(
///                                             jsonProperty("name", name),
///                                             jsonProperty("values", jsonObject(
///                                                 jsonProperty("table_name", jsonObject(
///                                                     jsonProperty("value", String.format("`%s.%s.%s`", project.projectId(),datasetId,tableId))
///                                                 )),
///                                                 jsonProperty("column_name", jsonObject(
///                                                     jsonProperty("value", "name")
///                                                 ))
///                                             ))
///                                         )),
///                                         jsonProperty("attributes", jsonObject(
///                                             jsonProperty("priority", "high")
///                                         ))
///                                     )
///                                 ))
///                             ));
///                     }))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     waitForBqSync,
///                     testEntry)
///                 .build());
///
///         var waitForAspectPropagation = new Sleep("waitForAspectPropagation", SleepArgs.builder()
///             .createDuration("300s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bqTableEntry)
///                 .build());
///
///         var reusableRulesCatalogBased = new Datascan("reusableRulesCatalogBased", DatascanArgs.builder()
///             .location("us-central1")
///             .dataScanId("dataquality-catalog")
///             .displayName("Catalog Datascan Quality")
///             .description("Example resource - Catalog Datascan Quality")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/%s/datasets/%s/tables/%s", project.projectId(),datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .executionIdentity(DatascanExecutionIdentityArgs.builder()
///                 .serviceAccount(DatascanExecutionIdentityServiceAccountArgs.builder()
///                     .email(sa.email())
///                     .build())
///                 .build())
///             .dataQualitySpec(DatascanDataQualitySpecArgs.builder()
///                 .enableCatalogBasedRules(true)
///                 .filter("attributes.priority = \"high\"")
///                 .build())
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForAspectPropagation)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: tf-test-sa-_16178
///       displayName: DataScan Service Account
///       project: my-project-name
///   dataplexSaImpersonate:
///     type: gcp:serviceaccount:IAMMember
///     name: dataplex_sa_impersonate
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountTokenCreator
///       member: serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com
///   saBqDataViewer:
///     type: gcp:projects:IAMMember
///     name: sa_bq_data_viewer
///     properties:
///       project: my-project-name
///       role: roles/bigquery.dataViewer
///       member: serviceAccount:${sa.email}
///   saBqJobUser:
///     type: gcp:projects:IAMMember
///     name: sa_bq_job_user
///     properties:
///       project: my-project-name
///       role: roles/bigquery.jobUser
///       member: serviceAccount:${sa.email}
///   tfTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_test_dataset
///     properties:
///       datasetId: tf_test_dataset_id__26317
///       defaultTableExpirationMs: 3.6e+06
///       deleteContentsOnDestroy: true
///       project: my-project-name
///       location: us-central1
///     options:
///       dependsOn:
///         - ${dataplexSaImpersonate}
///         - ${saBqDataViewer}
///         - ${saBqJobUser}
///   tfTestTable:
///     type: gcp:bigquery:Table
///     name: tf_test_table
///     properties:
///       datasetId: ${tfTestDataset.datasetId}
///       tableId: tf_test_table_id__4866
///       deletionProtection: false
///       project: my-project-name
///       schema: |2
///             [
///             {
///               "name": "name",
///               "type": "STRING",
///               "mode": "NULLABLE"
///             }
///             ]
///   testGroup:
///     type: gcp:dataplex:EntryGroup
///     name: test_group
///     properties:
///       location: us-central1
///       entryGroupId: test-group-_12618
///       project: my-project-name
///   testEntry:
///     type: gcp:dataplex:Entry
///     name: test_entry
///     properties:
///       location: us-central1
///       entryGroupId: ${testGroup.entryGroupId}
///       entryId: test-entry-_32270
///       entryType: projects/655216118709/locations/global/entryTypes/data-quality-rule-template
///       project: ${project.number}
///       aspects:
///         - aspectKey: 655216118709.global.data-quality-rule-template
///           aspect:
///             data:
///               fn::toJSON:
///                 dimension: VALIDITY
///                 sqlCollection:
///                   - query: SELECT * FROM $${param(table_name)} WHERE $${param(column_name)} IS NULL
///                 inputParameters:
///                   table_name:
///                     description: Table Name
///                   column_name:
///                     description: Column Name
///   waitForBqSync:
///     type: time:Sleep
///     name: wait_for_bq_sync
///     properties:
///       createDuration: 300s
///     options:
///       dependsOn:
///         - ${tfTestTable}
///   bqTableEntry:
///     type: gcp:dataplex:Entry
///     name: bq_table_entry
///     properties:
///       entryGroupId: '@bigquery'
///       project: ${project.projectId}
///       location: us-central1
///       entryId: bigquery.googleapis.com/projects/${project.projectId}/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}
///       entryType: projects/655216118709/locations/global/entryTypes/bigquery-table
///       fullyQualifiedName: bigquery:${project.projectId}.${tfTestDataset.datasetId}.${tfTestTable.tableId}
///       parentEntry: projects/${project.projectId}/locations/us-central1/entryGroups/@bigquery/entries/bigquery.googleapis.com/projects/${project.projectId}/datasets/${tfTestDataset.datasetId}
///       aspects:
///         - aspectKey: 655216118709.global.data-rules@Schema.name
///           aspect:
///             data:
///               fn::toJSON:
///                 rules:
///                   - name: rule-to-filter-out
///                     dimension: VALIDITY
///                     type: TEMPLATE_REFERENCE
///                     templateReference:
///                       name: ${testEntry.name}
///                       values:
///                         table_name:
///                           value: '`${project.projectId}.${tfTestDataset.datasetId}.${tfTestTable.tableId}`'
///                         column_name:
///                           value: name
///                     attributes:
///                       priority: low
///                   - name: non-null-check-name-manual
///                     dimension: VALIDITY
///                     type: TEMPLATE_REFERENCE
///                     templateReference:
///                       name: ${testEntry.name}
///                       values:
///                         table_name:
///                           value: '`${project.projectId}.${tfTestDataset.datasetId}.${tfTestTable.tableId}`'
///                         column_name:
///                           value: name
///                     attributes:
///                       priority: high
///     options:
///       dependsOn:
///         - ${waitForBqSync}
///         - ${testEntry}
///   waitForAspectPropagation:
///     type: time:Sleep
///     name: wait_for_aspect_propagation
///     properties:
///       createDuration: 300s
///     options:
///       dependsOn:
///         - ${bqTableEntry}
///   reusableRulesCatalogBased:
///     type: gcp:dataplex:Datascan
///     name: reusable_rules_catalog_based
///     properties:
///       location: us-central1
///       dataScanId: dataquality-catalog
///       displayName: Catalog Datascan Quality
///       description: Example resource - Catalog Datascan Quality
///       data:
///         resource: //bigquery.googleapis.com/projects/${project.projectId}/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}
///       executionSpec:
///         trigger:
///           onDemand: {}
///       executionIdentity:
///         serviceAccount:
///           email: ${sa.email}
///       dataQualitySpec:
///         enableCatalogBasedRules: true
///         filter: attributes.priority = "high"
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitForAspectPropagation}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
/// ### Dataplex Datascan Data Quality Template Reference
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "tf-test-sa-_44703",
///     displayName: "DataScan Service Account",
///     project: project.then(project => project.projectId),
/// });
/// const dataplexSaImpersonate = new gcp.serviceaccount.IAMMember("dataplex_sa_impersonate", {
///     serviceAccountId: sa.name,
///     role: "roles/iam.serviceAccountTokenCreator",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com`),
/// });
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [dataplexSaImpersonate],
/// });
/// const saBqDataViewer = new gcp.projects.IAMMember("sa_bq_data_viewer", {
///     project: project.then(project => project.projectId),
///     role: "roles/bigquery.dataViewer",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const saBqJobUser = new gcp.projects.IAMMember("sa_bq_job_user", {
///     project: project.then(project => project.projectId),
///     role: "roles/bigquery.jobUser",
///     member: pulumi.interpolate`serviceAccount:${sa.email}`,
/// });
/// const testGroup = new gcp.dataplex.EntryGroup("test_group", {
///     location: "us-central1",
///     entryGroupId: "test-group-_9329",
///     project: project.then(project => project.projectId),
/// });
/// const testEntry = new gcp.dataplex.Entry("test_entry", {
///     location: "us-central1",
///     entryGroupId: testGroup.entryGroupId,
///     entryId: "test-entry-_37135",
///     entryType: "projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///     project: project.then(project => project.number),
///     aspects: [{
///         aspectKey: "655216118709.global.data-quality-rule-template",
///         aspect: {
///             data: JSON.stringify({
///                 dimension: "VALIDITY",
///                 sqlCollection: [{
///                     query: "SELECT * FROM ${data()} WHERE ${column()} IS NOT NULL",
///                 }],
///             }),
///         },
///     }],
/// });
/// const tfTestDataset = new gcp.bigquery.Dataset("tf_test_dataset", {
///     datasetId: "tf_test_dataset_id__42503",
///     defaultTableExpirationMs: 3600000,
///     location: "us-central1",
///     project: project.then(project => project.projectId),
/// }, {
///     dependsOn: [
///         dataplexSaImpersonate,
///         saBqDataViewer,
///         saBqJobUser,
///     ],
/// });
/// const tfTestTable = new gcp.bigquery.Table("tf_test_table", {
///     datasetId: tfTestDataset.datasetId,
///     tableId: "tf_test_table_id__9991",
///     deletionProtection: false,
///     project: project.then(project => project.projectId),
///     schema: `    [
///     {
///       \\"name\\": \\"name\\",
///       \\"type\\": \\"STRING\\",
///       \\"mode\\": \\"NULLABLE\\"
///     }
///     ]
/// `,
/// });
/// const dataQualityTemplateReference = new gcp.dataplex.Datascan("data_quality_template_reference", {
///     location: "us-central1",
///     displayName: "Data Quality Template Reference",
///     dataScanId: "dataquality-template",
///     data: {
///         resource: pulumi.all([project, tfTestDataset.datasetId, tfTestTable.tableId]).apply(([project, datasetId, tableId]) => `//bigquery.googleapis.com/projects/${project.projectId}/datasets/${datasetId}/tables/${tableId}`),
///     },
///     executionSpec: {
///         trigger: {
///             onDemand: {},
///         },
///     },
///     executionIdentity: {
///         serviceAccount: {
///             email: sa.email,
///         },
///     },
///     dataQualitySpec: {
///         rules: [{
///             column: "name",
///             dimension: "VALIDITY",
///             templateReference: {
///                 name: testEntry.name,
///                 values: [{
///                     name: "min_length",
///                     value: "10",
///                 }],
///             },
///         }],
///     },
///     project: project.then(project => project.projectId),
/// }, {
///     dependsOn: [
///         tfTestTable,
///         wait120Seconds,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="tf-test-sa-_44703",
///     display_name="DataScan Service Account",
///     project=project.project_id)
/// dataplex_sa_impersonate = gcp.serviceaccount.IAMMember("dataplex_sa_impersonate",
///     service_account_id=sa.name,
///     role="roles/iam.serviceAccountTokenCreator",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-dataplex.iam.gserviceaccount.com")
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[dataplex_sa_impersonate]))
/// sa_bq_data_viewer = gcp.projects.IAMMember("sa_bq_data_viewer",
///     project=project.project_id,
///     role="roles/bigquery.dataViewer",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// sa_bq_job_user = gcp.projects.IAMMember("sa_bq_job_user",
///     project=project.project_id,
///     role="roles/bigquery.jobUser",
///     member=sa.email.apply(lambda email: f"serviceAccount:{email}"))
/// test_group = gcp.dataplex.EntryGroup("test_group",
///     location="us-central1",
///     entry_group_id="test-group-_9329",
///     project=project.project_id)
/// test_entry = gcp.dataplex.Entry("test_entry",
///     location="us-central1",
///     entry_group_id=test_group.entry_group_id,
///     entry_id="test-entry-_37135",
///     entry_type="projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///     project=project.number,
///     aspects=[{
///         "aspect_key": "655216118709.global.data-quality-rule-template",
///         "aspect": {
///             "data": json.dumps({
///                 "dimension": "VALIDITY",
///                 "sqlCollection": [{
///                     "query": "SELECT * FROM ${data()} WHERE ${column()} IS NOT NULL",
///                 }],
///             }),
///         },
///     }])
/// tf_test_dataset = gcp.bigquery.Dataset("tf_test_dataset",
///     dataset_id="tf_test_dataset_id__42503",
///     default_table_expiration_ms=3600000,
///     location="us-central1",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             dataplex_sa_impersonate,
///             sa_bq_data_viewer,
///             sa_bq_job_user,
///         ]))
/// tf_test_table = gcp.bigquery.Table("tf_test_table",
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="tf_test_table_id__9991",
///     deletion_protection=False,
///     project=project.project_id,
///     schema="""    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     }
///     ]
/// """)
/// data_quality_template_reference = gcp.dataplex.Datascan("data_quality_template_reference",
///     location="us-central1",
///     display_name="Data Quality Template Reference",
///     data_scan_id="dataquality-template",
///     data={
///         "resource": pulumi.Output.all(
///             dataset_id=tf_test_dataset.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/{project.project_id}/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///     },
///     execution_spec={
///         "trigger": {
///             "on_demand": {},
///         },
///     },
///     execution_identity={
///         "service_account": {
///             "email": sa.email,
///         },
///     },
///     data_quality_spec={
///         "rules": [{
///             "column": "name",
///             "dimension": "VALIDITY",
///             "template_reference": {
///                 "name": test_entry.name,
///                 "values": [{
///                     "name": "min_length",
///                     "value": "10",
///                 }],
///             },
///         }],
///     },
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             tf_test_table,
///             wait120_seconds,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "tf-test-sa-_44703",
///         DisplayName = "DataScan Service Account",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var dataplexSaImpersonate = new Gcp.ServiceAccount.IAMMember("dataplex_sa_impersonate", new()
///     {
///         ServiceAccountId = sa.Name,
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-dataplex.iam.gserviceaccount.com",
///     });
///
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataplexSaImpersonate,
///         },
///     });
///
///     var saBqDataViewer = new Gcp.Projects.IAMMember("sa_bq_data_viewer", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/bigquery.dataViewer",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var saBqJobUser = new Gcp.Projects.IAMMember("sa_bq_job_user", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/bigquery.jobUser",
///         Member = sa.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var testGroup = new Gcp.DataPlex.EntryGroup("test_group", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = "test-group-_9329",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     });
///
///     var testEntry = new Gcp.DataPlex.Entry("test_entry", new()
///     {
///         Location = "us-central1",
///         EntryGroupId = testGroup.EntryGroupId,
///         EntryId = "test-entry-_37135",
///         EntryType = "projects/655216118709/locations/global/entryTypes/data-quality-rule-template",
///         Project = project.Apply(getProjectResult => getProjectResult.Number),
///         Aspects = new[]
///         {
///             new Gcp.DataPlex.Inputs.EntryAspectArgs
///             {
///                 AspectKey = "655216118709.global.data-quality-rule-template",
///                 Aspect = new Gcp.DataPlex.Inputs.EntryAspectAspectArgs
///                 {
///                     Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["dimension"] = "VALIDITY",
///                         ["sqlCollection"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["query"] = "SELECT * FROM ${data()} WHERE ${column()} IS NOT NULL",
///                             },
///                         },
///                     }),
///                 },
///             },
///         },
///     });
///
///     var tfTestDataset = new Gcp.BigQuery.Dataset("tf_test_dataset", new()
///     {
///         DatasetId = "tf_test_dataset_id__42503",
///         DefaultTableExpirationMs = 3600000,
///         Location = "us-central1",
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             dataplexSaImpersonate,
///             saBqDataViewer,
///             saBqJobUser,
///         },
///     });
///
///     var tfTestTable = new Gcp.BigQuery.Table("tf_test_table", new()
///     {
///         DatasetId = tfTestDataset.DatasetId,
///         TableId = "tf_test_table_id__9991",
///         DeletionProtection = false,
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Schema = @"    [
///     {
///       \""name\"": \""name\"",
///       \""type\"": \""STRING\"",
///       \""mode\"": \""NULLABLE\""
///     }
///     ]
/// ",
///     });
///
///     var dataQualityTemplateReference = new Gcp.DataPlex.Datascan("data_quality_template_reference", new()
///     {
///         Location = "us-central1",
///         DisplayName = "Data Quality Template Reference",
///         DataScanId = "dataquality-template",
///         Data = new Gcp.DataPlex.Inputs.DatascanDataArgs
///         {
///             Resource = Output.Tuple(project, tfTestDataset.DatasetId, tfTestTable.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"//bigquery.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/datasets/{datasetId}/tables/{tableId}";
///             }),
///         },
///         ExecutionSpec = new Gcp.DataPlex.Inputs.DatascanExecutionSpecArgs
///         {
///             Trigger = new Gcp.DataPlex.Inputs.DatascanExecutionSpecTriggerArgs
///             {
///                 OnDemand = null,
///             },
///         },
///         ExecutionIdentity = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityArgs
///         {
///             ServiceAccount = new Gcp.DataPlex.Inputs.DatascanExecutionIdentityServiceAccountArgs
///             {
///                 Email = sa.Email,
///             },
///         },
///         DataQualitySpec = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleArgs
///                 {
///                     Column = "name",
///                     Dimension = "VALIDITY",
///                     TemplateReference = new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleTemplateReferenceArgs
///                     {
///                         Name = testEntry.Name,
///                         Values = new[]
///                         {
///                             new Gcp.DataPlex.Inputs.DatascanDataQualitySpecRuleTemplateReferenceValueArgs
///                             {
///                                 Name = "min_length",
///                                 Value = "10",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             tfTestTable,
///             wait120Seconds,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("tf-test-sa-_44703"),
/// 			DisplayName: pulumi.String("DataScan Service Account"),
/// 			Project:     pulumi.String(project.ProjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataplexSaImpersonate, err := serviceaccount.NewIAMMember(ctx, "dataplex_sa_impersonate", &serviceaccount.IAMMemberArgs{
/// 			ServiceAccountId: sa.Name,
/// 			Role:             pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Member:           pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-dataplex.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataplexSaImpersonate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqDataViewer, err := projects.NewIAMMember(ctx, "sa_bq_data_viewer", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/bigquery.dataViewer"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		saBqJobUser, err := projects.NewIAMMember(ctx, "sa_bq_job_user", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/bigquery.jobUser"),
/// 			Member: sa.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testGroup, err := dataplex.NewEntryGroup(ctx, "test_group", &dataplex.EntryGroupArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: pulumi.String("test-group-_9329"),
/// 			Project:      pulumi.String(project.ProjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"dimension": "VALIDITY",
/// 			"sqlCollection": []map[string]string{
/// 				{
/// 					"query": "SELECT * FROM ${data()} WHERE ${column()} IS NOT NULL",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		testEntry, err := dataplex.NewEntry(ctx, "test_entry", &dataplex.EntryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EntryGroupId: testGroup.EntryGroupId,
/// 			EntryId:      pulumi.String("test-entry-_37135"),
/// 			EntryType:    pulumi.String("projects/655216118709/locations/global/entryTypes/data-quality-rule-template"),
/// 			Project:      pulumi.String(project.Number),
/// 			Aspects: dataplex.EntryAspectArray{
/// 				&dataplex.EntryAspectArgs{
/// 					AspectKey: pulumi.String("655216118709.global.data-quality-rule-template"),
/// 					Aspect: &dataplex.EntryAspectAspectArgs{
/// 						Data: pulumi.String(json0),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestDataset, err := bigquery.NewDataset(ctx, "tf_test_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("tf_test_dataset_id__42503"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			Location:                 pulumi.String("us-central1"),
/// 			Project:                  pulumi.String(project.ProjectId),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			dataplexSaImpersonate,
/// 			saBqDataViewer,
/// 			saBqJobUser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestTable, err := bigquery.NewTable(ctx, "tf_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_test_table_id__9991"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Project:            pulumi.String(project.ProjectId),
/// 			Schema: pulumi.String(`    [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     }
///     ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDatascan(ctx, "data_quality_template_reference", &dataplex.DatascanArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("Data Quality Template Reference"),
/// 			DataScanId:  pulumi.String("dataquality-template"),
/// 			Data: &dataplex.DatascanDataArgs{
/// 				Resource: pulumi.All(tfTestDataset.DatasetId, tfTestTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					datasetId := _args[0].(string)
/// 					tableId := _args[1].(string)
/// 					return fmt.Sprintf("//bigquery.googleapis.com/projects/%v/datasets/%v/tables/%v", project.ProjectId, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ExecutionSpec: &dataplex.DatascanExecutionSpecArgs{
/// 				Trigger: &dataplex.DatascanExecutionSpecTriggerArgs{
/// 					OnDemand: &dataplex.DatascanExecutionSpecTriggerOnDemandArgs{},
/// 				},
/// 			},
/// 			ExecutionIdentity: &dataplex.DatascanExecutionIdentityArgs{
/// 				ServiceAccount: &dataplex.DatascanExecutionIdentityServiceAccountArgs{
/// 					Email: sa.Email,
/// 				},
/// 			},
/// 			DataQualitySpec: &dataplex.DatascanDataQualitySpecArgs{
/// 				Rules: dataplex.DatascanDataQualitySpecRuleArray{
/// 					&dataplex.DatascanDataQualitySpecRuleArgs{
/// 						Column:    pulumi.String("name"),
/// 						Dimension: pulumi.String("VALIDITY"),
/// 						TemplateReference: &dataplex.DatascanDataQualitySpecRuleTemplateReferenceArgs{
/// 							Name: testEntry.Name,
/// 							Values: dataplex.DatascanDataQualitySpecRuleTemplateReferenceValueArray{
/// 								&dataplex.DatascanDataQualitySpecRuleTemplateReferenceValueArgs{
/// 									Name:  pulumi.String("min_length"),
/// 									Value: pulumi.String("10"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Project: pulumi.String(project.ProjectId),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			tfTestTable,
/// 			wait120Seconds,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
///   project_id = "my-project-name"
/// }
///
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "tf-test-sa-_44703"
///   display_name = "DataScan Service Account"
///   project      = data.gcp_organizations_getproject.project.project_id
/// }
/// resource "gcp_serviceaccount_iammember" "dataplex_sa_impersonate" {
///   service_account_id = gcp_serviceaccount_account.sa.name
///   role               = "roles/iam.serviceAccountTokenCreator"
///   member             ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-dataplex.iam.gserviceaccount.com"
/// }
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_serviceaccount_iammember.dataplex_sa_impersonate]
///   create_duration = "120s"
/// }
/// resource "gcp_projects_iammember" "sa_bq_data_viewer" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/bigquery.dataViewer"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_projects_iammember" "sa_bq_job_user" {
///   project = data.gcp_organizations_getproject.project.project_id
///   role    = "roles/bigquery.jobUser"
///   member  ="serviceAccount:${gcp_serviceaccount_account.sa.email}"
/// }
/// resource "gcp_dataplex_entrygroup" "test_group" {
///   location       = "us-central1"
///   entry_group_id = "test-group-_9329"
///   project        = data.gcp_organizations_getproject.project.project_id
/// }
/// resource "gcp_dataplex_entry" "test_entry" {
///   location       = "us-central1"
///   entry_group_id = gcp_dataplex_entrygroup.test_group.entry_group_id
///   entry_id       = "test-entry-_37135"
///   entry_type     = "projects/655216118709/locations/global/entryTypes/data-quality-rule-template"
///   project        = data.gcp_organizations_getproject.project.number
///   aspects {
///     aspect_key = "655216118709.global.data-quality-rule-template"
///     aspect = {
///       data = jsonencode({
///         "dimension" = "VALIDITY"
///         "sqlCollection" = [{
///           "query" = "SELECT * FROM $${data()} WHERE $${column()} IS NOT NULL"
///         }]
///       })
///     }
///   }
/// }
/// resource "gcp_bigquery_dataset" "tf_test_dataset" {
///   depends_on                  = [gcp_serviceaccount_iammember.dataplex_sa_impersonate, gcp_projects_iammember.sa_bq_data_viewer, gcp_projects_iammember.sa_bq_job_user]
///   dataset_id                  = "tf_test_dataset_id__42503"
///   default_table_expiration_ms = 3600000
///   location                    = "us-central1"
///   project                     = data.gcp_organizations_getproject.project.project_id
/// }
/// resource "gcp_bigquery_table" "tf_test_table" {
///   dataset_id          = gcp_bigquery_dataset.tf_test_dataset.dataset_id
///   table_id            = "tf_test_table_id__9991"
///   deletion_protection = false
///   project             = data.gcp_organizations_getproject.project.project_id
///   schema              = "    [\n    {\n      \\\"name\\\": \\\"name\\\",\n      \\\"type\\\": \\\"STRING\\\",\n      \\\"mode\\\": \\\"NULLABLE\\\"\n    }\n    ]\n"
/// }
/// resource "gcp_dataplex_datascan" "data_quality_template_reference" {
///   depends_on   = [gcp_bigquery_table.tf_test_table, time_sleep.wait_120_seconds]
///   location     = "us-central1"
///   display_name = "Data Quality Template Reference"
///   data_scan_id = "dataquality-template"
///   data = {
///     resource ="//bigquery.googleapis.com/projects/${data.gcp_organizations_getproject.project.project_id}/datasets/${gcp_bigquery_dataset.tf_test_dataset.dataset_id}/tables/${gcp_bigquery_table.tf_test_table.table_id}"
///   }
///   execution_spec = {
///     trigger = {
///       on_demand = {}
///     }
///   }
///   execution_identity = {
///     service_account = {
///       email = gcp_serviceaccount_account.sa.email
///     }
///   }
///   data_quality_spec = {
///     rules = [{
///       "column"    = "name"
///       "dimension" = "VALIDITY"
///       "templateReference" = {
///         "name" = gcp_dataplex_entry.test_entry.name
///         "values" = [{
///           "name"  = "min_length"
///           "value" = "10"
///         }]
///       }
///     }]
///   }
///   project = data.gcp_organizations_getproject.project.project_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.dataplex.EntryGroup;
/// import com.pulumi.gcp.dataplex.EntryGroupArgs;
/// import com.pulumi.gcp.dataplex.Entry;
/// import com.pulumi.gcp.dataplex.EntryArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectArgs;
/// import com.pulumi.gcp.dataplex.inputs.EntryAspectAspectArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.dataplex.Datascan;
/// import com.pulumi.gcp.dataplex.DatascanArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionSpecTriggerOnDemandArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanExecutionIdentityServiceAccountArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleTemplateReferenceArgs;
/// import com.pulumi.gcp.dataplex.inputs.DatascanDataQualitySpecRuleTemplateReferenceValueArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("tf-test-sa-_44703")
///             .displayName("DataScan Service Account")
///             .project(project.projectId())
///             .build());
///
///         var dataplexSaImpersonate = new com.pulumi.gcp.serviceaccount.IAMMember("dataplexSaImpersonate", com.pulumi.gcp.serviceaccount.IAMMemberArgs.builder()
///             .serviceAccountId(sa.name())
///             .role("roles/iam.serviceAccountTokenCreator")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-dataplex.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(dataplexSaImpersonate)
///                 .build());
///
///         var saBqDataViewer = new com.pulumi.gcp.projects.IAMMember("saBqDataViewer", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/bigquery.dataViewer")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var saBqJobUser = new com.pulumi.gcp.projects.IAMMember("saBqJobUser", com.pulumi.gcp.projects.IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/bigquery.jobUser")
///             .member(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var testGroup = new EntryGroup("testGroup", EntryGroupArgs.builder()
///             .location("us-central1")
///             .entryGroupId("test-group-_9329")
///             .project(project.projectId())
///             .build());
///
///         var testEntry = new Entry("testEntry", EntryArgs.builder()
///             .location("us-central1")
///             .entryGroupId(testGroup.entryGroupId())
///             .entryId("test-entry-_37135")
///             .entryType("projects/655216118709/locations/global/entryTypes/data-quality-rule-template")
///             .project(project.number())
///             .aspects(EntryAspectArgs.builder()
///                 .aspectKey("655216118709.global.data-quality-rule-template")
///                 .aspect(EntryAspectAspectArgs.builder()
///                     .data(serializeJson(
///                         jsonObject(
///                             jsonProperty("dimension", "VALIDITY"),
///                             jsonProperty("sqlCollection", jsonArray(jsonObject(
///                                 jsonProperty("query", "SELECT * FROM ${data()} WHERE ${column()} IS NOT NULL")
///                             )))
///                         )))
///                     .build())
///                 .build())
///             .build());
///
///         var tfTestDataset = new Dataset("tfTestDataset", DatasetArgs.builder()
///             .datasetId("tf_test_dataset_id__42503")
///             .defaultTableExpirationMs(3600000)
///             .location("us-central1")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     dataplexSaImpersonate,
///                     saBqDataViewer,
///                     saBqJobUser)
///                 .build());
///
///         var tfTestTable = new Table("tfTestTable", TableArgs.builder()
///             .datasetId(tfTestDataset.datasetId())
///             .tableId("tf_test_table_id__9991")
///             .deletionProtection(false)
///             .project(project.projectId())
///             .schema("""
///     [
///     {
///       \"name\": \"name\",
///       \"type\": \"STRING\",
///       \"mode\": \"NULLABLE\"
///     }
///     ]
///             """)
///             .build());
///
///         var dataQualityTemplateReference = new Datascan("dataQualityTemplateReference", DatascanArgs.builder()
///             .location("us-central1")
///             .displayName("Data Quality Template Reference")
///             .dataScanId("dataquality-template")
///             .data(DatascanDataArgs.builder()
///                 .resource(Output.tuple(tfTestDataset.datasetId(), tfTestTable.tableId()).applyValue(values -> {
///                     var datasetId = values.t1;
///                     var tableId = values.t2;
///                     return String.format("//bigquery.googleapis.com/projects/%s/datasets/%s/tables/%s", project.projectId(),datasetId,tableId);
///                 }))
///                 .build())
///             .executionSpec(DatascanExecutionSpecArgs.builder()
///                 .trigger(DatascanExecutionSpecTriggerArgs.builder()
///                     .onDemand(DatascanExecutionSpecTriggerOnDemandArgs.builder()
///                         .build())
///                     .build())
///                 .build())
///             .executionIdentity(DatascanExecutionIdentityArgs.builder()
///                 .serviceAccount(DatascanExecutionIdentityServiceAccountArgs.builder()
///                     .email(sa.email())
///                     .build())
///                 .build())
///             .dataQualitySpec(DatascanDataQualitySpecArgs.builder()
///                 .rules(DatascanDataQualitySpecRuleArgs.builder()
///                     .column("name")
///                     .dimension("VALIDITY")
///                     .templateReference(DatascanDataQualitySpecRuleTemplateReferenceArgs.builder()
///                         .name(testEntry.name())
///                         .values(DatascanDataQualitySpecRuleTemplateReferenceValueArgs.builder()
///                             .name("min_length")
///                             .value("10")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     tfTestTable,
///                     wait120Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: tf-test-sa-_44703
///       displayName: DataScan Service Account
///       project: ${project.projectId}
///   dataplexSaImpersonate:
///     type: gcp:serviceaccount:IAMMember
///     name: dataplex_sa_impersonate
///     properties:
///       serviceAccountId: ${sa.name}
///       role: roles/iam.serviceAccountTokenCreator
///       member: serviceAccount:service-${project.number}@gcp-sa-dataplex.iam.gserviceaccount.com
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${dataplexSaImpersonate}
///   saBqDataViewer:
///     type: gcp:projects:IAMMember
///     name: sa_bq_data_viewer
///     properties:
///       project: ${project.projectId}
///       role: roles/bigquery.dataViewer
///       member: serviceAccount:${sa.email}
///   saBqJobUser:
///     type: gcp:projects:IAMMember
///     name: sa_bq_job_user
///     properties:
///       project: ${project.projectId}
///       role: roles/bigquery.jobUser
///       member: serviceAccount:${sa.email}
///   testGroup:
///     type: gcp:dataplex:EntryGroup
///     name: test_group
///     properties:
///       location: us-central1
///       entryGroupId: test-group-_9329
///       project: ${project.projectId}
///   testEntry:
///     type: gcp:dataplex:Entry
///     name: test_entry
///     properties:
///       location: us-central1
///       entryGroupId: ${testGroup.entryGroupId}
///       entryId: test-entry-_37135
///       entryType: projects/655216118709/locations/global/entryTypes/data-quality-rule-template
///       project: ${project.number}
///       aspects:
///         - aspectKey: 655216118709.global.data-quality-rule-template
///           aspect:
///             data:
///               fn::toJSON:
///                 dimension: VALIDITY
///                 sqlCollection:
///                   - query: SELECT * FROM $${data()} WHERE $${column()} IS NOT NULL
///   tfTestDataset:
///     type: gcp:bigquery:Dataset
///     name: tf_test_dataset
///     properties:
///       datasetId: tf_test_dataset_id__42503
///       defaultTableExpirationMs: 3.6e+06
///       location: us-central1
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${dataplexSaImpersonate}
///         - ${saBqDataViewer}
///         - ${saBqJobUser}
///   tfTestTable:
///     type: gcp:bigquery:Table
///     name: tf_test_table
///     properties:
///       datasetId: ${tfTestDataset.datasetId}
///       tableId: tf_test_table_id__9991
///       deletionProtection: false
///       project: ${project.projectId}
///       schema: |2
///             [
///             {
///               \"name\": \"name\",
///               \"type\": \"STRING\",
///               \"mode\": \"NULLABLE\"
///             }
///             ]
///   dataQualityTemplateReference:
///     type: gcp:dataplex:Datascan
///     name: data_quality_template_reference
///     properties:
///       location: us-central1
///       displayName: Data Quality Template Reference
///       dataScanId: dataquality-template
///       data:
///         resource: //bigquery.googleapis.com/projects/${project.projectId}/datasets/${tfTestDataset.datasetId}/tables/${tfTestTable.tableId}
///       executionSpec:
///         trigger:
///           onDemand: {}
///       executionIdentity:
///         serviceAccount:
///           email: ${sa.email}
///       dataQualitySpec:
///         rules:
///           - column: name
///             dimension: VALIDITY
///             templateReference:
///               name: ${testEntry.name}
///               values:
///                 - name: min_length
///                   value: '10'
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${tfTestTable}
///         - ${wait120Seconds}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
///
/// ## Import
///
/// Datascan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}`
/// * `{{project}}/{{location}}/{{data_scan_id}}`
/// * `{{location}}/{{data_scan_id}}`
/// * `{{data_scan_id}}`
///
///
/// When using the `pulumi import` command, Datascan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{project}}/{{location}}/{{data_scan_id}}
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{location}}/{{data_scan_id}}
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{data_scan_id}}
/// ```
class Datascan extends pulumi.CustomResource {
  /// The time when the scan was created.
  late final pulumi.Output<String> createTime;
  /// The data source for DataScan.
  /// Structure is documented below.
  late final pulumi.Output<DatascanData> data;
  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataDiscoverySpec?> dataDiscoverySpec;
  /// DataDocumentationScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataDocumentationSpec?> dataDocumentationSpec;
  /// DataProfileScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataProfileSpec?> dataProfileSpec;
  /// DataQualityScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataQualitySpec?> dataQualitySpec;
  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  late final pulumi.Output<String> dataScanId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the scan.
  late final pulumi.Output<String?> description;
  /// User friendly display name.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The identity to run the datascan. If not specified, defaults to the Dataplex Service Agent.
  /// Structure is documented below.
  late final pulumi.Output<DatascanExecutionIdentity?> executionIdentity;
  /// DataScan execution settings.
  /// Structure is documented below.
  late final pulumi.Output<DatascanExecutionSpec> executionSpec;
  /// Status of the data scan execution.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> executionStatuses;
  /// User-defined labels for the scan. A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location where the data scan should reside.
  late final pulumi.Output<String> location;
  /// The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a projectId or projectNumber and locationId refers to a GCP region.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Current state of the DataScan.
  late final pulumi.Output<String> state;
  /// The type of DataScan.
  late final pulumi.Output<String> type;
  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time when the scan was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Datascan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datascan]. {@macro pulumi_dataplex_datascan_datascan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datascan(
    String name, {
    DatascanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/datascan:Datascan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    data = registerOutput<DatascanData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDiscoverySpec = registerOutput<DatascanDataDiscoverySpec?>('dataDiscoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDocumentationSpec = registerOutput<DatascanDataDocumentationSpec?>('dataDocumentationSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataDocumentationSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProfileSpec = registerOutput<DatascanDataProfileSpec?>('dataProfileSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataProfileSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualitySpec = registerOutput<DatascanDataQualitySpec?>('dataQualitySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataQualitySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataScanId = registerOutput<String>('dataScanId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionIdentity = registerOutput<DatascanExecutionIdentity?>('executionIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanExecutionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionSpec = registerOutput<DatascanExecutionSpec>('executionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionStatuses = registerOutput<List<Map<String, dynamic>>>('executionStatuses');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Datascan] resource's state with the given [name] and [id].
  static Datascan get(
    String name,
    pulumi.Input<String> id, {
    DatascanState? state,
  }) {
    return Datascan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Datascan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/datascan:Datascan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    data = registerOutput<DatascanData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDiscoverySpec = registerOutput<DatascanDataDiscoverySpec?>('dataDiscoverySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataDocumentationSpec = registerOutput<DatascanDataDocumentationSpec?>('dataDocumentationSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataDocumentationSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataProfileSpec = registerOutput<DatascanDataProfileSpec?>('dataProfileSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataProfileSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataQualitySpec = registerOutput<DatascanDataQualitySpec?>('dataQualitySpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanDataQualitySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataScanId = registerOutput<String>('dataScanId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionIdentity = registerOutput<DatascanExecutionIdentity?>('executionIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanExecutionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionSpec = registerOutput<DatascanExecutionSpec>('executionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatascanExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionStatuses = registerOutput<List<Map<String, dynamic>>>('executionStatuses');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
