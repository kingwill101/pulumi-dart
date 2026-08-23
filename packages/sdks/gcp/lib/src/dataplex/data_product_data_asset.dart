import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_data_asset_args.dart';
import 'data_product_data_asset_state.dart';

/// A data asset resource that can be packaged and shared via a data product.
///
///
/// To get more information about DataProductDataAsset, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataProducts.dataAssets)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/dataplex/docs/manage-data-products)
///
/// ## Example Usage
///
/// ### Dataplex Data Product Data Asset Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.dataplex.DataProduct("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: "tf-test-dp-_32081",
///     displayName: "Parent Data Product",
///     ownerEmails: ["gterraformtestuser@gmail.com"],
///     accessGroups: [{
///         id: "analyst",
///         groupId: "analyst",
///         displayName: "Data Analyst",
///         principal: {
///             googleGroup: "tf-test-analysts-_10393@example.com",
///         },
///     }],
/// });
/// const exampleDataset = new gcp.bigquery.Dataset("example", {
///     project: "my-project-name",
///     datasetId: "tf_test_dataset__33052",
///     location: "us-central1",
/// });
/// const exampleDataProductDataAsset = new gcp.dataplex.DataProductDataAsset("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: example.dataProductId,
///     dataAssetId: "data-product-data-asset",
///     resource: pulumi.interpolate`//bigquery.googleapis.com/projects/${exampleDataset.project}/datasets/${exampleDataset.datasetId}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="tf-test-dp-_32081",
///     display_name="Parent Data Product",
///     owner_emails=["gterraformtestuser@gmail.com"],
///     access_groups=[{
///         "id": "analyst",
///         "group_id": "analyst",
///         "display_name": "Data Analyst",
///         "principal": {
///             "google_group": "tf-test-analysts-_10393@example.com",
///         },
///     }])
/// example_dataset = gcp.bigquery.Dataset("example",
///     project="my-project-name",
///     dataset_id="tf_test_dataset__33052",
///     location="us-central1")
/// example_data_product_data_asset = gcp.dataplex.DataProductDataAsset("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id=example.data_product_id,
///     data_asset_id="data-product-data-asset",
///     resource=pulumi.Output.all(
///         project=example_dataset.project,
///         dataset_id=example_dataset.dataset_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/{resolved_outputs['project']}/datasets/{resolved_outputs['dataset_id']}")
/// )
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "tf-test-dp-_32081",
///         DisplayName = "Parent Data Product",
///         OwnerEmails = new[]
///         {
///             "gterraformtestuser@gmail.com",
///         },
///         AccessGroups = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "analyst",
///                 GroupId = "analyst",
///                 DisplayName = "Data Analyst",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "tf-test-analysts-_10393@example.com",
///                 },
///             },
///         },
///     });
///
///     var exampleDataset = new Gcp.BigQuery.Dataset("example", new()
///     {
///         Project = "my-project-name",
///         DatasetId = "tf_test_dataset__33052",
///         Location = "us-central1",
///     });
///
///     var exampleDataProductDataAsset = new Gcp.DataPlex.DataProductDataAsset("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = example.DataProductId,
///         DataAssetId = "data-product-data-asset",
///         Resource = Output.Tuple(exampleDataset.Project, exampleDataset.DatasetId).Apply(values =>
///         {
///             var project = values.Item1;
///             var datasetId = values.Item2;
///             return $"//bigquery.googleapis.com/projects/{project}/datasets/{datasetId}";
///         }),
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
/// 		example, err := dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("tf-test-dp-_32081"),
/// 			DisplayName:   pulumi.String("Parent Data Product"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("gterraformtestuser@gmail.com"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-analysts-_10393@example.com"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataset, err := bigquery.NewDataset(ctx, "example", &bigquery.DatasetArgs{
/// 			Project:   pulumi.String("my-project-name"),
/// 			DatasetId: pulumi.String("tf_test_dataset__33052"),
/// 			Location:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDataProductDataAsset(ctx, "example", &dataplex.DataProductDataAssetArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: example.DataProductId,
/// 			DataAssetId:   pulumi.String("data-product-data-asset"),
/// 			Resource: pulumi.All(exampleDataset.Project, exampleDataset.DatasetId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				datasetId := _args[1].(string)
/// 				return fmt.Sprintf("//bigquery.googleapis.com/projects/%v/datasets/%v", project, datasetId), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_dataplex_dataproduct" "example" {
///   project         = "my-project-name"
///   location        = "us-central1"
///   data_product_id = "tf-test-dp-_32081"
///   display_name    = "Parent Data Product"
///   owner_emails    = ["gterraformtestuser@gmail.com"]
///   access_groups {
///     id           = "analyst"
///     group_id     = "analyst"
///     display_name = "Data Analyst"
///     principal = {
///       google_group = "tf-test-analysts-_10393@example.com"
///     }
///   }
/// }
/// resource "gcp_bigquery_dataset" "example" {
///   project    = "my-project-name"
///   dataset_id = "tf_test_dataset__33052"
///   location   = "us-central1"
/// }
/// resource "gcp_dataplex_dataproductdataasset" "example" {
///   project         = "my-project-name"
///   location        = "us-central1"
///   data_product_id = gcp_dataplex_dataproduct.example.data_product_id
///   data_asset_id   = "data-product-data-asset"
///   resource        ="//bigquery.googleapis.com/projects/${gcp_bigquery_dataset.example.project}/datasets/${gcp_bigquery_dataset.example.dataset_id}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.dataplex.DataProductDataAsset;
/// import com.pulumi.gcp.dataplex.DataProductDataAssetArgs;
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
///         var example = new DataProduct("example", DataProductArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId("tf-test-dp-_32081")
///             .displayName("Parent Data Product")
///             .ownerEmails("gterraformtestuser@gmail.com")
///             .accessGroups(DataProductAccessGroupArgs.builder()
///                 .id("analyst")
///                 .groupId("analyst")
///                 .displayName("Data Analyst")
///                 .principal(DataProductAccessGroupPrincipalArgs.builder()
///                     .googleGroup("tf-test-analysts-_10393@example.com")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDataset = new Dataset("exampleDataset", DatasetArgs.builder()
///             .project("my-project-name")
///             .datasetId("tf_test_dataset__33052")
///             .location("us-central1")
///             .build());
///
///         var exampleDataProductDataAsset = new DataProductDataAsset("exampleDataProductDataAsset", DataProductDataAssetArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId(example.dataProductId())
///             .dataAssetId("data-product-data-asset")
///             .resource(Output.tuple(exampleDataset.project(), exampleDataset.datasetId()).applyValue(values -> {
///                 var project = values.t1;
///                 var datasetId = values.t2;
///                 return String.format("//bigquery.googleapis.com/projects/%s/datasets/%s", project,datasetId);
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dataplex:DataProduct
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: tf-test-dp-_32081
///       displayName: Parent Data Product
///       ownerEmails:
///         - gterraformtestuser@gmail.com
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst
///           principal:
///             googleGroup: tf-test-analysts-_10393@example.com
///   exampleDataset:
///     type: gcp:bigquery:Dataset
///     name: example
///     properties:
///       project: my-project-name
///       datasetId: tf_test_dataset__33052
///       location: us-central1
///   exampleDataProductDataAsset:
///     type: gcp:dataplex:DataProductDataAsset
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: ${example.dataProductId}
///       dataAssetId: data-product-data-asset
///       resource: //bigquery.googleapis.com/projects/${exampleDataset.project}/datasets/${exampleDataset.datasetId}
/// ```
///
/// ### Dataplex Data Product Data Asset Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.dataplex.DataProduct("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: "tf-test-dp-_3684",
///     displayName: "Full Example Parent DP",
///     ownerEmails: ["gterraformtestuser@gmail.com"],
///     accessGroups: [
///         {
///             id: "analyst",
///             groupId: "analyst",
///             displayName: "Data Analyst",
///             principal: {
///                 googleGroup: "dataproduct-terraform-examples-3@google.com",
///             },
///         },
///         {
///             id: "scientist",
///             groupId: "scientist",
///             displayName: "Data Scientist",
///             principal: {
///                 googleGroup: "dataproduct-terraform-examples-4@google.com",
///             },
///         },
///     ],
/// });
/// const exampleDataset = new gcp.bigquery.Dataset("example", {
///     project: "my-project-name",
///     datasetId: "tf_test_dataset__10719",
///     location: "us-central1",
/// });
/// const exampleDataProductDataAsset = new gcp.dataplex.DataProductDataAsset("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: example.dataProductId,
///     dataAssetId: "data-product-data-asset",
///     resource: pulumi.interpolate`//bigquery.googleapis.com/projects/${exampleDataset.project}/datasets/${exampleDataset.datasetId}`,
///     labels: {
///         env: "prod",
///         critical: "true",
///     },
///     accessGroupConfigs: [
///         {
///             accessGroup: "analyst",
///             iamRoles: ["roles/bigquery.dataViewer"],
///         },
///         {
///             accessGroup: "scientist",
///             iamRoles: ["roles/bigquery.dataEditor"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="tf-test-dp-_3684",
///     display_name="Full Example Parent DP",
///     owner_emails=["gterraformtestuser@gmail.com"],
///     access_groups=[
///         {
///             "id": "analyst",
///             "group_id": "analyst",
///             "display_name": "Data Analyst",
///             "principal": {
///                 "google_group": "dataproduct-terraform-examples-3@google.com",
///             },
///         },
///         {
///             "id": "scientist",
///             "group_id": "scientist",
///             "display_name": "Data Scientist",
///             "principal": {
///                 "google_group": "dataproduct-terraform-examples-4@google.com",
///             },
///         },
///     ])
/// example_dataset = gcp.bigquery.Dataset("example",
///     project="my-project-name",
///     dataset_id="tf_test_dataset__10719",
///     location="us-central1")
/// example_data_product_data_asset = gcp.dataplex.DataProductDataAsset("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id=example.data_product_id,
///     data_asset_id="data-product-data-asset",
///     resource=pulumi.Output.all(
///         project=example_dataset.project,
///         dataset_id=example_dataset.dataset_id
/// ).apply(lambda resolved_outputs: f"//bigquery.googleapis.com/projects/{resolved_outputs['project']}/datasets/{resolved_outputs['dataset_id']}")
/// ,
///     labels={
///         "env": "prod",
///         "critical": "true",
///     },
///     access_group_configs=[
///         {
///             "access_group": "analyst",
///             "iam_roles": ["roles/bigquery.dataViewer"],
///         },
///         {
///             "access_group": "scientist",
///             "iam_roles": ["roles/bigquery.dataEditor"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "tf-test-dp-_3684",
///         DisplayName = "Full Example Parent DP",
///         OwnerEmails = new[]
///         {
///             "gterraformtestuser@gmail.com",
///         },
///         AccessGroups = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "analyst",
///                 GroupId = "analyst",
///                 DisplayName = "Data Analyst",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "dataproduct-terraform-examples-3@google.com",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "scientist",
///                 GroupId = "scientist",
///                 DisplayName = "Data Scientist",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "dataproduct-terraform-examples-4@google.com",
///                 },
///             },
///         },
///     });
///
///     var exampleDataset = new Gcp.BigQuery.Dataset("example", new()
///     {
///         Project = "my-project-name",
///         DatasetId = "tf_test_dataset__10719",
///         Location = "us-central1",
///     });
///
///     var exampleDataProductDataAsset = new Gcp.DataPlex.DataProductDataAsset("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = example.DataProductId,
///         DataAssetId = "data-product-data-asset",
///         Resource = Output.Tuple(exampleDataset.Project, exampleDataset.DatasetId).Apply(values =>
///         {
///             var project = values.Item1;
///             var datasetId = values.Item2;
///             return $"//bigquery.googleapis.com/projects/{project}/datasets/{datasetId}";
///         }),
///         Labels =
///         {
///             { "env", "prod" },
///             { "critical", "true" },
///         },
///         AccessGroupConfigs = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductDataAssetAccessGroupConfigArgs
///             {
///                 AccessGroup = "analyst",
///                 IamRoles = new[]
///                 {
///                     "roles/bigquery.dataViewer",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.DataProductDataAssetAccessGroupConfigArgs
///             {
///                 AccessGroup = "scientist",
///                 IamRoles = new[]
///                 {
///                     "roles/bigquery.dataEditor",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("tf-test-dp-_3684"),
/// 			DisplayName:   pulumi.String("Full Example Parent DP"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("gterraformtestuser@gmail.com"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("dataproduct-terraform-examples-3@google.com"),
/// 					},
/// 				},
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("scientist"),
/// 					GroupId:     pulumi.String("scientist"),
/// 					DisplayName: pulumi.String("Data Scientist"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("dataproduct-terraform-examples-4@google.com"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataset, err := bigquery.NewDataset(ctx, "example", &bigquery.DatasetArgs{
/// 			Project:   pulumi.String("my-project-name"),
/// 			DatasetId: pulumi.String("tf_test_dataset__10719"),
/// 			Location:  pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDataProductDataAsset(ctx, "example", &dataplex.DataProductDataAssetArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: example.DataProductId,
/// 			DataAssetId:   pulumi.String("data-product-data-asset"),
/// 			Resource: pulumi.All(exampleDataset.Project, exampleDataset.DatasetId).ApplyT(func(_args []interface{}) (string, error) {
/// 				project := _args[0].(string)
/// 				datasetId := _args[1].(string)
/// 				return fmt.Sprintf("//bigquery.googleapis.com/projects/%v/datasets/%v", project, datasetId), nil
/// 			}).(pulumi.StringOutput),
/// 			Labels: pulumi.StringMap{
/// 				"env":      pulumi.String("prod"),
/// 				"critical": pulumi.String("true"),
/// 			},
/// 			AccessGroupConfigs: dataplex.DataProductDataAssetAccessGroupConfigArray{
/// 				&dataplex.DataProductDataAssetAccessGroupConfigArgs{
/// 					AccessGroup: pulumi.String("analyst"),
/// 					IamRoles: pulumi.StringArray{
/// 						pulumi.String("roles/bigquery.dataViewer"),
/// 					},
/// 				},
/// 				&dataplex.DataProductDataAssetAccessGroupConfigArgs{
/// 					AccessGroup: pulumi.String("scientist"),
/// 					IamRoles: pulumi.StringArray{
/// 						pulumi.String("roles/bigquery.dataEditor"),
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
/// resource "gcp_dataplex_dataproduct" "example" {
///   project         = "my-project-name"
///   location        = "us-central1"
///   data_product_id = "tf-test-dp-_3684"
///   display_name    = "Full Example Parent DP"
///   owner_emails    = ["gterraformtestuser@gmail.com"]
///   access_groups {
///     id           = "analyst"
///     group_id     = "analyst"
///     display_name = "Data Analyst"
///     principal = {
///       google_group = "dataproduct-terraform-examples-3@google.com"
///     }
///   }
///   access_groups {
///     id           = "scientist"
///     group_id     = "scientist"
///     display_name = "Data Scientist"
///     principal = {
///       google_group = "dataproduct-terraform-examples-4@google.com"
///     }
///   }
/// }
/// resource "gcp_bigquery_dataset" "example" {
///   project    = "my-project-name"
///   dataset_id = "tf_test_dataset__10719"
///   location   = "us-central1"
/// }
/// resource "gcp_dataplex_dataproductdataasset" "example" {
///   project         = "my-project-name"
///   location        = "us-central1"
///   data_product_id = gcp_dataplex_dataproduct.example.data_product_id
///   data_asset_id   = "data-product-data-asset"
///   resource        ="//bigquery.googleapis.com/projects/${gcp_bigquery_dataset.example.project}/datasets/${gcp_bigquery_dataset.example.dataset_id}"
///   labels = {
///     "env"      = "prod"
///     "critical" = "true"
///   }
///   access_group_configs {
///     access_group = "analyst"
///     iam_roles    = ["roles/bigquery.dataViewer"]
///   }
///   access_group_configs {
///     access_group = "scientist"
///     iam_roles    = ["roles/bigquery.dataEditor"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.dataplex.DataProductDataAsset;
/// import com.pulumi.gcp.dataplex.DataProductDataAssetArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductDataAssetAccessGroupConfigArgs;
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
///         var example = new DataProduct("example", DataProductArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId("tf-test-dp-_3684")
///             .displayName("Full Example Parent DP")
///             .ownerEmails("gterraformtestuser@gmail.com")
///             .accessGroups(
///                 DataProductAccessGroupArgs.builder()
///                     .id("analyst")
///                     .groupId("analyst")
///                     .displayName("Data Analyst")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .googleGroup("dataproduct-terraform-examples-3@google.com")
///                         .build())
///                     .build(),
///                 DataProductAccessGroupArgs.builder()
///                     .id("scientist")
///                     .groupId("scientist")
///                     .displayName("Data Scientist")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .googleGroup("dataproduct-terraform-examples-4@google.com")
///                         .build())
///                     .build())
///             .build());
///
///         var exampleDataset = new Dataset("exampleDataset", DatasetArgs.builder()
///             .project("my-project-name")
///             .datasetId("tf_test_dataset__10719")
///             .location("us-central1")
///             .build());
///
///         var exampleDataProductDataAsset = new DataProductDataAsset("exampleDataProductDataAsset", DataProductDataAssetArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId(example.dataProductId())
///             .dataAssetId("data-product-data-asset")
///             .resource(Output.tuple(exampleDataset.project(), exampleDataset.datasetId()).applyValue(values -> {
///                 var project = values.t1;
///                 var datasetId = values.t2;
///                 return String.format("//bigquery.googleapis.com/projects/%s/datasets/%s", project,datasetId);
///             }))
///             .labels(Map.ofEntries(
///                 Map.entry("env", "prod"),
///                 Map.entry("critical", "true")
///             ))
///             .accessGroupConfigs(
///                 DataProductDataAssetAccessGroupConfigArgs.builder()
///                     .accessGroup("analyst")
///                     .iamRoles("roles/bigquery.dataViewer")
///                     .build(),
///                 DataProductDataAssetAccessGroupConfigArgs.builder()
///                     .accessGroup("scientist")
///                     .iamRoles("roles/bigquery.dataEditor")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:dataplex:DataProduct
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: tf-test-dp-_3684
///       displayName: Full Example Parent DP
///       ownerEmails:
///         - gterraformtestuser@gmail.com
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst
///           principal:
///             googleGroup: dataproduct-terraform-examples-3@google.com
///         - id: scientist
///           groupId: scientist
///           displayName: Data Scientist
///           principal:
///             googleGroup: dataproduct-terraform-examples-4@google.com
///   exampleDataset:
///     type: gcp:bigquery:Dataset
///     name: example
///     properties:
///       project: my-project-name
///       datasetId: tf_test_dataset__10719
///       location: us-central1
///   exampleDataProductDataAsset:
///     type: gcp:dataplex:DataProductDataAsset
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: ${example.dataProductId}
///       dataAssetId: data-product-data-asset
///       resource: //bigquery.googleapis.com/projects/${exampleDataset.project}/datasets/${exampleDataset.datasetId}
///       labels:
///         env: prod
///         critical: 'true'
///       accessGroupConfigs:
///         - accessGroup: analyst
///           iamRoles:
///             - roles/bigquery.dataViewer
///         - accessGroup: scientist
///           iamRoles:
///             - roles/bigquery.dataEditor
/// ```
///
///
/// ## Import
///
/// DataProductDataAsset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}/dataAssets/{{data_asset_id}}`
/// * `{{project}}/{{location}}/{{data_product_id}}/{{data_asset_id}}`
/// * `{{location}}/{{data_product_id}}/{{data_asset_id}}`
///
///
/// When using the `pulumi import` command, DataProductDataAsset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProductDataAsset:DataProductDataAsset default projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}/dataAssets/{{data_asset_id}}
/// $ pulumi import gcp:dataplex/dataProductDataAsset:DataProductDataAsset default {{project}}/{{location}}/{{data_product_id}}/{{data_asset_id}}
/// $ pulumi import gcp:dataplex/dataProductDataAsset:DataProductDataAsset default {{location}}/{{data_product_id}}/{{data_asset_id}}
/// ```
class DataProductDataAsset extends pulumi.CustomResource {
  /// Access groups configurations.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> accessGroupConfigs;
  /// The ID of the data asset.
  late final pulumi.Output<String> dataAssetId;
  /// The ID of the parent data product.
  late final pulumi.Output<String> dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the data asset.
  late final pulumi.Output<String> location;
  /// The relative resource name of the data asset.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Full resource name of the cloud resource.
  late final pulumi.Output<String> resource;
  /// System generated unique ID.
  late final pulumi.Output<String> uid;

  /// Creates a new [DataProductDataAsset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProductDataAsset]. {@macro pulumi_dataplex_data_product_data_asset_data_product_data_asset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProductDataAsset(
    String name, {
    DataProductDataAssetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProductDataAsset:DataProductDataAsset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupConfigs = registerOutput<List<Map<String, dynamic>>?>('accessGroupConfigs');
    dataAssetId = registerOutput<String>('dataAssetId');
    dataProductId = registerOutput<String>('dataProductId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resource = registerOutput<String>('resource');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [DataProductDataAsset] resource's state with the given [name] and [id].
  static DataProductDataAsset get(
    String name,
    pulumi.Input<String> id, {
    DataProductDataAssetState? state,
  }) {
    return DataProductDataAsset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataProductDataAsset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProductDataAsset:DataProductDataAsset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupConfigs = registerOutput<List<Map<String, dynamic>>?>('accessGroupConfigs');
    dataAssetId = registerOutput<String>('dataAssetId');
    dataProductId = registerOutput<String>('dataProductId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    resource = registerOutput<String>('resource');
    uid = registerOutput<String>('uid');
  }
}
