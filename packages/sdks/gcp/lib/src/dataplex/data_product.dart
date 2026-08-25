import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_approval_config.dart';
import 'data_product_access_group.dart';
import 'data_product_args.dart';
import 'data_product_state.dart';

/// A data product is a curated collection of data assets, packaged to address
/// specific use cases.
///
///
/// To get more information about DataProduct, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataProducts)
/// * How-to Guides
/// * [Introduction to Data Products](https://cloud.google.com/dataplex/docs/data-products-overview)
///
/// ## Example Usage
///
/// ### Dataplex Data Product Basic
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
///     dataProductId: "data-product-basic",
///     displayName: "terraform data product",
///     ownerEmails: ["gterraformtestuser@gmail.com"],
///     accessGroups: [{
///         id: "analyst",
///         groupId: "analyst",
///         displayName: "Data Analyst",
///         principal: {
///             googleGroup: "tf-test-analysts-_60365@example.com",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="data-product-basic",
///     display_name="terraform data product",
///     owner_emails=["gterraformtestuser@gmail.com"],
///     access_groups=[{
///         "id": "analyst",
///         "group_id": "analyst",
///         "display_name": "Data Analyst",
///         "principal": {
///             "google_group": "tf-test-analysts-_60365@example.com",
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
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "data-product-basic",
///         DisplayName = "terraform data product",
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
///                     GoogleGroup = "tf-test-analysts-_60365@example.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("data-product-basic"),
/// 			DisplayName:   pulumi.String("terraform data product"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("gterraformtestuser@gmail.com"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-analysts-_60365@example.com"),
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
///   data_product_id = "data-product-basic"
///   display_name    = "terraform data product"
///   owner_emails    = ["gterraformtestuser@gmail.com"]
///   access_groups {
///     id           = "analyst"
///     group_id     = "analyst"
///     display_name = "Data Analyst"
///     principal = {
///       google_group = "tf-test-analysts-_60365@example.com"
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
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
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
///             .dataProductId("data-product-basic")
///             .displayName("terraform data product")
///             .ownerEmails("gterraformtestuser@gmail.com")
///             .accessGroups(DataProductAccessGroupArgs.builder()
///                 .id("analyst")
///                 .groupId("analyst")
///                 .displayName("Data Analyst")
///                 .principal(DataProductAccessGroupPrincipalArgs.builder()
///                     .googleGroup("tf-test-analysts-_60365@example.com")
///                     .build())
///                 .build())
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
///       dataProductId: data-product-basic
///       displayName: terraform data product
///       ownerEmails:
///         - gterraformtestuser@gmail.com
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst
///           principal:
///             googleGroup: tf-test-analysts-_60365@example.com
/// ```
///
/// ### Dataplex Data Product Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     accountId: "tf-test-sa-_80215",
///     displayName: "Test Service Account",
/// });
/// const example = new gcp.dataplex.DataProduct("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     dataProductId: "data-product-full",
///     displayName: "DP Full Test: Special Chars !@#$",
///     description: "Updated with emojis 🚀 and brackets {test}",
///     ownerEmails: ["gterraformtestuser@gmail.com"],
///     accessApprovalConfig: {
///         approverEmails: ["gterraformtestuser@gmail.com"],
///     },
///     labels: {
///         env: "manual-test",
///     },
///     accessGroups: [
///         {
///             id: "analyst",
///             groupId: "analyst",
///             displayName: "Data Analyst - Updated",
///             description: "In-place update verified",
///             principal: {
///                 googleGroup: "tf-test-analysts-_59033@example.com",
///             },
///         },
///         {
///             id: "scientist",
///             groupId: "scientist",
///             displayName: "Data Scientist",
///             principal: {
///                 serviceAccount: testSa.email,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     account_id="tf-test-sa-_80215",
///     display_name="Test Service Account")
/// example = gcp.dataplex.DataProduct("example",
///     project="my-project-name",
///     location="us-central1",
///     data_product_id="data-product-full",
///     display_name="DP Full Test: Special Chars !@#$",
///     description="Updated with emojis 🚀 and brackets {test}",
///     owner_emails=["gterraformtestuser@gmail.com"],
///     access_approval_config={
///         "approver_emails": ["gterraformtestuser@gmail.com"],
///     },
///     labels={
///         "env": "manual-test",
///     },
///     access_groups=[
///         {
///             "id": "analyst",
///             "group_id": "analyst",
///             "display_name": "Data Analyst - Updated",
///             "description": "In-place update verified",
///             "principal": {
///                 "google_group": "tf-test-analysts-_59033@example.com",
///             },
///         },
///         {
///             "id": "scientist",
///             "group_id": "scientist",
///             "display_name": "Data Scientist",
///             "principal": {
///                 "service_account": test_sa.email,
///             },
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
///     var testSa = new Gcp.ServiceAccount.Account("test_sa", new()
///     {
///         AccountId = "tf-test-sa-_80215",
///         DisplayName = "Test Service Account",
///     });
///
///     var example = new Gcp.DataPlex.DataProduct("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataProductId = "data-product-full",
///         DisplayName = "DP Full Test: Special Chars !@#$",
///         Description = "Updated with emojis 🚀 and brackets {test}",
///         OwnerEmails = new[]
///         {
///             "gterraformtestuser@gmail.com",
///         },
///         AccessApprovalConfig = new Gcp.DataPlex.Inputs.DataProductAccessApprovalConfigArgs
///         {
///             ApproverEmails = new[]
///             {
///                 "gterraformtestuser@gmail.com",
///             },
///         },
///         Labels =
///         {
///             { "env", "manual-test" },
///         },
///         AccessGroups = new[]
///         {
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "analyst",
///                 GroupId = "analyst",
///                 DisplayName = "Data Analyst - Updated",
///                 Description = "In-place update verified",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     GoogleGroup = "tf-test-analysts-_59033@example.com",
///                 },
///             },
///             new Gcp.DataPlex.Inputs.DataProductAccessGroupArgs
///             {
///                 Id = "scientist",
///                 GroupId = "scientist",
///                 DisplayName = "Data Scientist",
///                 Principal = new Gcp.DataPlex.Inputs.DataProductAccessGroupPrincipalArgs
///                 {
///                     ServiceAccount = testSa.Email,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testSa, err := serviceaccount.NewAccount(ctx, "test_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("tf-test-sa-_80215"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataplex.NewDataProduct(ctx, "example", &dataplex.DataProductArgs{
/// 			Project:       pulumi.String("my-project-name"),
/// 			Location:      pulumi.String("us-central1"),
/// 			DataProductId: pulumi.String("data-product-full"),
/// 			DisplayName:   pulumi.String("DP Full Test: Special Chars !@#$"),
/// 			Description:   pulumi.String("Updated with emojis 🚀 and brackets {test}"),
/// 			OwnerEmails: pulumi.StringArray{
/// 				pulumi.String("gterraformtestuser@gmail.com"),
/// 			},
/// 			AccessApprovalConfig: &dataplex.DataProductAccessApprovalConfigArgs{
/// 				ApproverEmails: pulumi.StringArray{
/// 					pulumi.String("gterraformtestuser@gmail.com"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("manual-test"),
/// 			},
/// 			AccessGroups: dataplex.DataProductAccessGroupArray{
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("analyst"),
/// 					GroupId:     pulumi.String("analyst"),
/// 					DisplayName: pulumi.String("Data Analyst - Updated"),
/// 					Description: pulumi.String("In-place update verified"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						GoogleGroup: pulumi.String("tf-test-analysts-_59033@example.com"),
/// 					},
/// 				},
/// 				&dataplex.DataProductAccessGroupArgs{
/// 					Id:          pulumi.String("scientist"),
/// 					GroupId:     pulumi.String("scientist"),
/// 					DisplayName: pulumi.String("Data Scientist"),
/// 					Principal: &dataplex.DataProductAccessGroupPrincipalArgs{
/// 						ServiceAccount: testSa.Email,
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
/// resource "gcp_serviceaccount_account" "test_sa" {
///   account_id   = "tf-test-sa-_80215"
///   display_name = "Test Service Account"
/// }
/// resource "gcp_dataplex_dataproduct" "example" {
///   project         = "my-project-name"
///   location        = "us-central1"
///   data_product_id = "data-product-full"
///   display_name    = "DP Full Test: Special Chars !@#$"
///   description     = "Updated with emojis 🚀 and brackets {test}"
///   owner_emails    = ["gterraformtestuser@gmail.com"]
///   access_approval_config = {
///     approver_emails = ["gterraformtestuser@gmail.com"]
///   }
///   labels = {
///     "env" = "manual-test"
///   }
///   access_groups {
///     id           = "analyst"
///     group_id     = "analyst"
///     display_name = "Data Analyst - Updated"
///     description  = "In-place update verified"
///     principal = {
///       google_group = "tf-test-analysts-_59033@example.com"
///     }
///   }
///   access_groups {
///     id           = "scientist"
///     group_id     = "scientist"
///     display_name = "Data Scientist"
///     principal = {
///       service_account = gcp_serviceaccount_account.test_sa.email
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.dataplex.DataProduct;
/// import com.pulumi.gcp.dataplex.DataProductArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessApprovalConfigArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupArgs;
/// import com.pulumi.gcp.dataplex.inputs.DataProductAccessGroupPrincipalArgs;
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
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .accountId("tf-test-sa-_80215")
///             .displayName("Test Service Account")
///             .build());
///
///         var example = new DataProduct("example", DataProductArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .dataProductId("data-product-full")
///             .displayName("DP Full Test: Special Chars !@#$")
///             .description("Updated with emojis 🚀 and brackets {test}")
///             .ownerEmails("gterraformtestuser@gmail.com")
///             .accessApprovalConfig(DataProductAccessApprovalConfigArgs.builder()
///                 .approverEmails("gterraformtestuser@gmail.com")
///                 .build())
///             .labels(Map.of("env", "manual-test"))
///             .accessGroups(
///                 DataProductAccessGroupArgs.builder()
///                     .id("analyst")
///                     .groupId("analyst")
///                     .displayName("Data Analyst - Updated")
///                     .description("In-place update verified")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .googleGroup("tf-test-analysts-_59033@example.com")
///                         .build())
///                     .build(),
///                 DataProductAccessGroupArgs.builder()
///                     .id("scientist")
///                     .groupId("scientist")
///                     .displayName("Data Scientist")
///                     .principal(DataProductAccessGroupPrincipalArgs.builder()
///                         .serviceAccount(testSa.email())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testSa:
///     type: gcp:serviceaccount:Account
///     name: test_sa
///     properties:
///       accountId: tf-test-sa-_80215
///       displayName: Test Service Account
///   example:
///     type: gcp:dataplex:DataProduct
///     properties:
///       project: my-project-name
///       location: us-central1
///       dataProductId: data-product-full
///       displayName: 'DP Full Test: Special Chars !@#$'
///       description: "Updated with emojis \U0001F680 and brackets {test}"
///       ownerEmails:
///         - gterraformtestuser@gmail.com
///       accessApprovalConfig:
///         approverEmails:
///           - gterraformtestuser@gmail.com
///       labels:
///         env: manual-test
///       accessGroups:
///         - id: analyst
///           groupId: analyst
///           displayName: Data Analyst - Updated
///           description: In-place update verified
///           principal:
///             googleGroup: tf-test-analysts-_59033@example.com
///         - id: scientist
///           groupId: scientist
///           displayName: Data Scientist
///           principal:
///             serviceAccount: ${testSa.email}
/// ```
///
///
/// ## Import
///
/// DataProduct can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}`
/// * `{{project}}/{{location}}/{{data_product_id}}`
/// * `{{location}}/{{data_product_id}}`
///
///
/// When using the `pulumi import` command, DataProduct can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{project}}/{{location}}/{{data_product_id}}
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{location}}/{{data_product_id}}
/// ```
class DataProduct extends pulumi.CustomResource {
  /// Configuration for access approval for the data product.
  /// Structure is documented below.
  late final pulumi.Output<DataProductAccessApprovalConfig?> accessApprovalConfig;
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  late final pulumi.Output<List<DataProductAccessGroup>?> accessGroups;
  /// Number of associated data assets.
  late final pulumi.Output<int> assetCount;
  /// Creation timestamp.
  late final pulumi.Output<String> createTime;
  /// The ID of the data product.
  late final pulumi.Output<String> dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the data product.
  late final pulumi.Output<String?> description;
  /// User-friendly display name.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Checksum for concurrency control.
  late final pulumi.Output<String> etag;
  /// Base64 encoded image representing the data product. Max Size: 3.0MiB
  /// Expected image dimensions are 512x512 pixels, however the API only
  /// performs validation on size of the encoded data.
  /// Note: For byte fields, the content of the fields are base64-encoded (which
  /// increases the size of the data by 33-36%) when using JSON on the wire.
  late final pulumi.Output<String?> icon;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the data product.
  late final pulumi.Output<String> location;
  /// The relative resource name of the data product.
  late final pulumi.Output<String> name;
  /// Emails of the owners.
  late final pulumi.Output<List<String>> ownerEmails;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// System generated unique ID.
  late final pulumi.Output<String> uid;
  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProduct]. {@macro pulumi_dataplex_data_product_data_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProduct(
    String name, {
    DataProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProduct:DataProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessApprovalConfig = registerOutput<DataProductAccessApprovalConfig?>('accessApprovalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProductAccessApprovalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGroups = registerOutput<List<DataProductAccessGroup>?>('accessGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataProductAccessGroup>(guardedValue, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>())); });
    assetCount = registerOutput<int>('assetCount');
    createTime = registerOutput<String>('createTime');
    dataProductId = registerOutput<String>('dataProductId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    icon = registerOutput<String?>('icon');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerEmails = registerOutput<List<String>>('ownerEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataProduct] resource's state with the given [name] and [id].
  static DataProduct get(
    String name,
    pulumi.Input<String> id, {
    DataProductState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataProduct._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataProduct._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProduct:DataProduct',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessApprovalConfig = registerOutput<DataProductAccessApprovalConfig?>('accessApprovalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProductAccessApprovalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGroups = registerOutput<List<DataProductAccessGroup>?>('accessGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataProductAccessGroup>(guardedValue, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>())); });
    assetCount = registerOutput<int>('assetCount');
    createTime = registerOutput<String>('createTime');
    dataProductId = registerOutput<String>('dataProductId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    icon = registerOutput<String?>('icon');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerEmails = registerOutput<List<String>>('ownerEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DataProduct] resource.
  DataProduct.reference(String urn)
    : super(
        'gcp:dataplex/dataProduct:DataProduct',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessApprovalConfig = registerOutput<DataProductAccessApprovalConfig?>('accessApprovalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataProductAccessApprovalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessGroups = registerOutput<List<DataProductAccessGroup>?>('accessGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataProductAccessGroup>(guardedValue, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>())); });
    assetCount = registerOutput<int>('assetCount');
    createTime = registerOutput<String>('createTime');
    dataProductId = registerOutput<String>('dataProductId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    icon = registerOutput<String?>('icon');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerEmails = registerOutput<List<String>>('ownerEmails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
