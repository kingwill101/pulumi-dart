import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_args.dart';
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///         "sampling_percent": 80,
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
///             SamplingPercent = 80,
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
/// import java.util.List;
/// import java.util.ArrayList;
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
/// import java.util.List;
/// import java.util.ArrayList;
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///         "sampling_percent": 5,
///         "row_filter": "station_id > 1000",
///         "catalog_publishing_enabled": True,
///         "post_scan_actions": {
///             "notification_report": {
///                 "recipients": {
///                     "emails": ["jane.doe@example.com"],
///                 },
///                 "score_threshold_trigger": {
///                     "score_threshold": 86,
///                 },
///             },
///         },
///         "rules": [
///             {
///                 "column": "address",
///                 "dimension": "VALIDITY",
///                 "threshold": 0.99,
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
///             SamplingPercent = 5,
///             RowFilter = "station_id > 1000",
///             CatalogPublishingEnabled = true,
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
///                         ScoreThreshold = 86,
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
/// 						Column:             pulumi.String("address"),
/// 						Dimension:          pulumi.String("VALIDITY"),
/// 						Threshold:          pulumi.Float64(0.99),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///     name: "tf-test-bucket-name-_64336",
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
///     name="tf-test-bucket-name-_64336",
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
///         Name = "tf-test-bucket-name-_64336",
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
/// 			Name:                     pulumi.String("tf-test-bucket-name-_64336"),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("tf-test-bucket-name-_64336")
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
///       name: tf-test-bucket-name-_64336
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
///     name: "tf-test-bucket-name-_34962",
///     location: "us-west1",
///     uniformBucketLevelAccess: true,
/// });
/// const tfTestConnection = new gcp.bigquery.Connection("tf_test_connection", {
///     connectionId: "tf-test-connection-_74000",
///     location: "us-central1",
///     friendlyName: "tf-test-connection-_75125",
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
///             connection: pulumi.all([tfTestConnection.project, tfTestConnection.location, tfTestConnection.connectionId]).apply(([project, location, connectionId]) => `projects/${project}/locations/${location}/connections/${connectionId}`),
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
///     name="tf-test-bucket-name-_34962",
///     location="us-west1",
///     uniform_bucket_level_access=True)
/// tf_test_connection = gcp.bigquery.Connection("tf_test_connection",
///     connection_id="tf-test-connection-_74000",
///     location="us-central1",
///     friendly_name="tf-test-connection-_75125",
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
///         Name = "tf-test-bucket-name-_34962",
///         Location = "us-west1",
///         UniformBucketLevelAccess = true,
///     });
///
///     var tfTestConnection = new Gcp.BigQuery.Connection("tf_test_connection", new()
///     {
///         ConnectionId = "tf-test-connection-_74000",
///         Location = "us-central1",
///         FriendlyName = "tf-test-connection-_75125",
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
/// 			Name:                     pulumi.String("tf-test-bucket-name-_34962"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestConnection, err := bigquery.NewConnection(ctx, "tf_test_connection", &bigquery.ConnectionArgs{
/// 			ConnectionId:  pulumi.String("tf-test-connection-_74000"),
/// 			Location:      pulumi.String("us-central1"),
/// 			FriendlyName:  pulumi.String("tf-test-connection-_75125"),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("tf-test-bucket-name-_34962")
///             .location("us-west1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var tfTestConnection = new Connection("tfTestConnection", ConnectionArgs.builder()
///             .connectionId("tf-test-connection-_74000")
///             .location("us-central1")
///             .friendlyName("tf-test-connection-_75125")
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
///       name: tf-test-bucket-name-_34962
///       location: us-west1
///       uniformBucketLevelAccess: true
///   tfTestConnection:
///     type: gcp:bigquery:Connection
///     name: tf_test_connection
///     properties:
///       connectionId: tf-test-connection-_74000
///       location: us-central1
///       friendlyName: tf-test-connection-_75125
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
///     name: "tf-test-bucket-name-_88722",
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
///     name="tf-test-bucket-name-_88722",
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
///         Name = "tf-test-bucket-name-_88722",
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
/// 			Name:                     pulumi.String("tf-test-bucket-name-_88722"),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("tf-test-bucket-name-_88722")
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
///       name: tf-test-bucket-name-_88722
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
///     datasetId: "tf_dataplex_test_dataset_id__39249",
///     defaultTableExpirationMs: 3600000,
/// });
/// const tfDataplexTestTable = new gcp.bigquery.Table("tf_dataplex_test_table", {
///     datasetId: tfDataplexTestDataset.datasetId,
///     tableId: "tf_dataplex_test_table_id__74391",
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
///     dataDocumentationSpec: {},
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tf_dataplex_test_dataset = gcp.bigquery.Dataset("tf_dataplex_test_dataset",
///     dataset_id="tf_dataplex_test_dataset_id__39249",
///     default_table_expiration_ms=3600000)
/// tf_dataplex_test_table = gcp.bigquery.Table("tf_dataplex_test_table",
///     dataset_id=tf_dataplex_test_dataset.dataset_id,
///     table_id="tf_dataplex_test_table_id__74391",
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
///         DatasetId = "tf_dataplex_test_dataset_id__39249",
///         DefaultTableExpirationMs = 3600000,
///     });
///
///     var tfDataplexTestTable = new Gcp.BigQuery.Table("tf_dataplex_test_table", new()
///     {
///         DatasetId = tfDataplexTestDataset.DatasetId,
///         TableId = "tf_dataplex_test_table_id__74391",
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
/// 			DatasetId:                pulumi.String("tf_dataplex_test_dataset_id__39249"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfDataplexTestTable, err := bigquery.NewTable(ctx, "tf_dataplex_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfDataplexTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_dataplex_test_table_id__74391"),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .datasetId("tf_dataplex_test_dataset_id__39249")
///             .defaultTableExpirationMs(3600000)
///             .build());
///
///         var tfDataplexTestTable = new Table("tfDataplexTestTable", TableArgs.builder()
///             .datasetId(tfDataplexTestDataset.datasetId())
///             .tableId("tf_dataplex_test_table_id__74391")
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
///       datasetId: tf_dataplex_test_dataset_id__39249
///       defaultTableExpirationMs: 3.6e+06
///   tfDataplexTestTable:
///     type: gcp:bigquery:Table
///     name: tf_dataplex_test_table
///     properties:
///       datasetId: ${tfDataplexTestDataset.datasetId}
///       tableId: tf_dataplex_test_table_id__74391
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
///       dataDocumentationSpec: {}
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
///     datasetId: "tf_dataplex_test_dataset_id__16511",
///     defaultTableExpirationMs: 3600000,
/// });
/// const tfDataplexTestTable = new gcp.bigquery.Table("tf_dataplex_test_table", {
///     datasetId: tfDataplexTestDataset.datasetId,
///     tableId: "tf_dataplex_test_table_id__8493",
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
///     dataset_id="tf_dataplex_test_dataset_id__16511",
///     default_table_expiration_ms=3600000)
/// tf_dataplex_test_table = gcp.bigquery.Table("tf_dataplex_test_table",
///     dataset_id=tf_dataplex_test_dataset.dataset_id,
///     table_id="tf_dataplex_test_table_id__8493",
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
///         DatasetId = "tf_dataplex_test_dataset_id__16511",
///         DefaultTableExpirationMs = 3600000,
///     });
///
///     var tfDataplexTestTable = new Gcp.BigQuery.Table("tf_dataplex_test_table", new()
///     {
///         DatasetId = tfDataplexTestDataset.DatasetId,
///         TableId = "tf_dataplex_test_table_id__8493",
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
/// 			DatasetId:                pulumi.String("tf_dataplex_test_dataset_id__16511"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfDataplexTestTable, err := bigquery.NewTable(ctx, "tf_dataplex_test_table", &bigquery.TableArgs{
/// 			DatasetId:          tfDataplexTestDataset.DatasetId,
/// 			TableId:            pulumi.String("tf_dataplex_test_table_id__8493"),
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .datasetId("tf_dataplex_test_dataset_id__16511")
///             .defaultTableExpirationMs(3600000)
///             .build());
///
///         var tfDataplexTestTable = new Table("tfDataplexTestTable", TableArgs.builder()
///             .datasetId(tfDataplexTestDataset.datasetId())
///             .tableId("tf_dataplex_test_table_id__8493")
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
///       datasetId: tf_dataplex_test_dataset_id__16511
///       defaultTableExpirationMs: 3.6e+06
///   tfDataplexTestTable:
///     type: gcp:bigquery:Table
///     name: tf_dataplex_test_table
///     properties:
///       datasetId: ${tfDataplexTestDataset.datasetId}
///       tableId: tf_dataplex_test_table_id__8493
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
///
/// ## Import
///
/// Datascan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}`
///
/// * `{{project}}/{{location}}/{{data_scan_id}}`
///
/// * `{{location}}/{{data_scan_id}}`
///
/// * `{{data_scan_id}}`
///
/// When using the `pulumi import` command, Datascan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{project}}/{{location}}/{{data_scan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{location}}/{{data_scan_id}}
/// ```
///
/// ```sh
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
  late final pulumi.Output<Map<String, dynamic>?> dataDocumentationSpec;

  /// DataProfileScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataProfileSpec?> dataProfileSpec;

  /// DataQualityScan related setting.
  /// Structure is documented below.
  late final pulumi.Output<DatascanDataQualitySpec?> dataQualitySpec;

  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  late final pulumi.Output<String> dataScanId;

  /// Description of the scan.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// DataScan execution settings.
  /// Structure is documented below.
  late final pulumi.Output<DatascanExecutionSpec> executionSpec;

  /// Status of the data scan execution.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> executionStatuses;

  /// User-defined labels for the scan. A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the data scan should reside.
  late final pulumi.Output<String> location;

  /// The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a project_id or project_number and locationId refers to a GCP region.
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
    data = registerOutput<DatascanData>('data');
    dataDiscoverySpec = registerOutput<DatascanDataDiscoverySpec?>(
      'dataDiscoverySpec',
    );
    dataDocumentationSpec = registerOutput<Map<String, dynamic>?>(
      'dataDocumentationSpec',
    );
    dataProfileSpec = registerOutput<DatascanDataProfileSpec?>(
      'dataProfileSpec',
    );
    dataQualitySpec = registerOutput<DatascanDataQualitySpec?>(
      'dataQualitySpec',
    );
    dataScanId = registerOutput<String>('dataScanId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionSpec = registerOutput<DatascanExecutionSpec>('executionSpec');
    executionStatuses = registerOutput<List<Map<String, dynamic>>>(
      'executionStatuses',
    );
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
    data = registerOutput<DatascanData>('data');
    dataDiscoverySpec = registerOutput<DatascanDataDiscoverySpec?>(
      'dataDiscoverySpec',
    );
    dataDocumentationSpec = registerOutput<Map<String, dynamic>?>(
      'dataDocumentationSpec',
    );
    dataProfileSpec = registerOutput<DatascanDataProfileSpec?>(
      'dataProfileSpec',
    );
    dataQualitySpec = registerOutput<DatascanDataQualitySpec?>(
      'dataQualitySpec',
    );
    dataScanId = registerOutput<String>('dataScanId');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    executionSpec = registerOutput<DatascanExecutionSpec>('executionSpec');
    executionStatuses = registerOutput<List<Map<String, dynamic>>>(
      'executionStatuses',
    );
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
