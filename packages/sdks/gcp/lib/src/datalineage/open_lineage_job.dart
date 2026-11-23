import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_args.dart';
import 'open_lineage_job_input.dart';
import 'open_lineage_job_output.dart';
import 'open_lineage_job_state.dart';

/// Static lineage represented in OpenLineage format.
///
/// Defines lineage between datasets in OpenLineage format and publishes it through the Data Lineage API.
///
/// This resource is a stop-gap until static lineage endpoints are available in Knowledge Catalog. It can be used to version control declared lineage alongside the environment managed by Terraform.
///
/// This resource emits OpenLineage `RunEvent` payloads directly to the Data Lineage API. It does not rely on OpenLineage client libraries.
/// Each create/update emits a `COMPLETE` event and does not emit a preceding `START` event.
/// A standalone `COMPLETE` event is a valid, complete lineage record: `START` events are only needed to track run duration for runtime lineage, while this resource records static lineage that the Data Lineage API requires to be wrapped in a run.
///
/// This resource is **not importable** because there is no 1:1 mapping between the OpenLineage representation and the Knowledge Catalog process and run resources created by the API.
///
/// During refresh, Terraform reads the latest run for the tracked process and stores it in state. If external systems emit additional runs for that process, this field may change accordingly. The update path emits a new event from the current configuration, which appends a new run to the process.
///
///
/// To get more information about OpenLineageJob, see:
///
/// * [API documentation](https://docs.cloud.google.com/dataplex/docs/reference/data-lineage/rpc/google.cloud.datacatalog.lineage.v1)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/dataplex/docs/open-lineage)
///
/// ## Example Usage
///
/// ### Data Lineage Open Lineage Job Simple
///
/// This example shows the minimal form of the resource. It can be used when you want to declare a job only through its input and output datasets, or when you want to record dataset lineage with a lightweight mock job definition.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const simple = new gcp.datalineage.OpenLineageJob("simple", {
///     namespace: "example_simple_namespace",
///     name: "example_simple_name",
///     description: "Nightly ETL from raw to curated",
///     inputs: [{
///         namespace: "gs://example-bucket/",
///         name: "warehouse/raw_dataset_simple/source_table_1",
///     }],
///     outputs: [{
///         namespace: "gs://example-bucket/",
///         name: "warehouse/target_simple/target_table_1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// simple = gcp.datalineage.OpenLineageJob("simple",
///     namespace="example_simple_namespace",
///     name="example_simple_name",
///     description="Nightly ETL from raw to curated",
///     inputs=[{
///         "namespace": "gs://example-bucket/",
///         "name": "warehouse/raw_dataset_simple/source_table_1",
///     }],
///     outputs=[{
///         "namespace": "gs://example-bucket/",
///         "name": "warehouse/target_simple/target_table_1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simple = new Gcp.DataLineage.OpenLineageJob("simple", new()
///     {
///         Namespace = "example_simple_namespace",
///         Name = "example_simple_name",
///         Description = "Nightly ETL from raw to curated",
///         Inputs = new[]
///         {
///             new Gcp.DataLineage.Inputs.OpenLineageJobInputArgs
///             {
///                 Namespace = "gs://example-bucket/",
///                 Name = "warehouse/raw_dataset_simple/source_table_1",
///             },
///         },
///         Outputs = new[]
///         {
///             new Gcp.DataLineage.Inputs.OpenLineageJobOutputArgs
///             {
///                 Namespace = "gs://example-bucket/",
///                 Name = "warehouse/target_simple/target_table_1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalineage.NewOpenLineageJob(ctx, "simple", &datalineage.OpenLineageJobArgs{
/// 			Namespace:   pulumi.String("example_simple_namespace"),
/// 			Name:        pulumi.String("example_simple_name"),
/// 			Description: pulumi.String("Nightly ETL from raw to curated"),
/// 			Inputs: datalineage.OpenLineageJobInputTypeArray{
/// 				&datalineage.OpenLineageJobInputTypeArgs{
/// 					Namespace: pulumi.String("gs://example-bucket/"),
/// 					Name:      pulumi.String("warehouse/raw_dataset_simple/source_table_1"),
/// 				},
/// 			},
/// 			Outputs: datalineage.OpenLineageJobOutputTypeArray{
/// 				&datalineage.OpenLineageJobOutputTypeArgs{
/// 					Namespace: pulumi.String("gs://example-bucket/"),
/// 					Name:      pulumi.String("warehouse/target_simple/target_table_1"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datalineage_open_lineage_job" "simple" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   namespace   = "example_simple_namespace"
///   name        = "example_simple_name"
///   description = "Nightly ETL from raw to curated"
///   inputs {
///     namespace = "gs://example-bucket/"
///     name      = "warehouse/raw_dataset_simple/source_table_1"
///   }
///   outputs {
///     namespace = "gs://example-bucket/"
///     name      = "warehouse/target_simple/target_table_1"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datalineage.OpenLineageJob;
/// import com.pulumi.gcp.datalineage.OpenLineageJobArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobInputArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputArgs;
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
///         var simple = new OpenLineageJob("simple", OpenLineageJobArgs.builder()
///             .namespace("example_simple_namespace")
///             .name("example_simple_name")
///             .description("Nightly ETL from raw to curated")
///             .inputs(OpenLineageJobInputArgs.builder()
///                 .namespace("gs://example-bucket/")
///                 .name("warehouse/raw_dataset_simple/source_table_1")
///                 .build())
///             .outputs(OpenLineageJobOutputArgs.builder()
///                 .namespace("gs://example-bucket/")
///                 .name("warehouse/target_simple/target_table_1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simple:
///     type: gcp:datalineage:OpenLineageJob
///     properties:
///       namespace: example_simple_namespace
///       name: example_simple_name
///       description: Nightly ETL from raw to curated
///       inputs:
///         - namespace: gs://example-bucket/
///           name: warehouse/raw_dataset_simple/source_table_1
///       outputs:
///         - namespace: gs://example-bucket/
///           name: warehouse/target_simple/target_table_1
/// ```
///
/// ### Data Lineage Open Lineage Job With Facets
///
/// This example shows a resource that defines all available facets.
/// The resource represents a job running a SQL query with following logic:
///
/// ```sql
/// -- my-project-name.raw_dataset_with_facets.source_table_1
/// --  schema: (a int, b string)
/// --  location: gs://example-bucket/warehouse/raw_dataset/source_table_1
/// -- my-project-name.raw_dataset_with_facets.source_table_2
/// --  schema: (a int, c int)
/// --  location: gs://example-bucket/warehouse/raw_dataset/source_table_2
///
/// CREATE TABLE target_table_1
/// AS SELECT
///     t1.a as ident,
///     CONCAT(b, 'transformation') as trans,
///     SUM(c) as agg
/// FROM
///     (SELECT a, c from source_table_2 where a > 1) t2
/// JOIN source_table_1 t1 on t1.a = t2.a
/// GROUP BY t1.a, b
/// ```
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fullJob = new gcp.datalineage.OpenLineageJob("full_job", {
///     namespace: "testNamespace",
///     name: "test_full_job",
///     description: "Test resource with all available facets",
///     inputs: [
///         {
///             namespace: "gs://example-bucket/",
///             name: "warehouse/raw_dataset/source_table_1",
///             symlinks: [{
///                 namespace: "bigquery",
///                 name: "my-project-name.raw_dataset_with_facets.source_table_1",
///                 type: "TABLE",
///             }],
///             catalog: {
///                 framework: "iceberg",
///                 type: "bigquery",
///                 name: "example-catalog",
///             },
///         },
///         {
///             namespace: "gs://example-bucket/",
///             name: "warehouse/raw_dataset/source_table_2",
///             symlinks: [{
///                 namespace: "bigquery",
///                 name: "my-project-name.raw_dataset_with_facets.source_table_2",
///                 type: "TABLE",
///             }],
///             catalog: {
///                 framework: "iceberg",
///                 type: "bigquery",
///                 name: "example-catalog",
///             },
///         },
///     ],
///     outputs: [{
///         namespace: "gs://example-bucket/",
///         name: "warehouse/raw_dataset/target_table_1",
///         symlinks: [{
///             namespace: "bigquery",
///             name: "my-project-name.raw_dataset_with_facets.target_table_1",
///             type: "TABLE",
///         }],
///         catalog: {
///             framework: "iceberg",
///             type: "bigquery",
///             name: "example-catalog",
///         },
///         columnLineage: {
///             datasetInputs: [
///                 {
///                     namespace: "gs://example-bucket/",
///                     name: "warehouse/raw_dataset/source_table_1",
///                     field: "a",
///                     transformations: [
///                         {
///                             type: "INDIRECT",
///                             subtype: "GROUP_BY",
///                         },
///                         {
///                             type: "INDIRECT",
///                             subtype: "JOIN",
///                         },
///                         {
///                             type: "INDIRECT",
///                             subtype: "FILTER",
///                         },
///                     ],
///                 },
///                 {
///                     namespace: "gs://example-bucket/",
///                     name: "warehouse/raw_dataset/source_table_1",
///                     field: "b",
///                     transformations: [{
///                         type: "INDIRECT",
///                         subtype: "GROUP_BY",
///                     }],
///                 },
///                 {
///                     namespace: "gs://example-bucket/",
///                     name: "warehouse/raw_dataset/source_table_2",
///                     field: "a",
///                     transformations: [
///                         {
///                             type: "INDIRECT",
///                             subtype: "JOIN",
///                         },
///                         {
///                             type: "INDIRECT",
///                             subtype: "FILTER",
///                         },
///                     ],
///                 },
///             ],
///             fields: [
///                 {
///                     name: "ident",
///                     inputs: [{
///                         namespace: "gs://example-bucket/",
///                         name: "warehouse/raw_dataset/source_table_1",
///                         field: "a",
///                         transformations: [{
///                             type: "DIRECT",
///                             subtype: "IDENTITY",
///                         }],
///                     }],
///                 },
///                 {
///                     name: "trans",
///                     inputs: [{
///                         namespace: "gs://example-bucket/",
///                         name: "warehouse/raw_dataset/source_table_1",
///                         field: "b",
///                         transformations: [{
///                             type: "DIRECT",
///                             subtype: "TRANSFORMATION",
///                         }],
///                     }],
///                 },
///                 {
///                     name: "agg",
///                     inputs: [{
///                         namespace: "gs://example-bucket/",
///                         name: "warehouse/raw_dataset/source_table_2",
///                         field: "c",
///                         transformations: [{
///                             type: "DIRECT",
///                             subtype: "AGGREGATION",
///                         }],
///                     }],
///                 },
///             ],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// full_job = gcp.datalineage.OpenLineageJob("full_job",
///     namespace="testNamespace",
///     name="test_full_job",
///     description="Test resource with all available facets",
///     inputs=[
///         {
///             "namespace": "gs://example-bucket/",
///             "name": "warehouse/raw_dataset/source_table_1",
///             "symlinks": [{
///                 "namespace": "bigquery",
///                 "name": "my-project-name.raw_dataset_with_facets.source_table_1",
///                 "type": "TABLE",
///             }],
///             "catalog": {
///                 "framework": "iceberg",
///                 "type": "bigquery",
///                 "name": "example-catalog",
///             },
///         },
///         {
///             "namespace": "gs://example-bucket/",
///             "name": "warehouse/raw_dataset/source_table_2",
///             "symlinks": [{
///                 "namespace": "bigquery",
///                 "name": "my-project-name.raw_dataset_with_facets.source_table_2",
///                 "type": "TABLE",
///             }],
///             "catalog": {
///                 "framework": "iceberg",
///                 "type": "bigquery",
///                 "name": "example-catalog",
///             },
///         },
///     ],
///     outputs=[{
///         "namespace": "gs://example-bucket/",
///         "name": "warehouse/raw_dataset/target_table_1",
///         "symlinks": [{
///             "namespace": "bigquery",
///             "name": "my-project-name.raw_dataset_with_facets.target_table_1",
///             "type": "TABLE",
///         }],
///         "catalog": {
///             "framework": "iceberg",
///             "type": "bigquery",
///             "name": "example-catalog",
///         },
///         "column_lineage": {
///             "dataset_inputs": [
///                 {
///                     "namespace": "gs://example-bucket/",
///                     "name": "warehouse/raw_dataset/source_table_1",
///                     "field": "a",
///                     "transformations": [
///                         {
///                             "type": "INDIRECT",
///                             "subtype": "GROUP_BY",
///                         },
///                         {
///                             "type": "INDIRECT",
///                             "subtype": "JOIN",
///                         },
///                         {
///                             "type": "INDIRECT",
///                             "subtype": "FILTER",
///                         },
///                     ],
///                 },
///                 {
///                     "namespace": "gs://example-bucket/",
///                     "name": "warehouse/raw_dataset/source_table_1",
///                     "field": "b",
///                     "transformations": [{
///                         "type": "INDIRECT",
///                         "subtype": "GROUP_BY",
///                     }],
///                 },
///                 {
///                     "namespace": "gs://example-bucket/",
///                     "name": "warehouse/raw_dataset/source_table_2",
///                     "field": "a",
///                     "transformations": [
///                         {
///                             "type": "INDIRECT",
///                             "subtype": "JOIN",
///                         },
///                         {
///                             "type": "INDIRECT",
///                             "subtype": "FILTER",
///                         },
///                     ],
///                 },
///             ],
///             "fields": [
///                 {
///                     "name": "ident",
///                     "inputs": [{
///                         "namespace": "gs://example-bucket/",
///                         "name": "warehouse/raw_dataset/source_table_1",
///                         "field": "a",
///                         "transformations": [{
///                             "type": "DIRECT",
///                             "subtype": "IDENTITY",
///                         }],
///                     }],
///                 },
///                 {
///                     "name": "trans",
///                     "inputs": [{
///                         "namespace": "gs://example-bucket/",
///                         "name": "warehouse/raw_dataset/source_table_1",
///                         "field": "b",
///                         "transformations": [{
///                             "type": "DIRECT",
///                             "subtype": "TRANSFORMATION",
///                         }],
///                     }],
///                 },
///                 {
///                     "name": "agg",
///                     "inputs": [{
///                         "namespace": "gs://example-bucket/",
///                         "name": "warehouse/raw_dataset/source_table_2",
///                         "field": "c",
///                         "transformations": [{
///                             "type": "DIRECT",
///                             "subtype": "AGGREGATION",
///                         }],
///                     }],
///                 },
///             ],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fullJob = new Gcp.DataLineage.OpenLineageJob("full_job", new()
///     {
///         Namespace = "testNamespace",
///         Name = "test_full_job",
///         Description = "Test resource with all available facets",
///         Inputs = new[]
///         {
///             new Gcp.DataLineage.Inputs.OpenLineageJobInputArgs
///             {
///                 Namespace = "gs://example-bucket/",
///                 Name = "warehouse/raw_dataset/source_table_1",
///                 Symlinks = new[]
///                 {
///                     new Gcp.DataLineage.Inputs.OpenLineageJobInputSymlinkArgs
///                     {
///                         Namespace = "bigquery",
///                         Name = "my-project-name.raw_dataset_with_facets.source_table_1",
///                         Type = "TABLE",
///                     },
///                 },
///                 Catalog = new Gcp.DataLineage.Inputs.OpenLineageJobInputCatalogArgs
///                 {
///                     Framework = "iceberg",
///                     Type = "bigquery",
///                     Name = "example-catalog",
///                 },
///             },
///             new Gcp.DataLineage.Inputs.OpenLineageJobInputArgs
///             {
///                 Namespace = "gs://example-bucket/",
///                 Name = "warehouse/raw_dataset/source_table_2",
///                 Symlinks = new[]
///                 {
///                     new Gcp.DataLineage.Inputs.OpenLineageJobInputSymlinkArgs
///                     {
///                         Namespace = "bigquery",
///                         Name = "my-project-name.raw_dataset_with_facets.source_table_2",
///                         Type = "TABLE",
///                     },
///                 },
///                 Catalog = new Gcp.DataLineage.Inputs.OpenLineageJobInputCatalogArgs
///                 {
///                     Framework = "iceberg",
///                     Type = "bigquery",
///                     Name = "example-catalog",
///                 },
///             },
///         },
///         Outputs = new[]
///         {
///             new Gcp.DataLineage.Inputs.OpenLineageJobOutputArgs
///             {
///                 Namespace = "gs://example-bucket/",
///                 Name = "warehouse/raw_dataset/target_table_1",
///                 Symlinks = new[]
///                 {
///                     new Gcp.DataLineage.Inputs.OpenLineageJobOutputSymlinkArgs
///                     {
///                         Namespace = "bigquery",
///                         Name = "my-project-name.raw_dataset_with_facets.target_table_1",
///                         Type = "TABLE",
///                     },
///                 },
///                 Catalog = new Gcp.DataLineage.Inputs.OpenLineageJobOutputCatalogArgs
///                 {
///                     Framework = "iceberg",
///                     Type = "bigquery",
///                     Name = "example-catalog",
///                 },
///                 ColumnLineage = new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageArgs
///                 {
///                     DatasetInputs = new[]
///                     {
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputArgs
///                         {
///                             Namespace = "gs://example-bucket/",
///                             Name = "warehouse/raw_dataset/source_table_1",
///                             Field = "a",
///                             Transformations = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "GROUP_BY",
///                                 },
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "JOIN",
///                                 },
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "FILTER",
///                                 },
///                             },
///                         },
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputArgs
///                         {
///                             Namespace = "gs://example-bucket/",
///                             Name = "warehouse/raw_dataset/source_table_1",
///                             Field = "b",
///                             Transformations = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "GROUP_BY",
///                                 },
///                             },
///                         },
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputArgs
///                         {
///                             Namespace = "gs://example-bucket/",
///                             Name = "warehouse/raw_dataset/source_table_2",
///                             Field = "a",
///                             Transformations = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "JOIN",
///                                 },
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs
///                                 {
///                                     Type = "INDIRECT",
///                                     Subtype = "FILTER",
///                                 },
///                             },
///                         },
///                     },
///                     Fields = new[]
///                     {
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldArgs
///                         {
///                             Name = "ident",
///                             Inputs = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputArgs
///                                 {
///                                     Namespace = "gs://example-bucket/",
///                                     Name = "warehouse/raw_dataset/source_table_1",
///                                     Field = "a",
///                                     Transformations = new[]
///                                     {
///                                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs
///                                         {
///                                             Type = "DIRECT",
///                                             Subtype = "IDENTITY",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldArgs
///                         {
///                             Name = "trans",
///                             Inputs = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputArgs
///                                 {
///                                     Namespace = "gs://example-bucket/",
///                                     Name = "warehouse/raw_dataset/source_table_1",
///                                     Field = "b",
///                                     Transformations = new[]
///                                     {
///                                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs
///                                         {
///                                             Type = "DIRECT",
///                                             Subtype = "TRANSFORMATION",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldArgs
///                         {
///                             Name = "agg",
///                             Inputs = new[]
///                             {
///                                 new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputArgs
///                                 {
///                                     Namespace = "gs://example-bucket/",
///                                     Name = "warehouse/raw_dataset/source_table_2",
///                                     Field = "c",
///                                     Transformations = new[]
///                                     {
///                                         new Gcp.DataLineage.Inputs.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs
///                                         {
///                                             Type = "DIRECT",
///                                             Subtype = "AGGREGATION",
///                                         },
///                                     },
///                                 },
///                             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalineage.NewOpenLineageJob(ctx, "full_job", &datalineage.OpenLineageJobArgs{
/// 			Namespace:   pulumi.String("testNamespace"),
/// 			Name:        pulumi.String("test_full_job"),
/// 			Description: pulumi.String("Test resource with all available facets"),
/// 			Inputs: datalineage.OpenLineageJobInputTypeArray{
/// 				&datalineage.OpenLineageJobInputTypeArgs{
/// 					Namespace: pulumi.String("gs://example-bucket/"),
/// 					Name:      pulumi.String("warehouse/raw_dataset/source_table_1"),
/// 					Symlinks: datalineage.OpenLineageJobInputSymlinkArray{
/// 						&datalineage.OpenLineageJobInputSymlinkArgs{
/// 							Namespace: pulumi.String("bigquery"),
/// 							Name:      pulumi.String("my-project-name.raw_dataset_with_facets.source_table_1"),
/// 							Type:      pulumi.String("TABLE"),
/// 						},
/// 					},
/// 					Catalog: &datalineage.OpenLineageJobInputCatalogArgs{
/// 						Framework: pulumi.String("iceberg"),
/// 						Type:      pulumi.String("bigquery"),
/// 						Name:      pulumi.String("example-catalog"),
/// 					},
/// 				},
/// 				&datalineage.OpenLineageJobInputTypeArgs{
/// 					Namespace: pulumi.String("gs://example-bucket/"),
/// 					Name:      pulumi.String("warehouse/raw_dataset/source_table_2"),
/// 					Symlinks: datalineage.OpenLineageJobInputSymlinkArray{
/// 						&datalineage.OpenLineageJobInputSymlinkArgs{
/// 							Namespace: pulumi.String("bigquery"),
/// 							Name:      pulumi.String("my-project-name.raw_dataset_with_facets.source_table_2"),
/// 							Type:      pulumi.String("TABLE"),
/// 						},
/// 					},
/// 					Catalog: &datalineage.OpenLineageJobInputCatalogArgs{
/// 						Framework: pulumi.String("iceberg"),
/// 						Type:      pulumi.String("bigquery"),
/// 						Name:      pulumi.String("example-catalog"),
/// 					},
/// 				},
/// 			},
/// 			Outputs: datalineage.OpenLineageJobOutputTypeArray{
/// 				&datalineage.OpenLineageJobOutputTypeArgs{
/// 					Namespace: pulumi.String("gs://example-bucket/"),
/// 					Name:      pulumi.String("warehouse/raw_dataset/target_table_1"),
/// 					Symlinks: datalineage.OpenLineageJobOutputSymlinkArray{
/// 						&datalineage.OpenLineageJobOutputSymlinkArgs{
/// 							Namespace: pulumi.String("bigquery"),
/// 							Name:      pulumi.String("my-project-name.raw_dataset_with_facets.target_table_1"),
/// 							Type:      pulumi.String("TABLE"),
/// 						},
/// 					},
/// 					Catalog: &datalineage.OpenLineageJobOutputCatalogArgs{
/// 						Framework: pulumi.String("iceberg"),
/// 						Type:      pulumi.String("bigquery"),
/// 						Name:      pulumi.String("example-catalog"),
/// 					},
/// 					ColumnLineage: &datalineage.OpenLineageJobOutputColumnLineageArgs{
/// 						DatasetInputs: datalineage.OpenLineageJobOutputColumnLineageDatasetInputArray{
/// 							&datalineage.OpenLineageJobOutputColumnLineageDatasetInputArgs{
/// 								Namespace: pulumi.String("gs://example-bucket/"),
/// 								Name:      pulumi.String("warehouse/raw_dataset/source_table_1"),
/// 								Field:     pulumi.String("a"),
/// 								Transformations: datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("GROUP_BY"),
/// 									},
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("JOIN"),
/// 									},
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("FILTER"),
/// 									},
/// 								},
/// 							},
/// 							&datalineage.OpenLineageJobOutputColumnLineageDatasetInputArgs{
/// 								Namespace: pulumi.String("gs://example-bucket/"),
/// 								Name:      pulumi.String("warehouse/raw_dataset/source_table_1"),
/// 								Field:     pulumi.String("b"),
/// 								Transformations: datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("GROUP_BY"),
/// 									},
/// 								},
/// 							},
/// 							&datalineage.OpenLineageJobOutputColumnLineageDatasetInputArgs{
/// 								Namespace: pulumi.String("gs://example-bucket/"),
/// 								Name:      pulumi.String("warehouse/raw_dataset/source_table_2"),
/// 								Field:     pulumi.String("a"),
/// 								Transformations: datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("JOIN"),
/// 									},
/// 									&datalineage.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs{
/// 										Type:    pulumi.String("INDIRECT"),
/// 										Subtype: pulumi.String("FILTER"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Fields: datalineage.OpenLineageJobOutputColumnLineageFieldArray{
/// 							&datalineage.OpenLineageJobOutputColumnLineageFieldArgs{
/// 								Name: pulumi.String("ident"),
/// 								Inputs: datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArgs{
/// 										Namespace: pulumi.String("gs://example-bucket/"),
/// 										Name:      pulumi.String("warehouse/raw_dataset/source_table_1"),
/// 										Field:     pulumi.String("a"),
/// 										Transformations: datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArray{
/// 											&datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs{
/// 												Type:    pulumi.String("DIRECT"),
/// 												Subtype: pulumi.String("IDENTITY"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&datalineage.OpenLineageJobOutputColumnLineageFieldArgs{
/// 								Name: pulumi.String("trans"),
/// 								Inputs: datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArgs{
/// 										Namespace: pulumi.String("gs://example-bucket/"),
/// 										Name:      pulumi.String("warehouse/raw_dataset/source_table_1"),
/// 										Field:     pulumi.String("b"),
/// 										Transformations: datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArray{
/// 											&datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs{
/// 												Type:    pulumi.String("DIRECT"),
/// 												Subtype: pulumi.String("TRANSFORMATION"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&datalineage.OpenLineageJobOutputColumnLineageFieldArgs{
/// 								Name: pulumi.String("agg"),
/// 								Inputs: datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArray{
/// 									&datalineage.OpenLineageJobOutputColumnLineageFieldInputTypeArgs{
/// 										Namespace: pulumi.String("gs://example-bucket/"),
/// 										Name:      pulumi.String("warehouse/raw_dataset/source_table_2"),
/// 										Field:     pulumi.String("c"),
/// 										Transformations: datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArray{
/// 											&datalineage.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs{
/// 												Type:    pulumi.String("DIRECT"),
/// 												Subtype: pulumi.String("AGGREGATION"),
/// 											},
/// 										},
/// 									},
/// 								},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datalineage_open_lineage_job" "full_job" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   namespace   = "testNamespace"
///   name        = "test_full_job"
///   description = "Test resource with all available facets"
///   inputs {
///     namespace = "gs://example-bucket/"
///     name      = "warehouse/raw_dataset/source_table_1"
///     symlinks {
///       namespace = "bigquery"
///       name      = "my-project-name.raw_dataset_with_facets.source_table_1"
///       type      = "TABLE"
///     }
///     catalog = {
///       framework = "iceberg"
///       type      = "bigquery"
///       name      = "example-catalog"
///     }
///   }
///   inputs {
///     namespace = "gs://example-bucket/"
///     name      = "warehouse/raw_dataset/source_table_2"
///     symlinks {
///       namespace = "bigquery"
///       name      = "my-project-name.raw_dataset_with_facets.source_table_2"
///       type      = "TABLE"
///     }
///     catalog = {
///       framework = "iceberg"
///       type      = "bigquery"
///       name      = "example-catalog"
///     }
///   }
///   outputs {
///     namespace = "gs://example-bucket/"
///     name      = "warehouse/raw_dataset/target_table_1"
///     symlinks {
///       namespace = "bigquery"
///       name      = "my-project-name.raw_dataset_with_facets.target_table_1"
///       type      = "TABLE"
///     }
///     catalog = {
///       framework = "iceberg"
///       type      = "bigquery"
///       name      = "example-catalog"
///     }
///     column_lineage = {
///       dataset_inputs = [{
///         namespace = "gs://example-bucket/"
///         name      = "warehouse/raw_dataset/source_table_1"
///         field     = "a"
///         transformations = [{
///           type    = "INDIRECT"
///           subtype = "GROUP_BY"
///           }, {
///           type    = "INDIRECT"
///           subtype = "JOIN"
///           }, {
///           type    = "INDIRECT"
///           subtype = "FILTER"
///         }]
///         }, {
///         namespace = "gs://example-bucket/"
///         name      = "warehouse/raw_dataset/source_table_1"
///         field     = "b"
///         transformations = [{
///           type    = "INDIRECT"
///           subtype = "GROUP_BY"
///         }]
///         }, {
///         namespace = "gs://example-bucket/"
///         name      = "warehouse/raw_dataset/source_table_2"
///         field     = "a"
///         transformations = [{
///           type    = "INDIRECT"
///           subtype = "JOIN"
///           }, {
///           type    = "INDIRECT"
///           subtype = "FILTER"
///         }]
///       }]
///       fields = [{
///         name = "ident"
///         inputs = [{
///           namespace = "gs://example-bucket/"
///           name      = "warehouse/raw_dataset/source_table_1"
///           field     = "a"
///           transformations = [{
///             type    = "DIRECT"
///             subtype = "IDENTITY"
///           }]
///         }]
///         }, {
///         name = "trans"
///         inputs = [{
///           namespace = "gs://example-bucket/"
///           name      = "warehouse/raw_dataset/source_table_1"
///           field     = "b"
///           transformations = [{
///             type    = "DIRECT"
///             subtype = "TRANSFORMATION"
///           }]
///         }]
///         }, {
///         name = "agg"
///         inputs = [{
///           namespace = "gs://example-bucket/"
///           name      = "warehouse/raw_dataset/source_table_2"
///           field     = "c"
///           transformations = [{
///             type    = "DIRECT"
///             subtype = "AGGREGATION"
///           }]
///         }]
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
/// import com.pulumi.gcp.datalineage.OpenLineageJob;
/// import com.pulumi.gcp.datalineage.OpenLineageJobArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobInputArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobInputSymlinkArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobInputCatalogArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputSymlinkArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputCatalogArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageDatasetInputArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageFieldArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageFieldInputArgs;
/// import com.pulumi.gcp.datalineage.inputs.OpenLineageJobOutputColumnLineageFieldInputTransformationArgs;
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
///         var fullJob = new OpenLineageJob("fullJob", OpenLineageJobArgs.builder()
///             .namespace("testNamespace")
///             .name("test_full_job")
///             .description("Test resource with all available facets")
///             .inputs(
///                 OpenLineageJobInputArgs.builder()
///                     .namespace("gs://example-bucket/")
///                     .name("warehouse/raw_dataset/source_table_1")
///                     .symlinks(OpenLineageJobInputSymlinkArgs.builder()
///                         .namespace("bigquery")
///                         .name("my-project-name.raw_dataset_with_facets.source_table_1")
///                         .type("TABLE")
///                         .build())
///                     .catalog(OpenLineageJobInputCatalogArgs.builder()
///                         .framework("iceberg")
///                         .type("bigquery")
///                         .name("example-catalog")
///                         .build())
///                     .build(),
///                 OpenLineageJobInputArgs.builder()
///                     .namespace("gs://example-bucket/")
///                     .name("warehouse/raw_dataset/source_table_2")
///                     .symlinks(OpenLineageJobInputSymlinkArgs.builder()
///                         .namespace("bigquery")
///                         .name("my-project-name.raw_dataset_with_facets.source_table_2")
///                         .type("TABLE")
///                         .build())
///                     .catalog(OpenLineageJobInputCatalogArgs.builder()
///                         .framework("iceberg")
///                         .type("bigquery")
///                         .name("example-catalog")
///                         .build())
///                     .build())
///             .outputs(OpenLineageJobOutputArgs.builder()
///                 .namespace("gs://example-bucket/")
///                 .name("warehouse/raw_dataset/target_table_1")
///                 .symlinks(OpenLineageJobOutputSymlinkArgs.builder()
///                     .namespace("bigquery")
///                     .name("my-project-name.raw_dataset_with_facets.target_table_1")
///                     .type("TABLE")
///                     .build())
///                 .catalog(OpenLineageJobOutputCatalogArgs.builder()
///                     .framework("iceberg")
///                     .type("bigquery")
///                     .name("example-catalog")
///                     .build())
///                 .columnLineage(OpenLineageJobOutputColumnLineageArgs.builder()
///                     .datasetInputs(
///                         OpenLineageJobOutputColumnLineageDatasetInputArgs.builder()
///                             .namespace("gs://example-bucket/")
///                             .name("warehouse/raw_dataset/source_table_1")
///                             .field("a")
///                             .transformations(
///                                 OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                     .type("INDIRECT")
///                                     .subtype("GROUP_BY")
///                                     .build(),
///                                 OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                     .type("INDIRECT")
///                                     .subtype("JOIN")
///                                     .build(),
///                                 OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                     .type("INDIRECT")
///                                     .subtype("FILTER")
///                                     .build())
///                             .build(),
///                         OpenLineageJobOutputColumnLineageDatasetInputArgs.builder()
///                             .namespace("gs://example-bucket/")
///                             .name("warehouse/raw_dataset/source_table_1")
///                             .field("b")
///                             .transformations(OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                 .type("INDIRECT")
///                                 .subtype("GROUP_BY")
///                                 .build())
///                             .build(),
///                         OpenLineageJobOutputColumnLineageDatasetInputArgs.builder()
///                             .namespace("gs://example-bucket/")
///                             .name("warehouse/raw_dataset/source_table_2")
///                             .field("a")
///                             .transformations(
///                                 OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                     .type("INDIRECT")
///                                     .subtype("JOIN")
///                                     .build(),
///                                 OpenLineageJobOutputColumnLineageDatasetInputTransformationArgs.builder()
///                                     .type("INDIRECT")
///                                     .subtype("FILTER")
///                                     .build())
///                             .build())
///                     .fields(
///                         OpenLineageJobOutputColumnLineageFieldArgs.builder()
///                             .name("ident")
///                             .inputs(OpenLineageJobOutputColumnLineageFieldInputArgs.builder()
///                                 .namespace("gs://example-bucket/")
///                                 .name("warehouse/raw_dataset/source_table_1")
///                                 .field("a")
///                                 .transformations(OpenLineageJobOutputColumnLineageFieldInputTransformationArgs.builder()
///                                     .type("DIRECT")
///                                     .subtype("IDENTITY")
///                                     .build())
///                                 .build())
///                             .build(),
///                         OpenLineageJobOutputColumnLineageFieldArgs.builder()
///                             .name("trans")
///                             .inputs(OpenLineageJobOutputColumnLineageFieldInputArgs.builder()
///                                 .namespace("gs://example-bucket/")
///                                 .name("warehouse/raw_dataset/source_table_1")
///                                 .field("b")
///                                 .transformations(OpenLineageJobOutputColumnLineageFieldInputTransformationArgs.builder()
///                                     .type("DIRECT")
///                                     .subtype("TRANSFORMATION")
///                                     .build())
///                                 .build())
///                             .build(),
///                         OpenLineageJobOutputColumnLineageFieldArgs.builder()
///                             .name("agg")
///                             .inputs(OpenLineageJobOutputColumnLineageFieldInputArgs.builder()
///                                 .namespace("gs://example-bucket/")
///                                 .name("warehouse/raw_dataset/source_table_2")
///                                 .field("c")
///                                 .transformations(OpenLineageJobOutputColumnLineageFieldInputTransformationArgs.builder()
///                                     .type("DIRECT")
///                                     .subtype("AGGREGATION")
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fullJob:
///     type: gcp:datalineage:OpenLineageJob
///     name: full_job
///     properties:
///       namespace: testNamespace
///       name: test_full_job
///       description: Test resource with all available facets
///       inputs:
///         - namespace: gs://example-bucket/
///           name: warehouse/raw_dataset/source_table_1
///           symlinks:
///             - namespace: bigquery
///               name: my-project-name.raw_dataset_with_facets.source_table_1
///               type: TABLE
///           catalog:
///             framework: iceberg
///             type: bigquery
///             name: example-catalog
///         - namespace: gs://example-bucket/
///           name: warehouse/raw_dataset/source_table_2
///           symlinks:
///             - namespace: bigquery
///               name: my-project-name.raw_dataset_with_facets.source_table_2
///               type: TABLE
///           catalog:
///             framework: iceberg
///             type: bigquery
///             name: example-catalog
///       outputs:
///         - namespace: gs://example-bucket/
///           name: warehouse/raw_dataset/target_table_1
///           symlinks:
///             - namespace: bigquery
///               name: my-project-name.raw_dataset_with_facets.target_table_1
///               type: TABLE
///           catalog:
///             framework: iceberg
///             type: bigquery
///             name: example-catalog
///           columnLineage:
///             datasetInputs:
///               - namespace: gs://example-bucket/
///                 name: warehouse/raw_dataset/source_table_1
///                 field: a
///                 transformations:
///                   - type: INDIRECT
///                     subtype: GROUP_BY
///                   - type: INDIRECT
///                     subtype: JOIN
///                   - type: INDIRECT
///                     subtype: FILTER
///               - namespace: gs://example-bucket/
///                 name: warehouse/raw_dataset/source_table_1
///                 field: b
///                 transformations:
///                   - type: INDIRECT
///                     subtype: GROUP_BY
///               - namespace: gs://example-bucket/
///                 name: warehouse/raw_dataset/source_table_2
///                 field: a
///                 transformations:
///                   - type: INDIRECT
///                     subtype: JOIN
///                   - type: INDIRECT
///                     subtype: FILTER
///             fields:
///               - name: ident
///                 inputs:
///                   - namespace: gs://example-bucket/
///                     name: warehouse/raw_dataset/source_table_1
///                     field: a
///                     transformations:
///                       - type: DIRECT
///                         subtype: IDENTITY
///               - name: trans
///                 inputs:
///                   - namespace: gs://example-bucket/
///                     name: warehouse/raw_dataset/source_table_1
///                     field: b
///                     transformations:
///                       - type: DIRECT
///                         subtype: TRANSFORMATION
///               - name: agg
///                 inputs:
///                   - namespace: gs://example-bucket/
///                     name: warehouse/raw_dataset/source_table_2
///                     field: c
///                     transformations:
///                       - type: DIRECT
///                         subtype: AGGREGATION
/// ```
class OpenLineageJob extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the OpenLineage job.
  late final pulumi.Output<String?> description;
  /// Input datasets consumed by this job.
  /// Structure is documented below.
  late final pulumi.Output<List<OpenLineageJobInput>?> inputs;
  /// Name of the OpenLineage job.
  late final pulumi.Output<String> name;
  /// Namespace of the OpenLineage job.
  late final pulumi.Output<String> namespace;
  /// Output datasets produced by this job.
  /// Structure is documented below.
  late final pulumi.Output<List<OpenLineageJobOutput>?> outputs;
  /// (Output)
  /// Data Lineage process identifier.
  late final pulumi.Output<String> process;
  /// (Output)
  /// Latest Data Lineage run identifier.
  late final pulumi.Output<String> run;

  /// Creates a new [OpenLineageJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenLineageJob]. {@macro pulumi_datalineage_open_lineage_job_open_lineage_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenLineageJob(
    String name, {
    OpenLineageJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datalineage/openLineageJob:OpenLineageJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    inputs = registerOutput<List<OpenLineageJobInput>?>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobInput>(guardedValue, (value) => OpenLineageJobInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    outputs = registerOutput<List<OpenLineageJobOutput>?>('outputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobOutput>(guardedValue, (value) => OpenLineageJobOutput.fromMap((value as Map).cast<String, dynamic>())); });
    process = registerOutput<String>('process');
    run = registerOutput<String>('run');
  }

  /// Gets an existing [OpenLineageJob] resource's state with the given [name] and [id].
  static OpenLineageJob get(
    String name,
    pulumi.Input<String> id, {
    OpenLineageJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OpenLineageJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OpenLineageJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datalineage/openLineageJob:OpenLineageJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    inputs = registerOutput<List<OpenLineageJobInput>?>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobInput>(guardedValue, (value) => OpenLineageJobInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    outputs = registerOutput<List<OpenLineageJobOutput>?>('outputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobOutput>(guardedValue, (value) => OpenLineageJobOutput.fromMap((value as Map).cast<String, dynamic>())); });
    process = registerOutput<String>('process');
    run = registerOutput<String>('run');
  }

  /// Creates a typed reference to an existing [OpenLineageJob] resource.
  OpenLineageJob.reference(String urn)
    : super(
        'gcp:datalineage/openLineageJob:OpenLineageJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    inputs = registerOutput<List<OpenLineageJobInput>?>('inputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobInput>(guardedValue, (value) => OpenLineageJobInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    outputs = registerOutput<List<OpenLineageJobOutput>?>('outputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OpenLineageJobOutput>(guardedValue, (value) => OpenLineageJobOutput.fromMap((value as Map).cast<String, dynamic>())); });
    process = registerOutput<String>('process');
    run = registerOutput<String>('run');
  }
}
