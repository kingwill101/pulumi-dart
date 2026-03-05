import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';

/// Properties of the table, including Id, resource name, resource type.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TableOperationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var table = new AzureNative.Storage.Table("table", new()
///     {
///         AccountName = "sto328",
///         ResourceGroupName = "res3376",
///         TableName = "table6185",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewTable(ctx, "table", &storage.TableArgs{
/// 			AccountName:       pulumi.String("sto328"),
/// 			ResourceGroupName: pulumi.String("res3376"),
/// 			TableName:         pulumi.String("table6185"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.Table;
/// import com.pulumi.azurenative.storage.TableArgs;
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
///         var table = new Table("table", TableArgs.builder()
///             .accountName("sto328")
///             .resourceGroupName("res3376")
///             .tableName("table6185")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const table = new azure_native.storage.Table("table", {
///     accountName: "sto328",
///     resourceGroupName: "res3376",
///     tableName: "table6185",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// table = azure_native.storage.Table("table",
///     account_name="sto328",
///     resource_group_name="res3376",
///     table_name="table6185")
///
/// ```
///
/// ```yaml
/// resources:
///   table:
///     type: azure-native:storage:Table
///     properties:
///       accountName: sto328
///       resourceGroupName: res3376
///       tableName: table6185
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### TableOperationPutOrPatchAcls
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var table = new AzureNative.Storage.Table("table", new()
///     {
///         AccountName = "sto328",
///         ResourceGroupName = "res3376",
///         SignedIdentifiers = new[]
///         {
///             new AzureNative.Storage.Inputs.TableSignedIdentifierArgs
///             {
///                 AccessPolicy = new AzureNative.Storage.Inputs.TableAccessPolicyArgs
///                 {
///                     ExpiryTime = "2022-03-20T08:49:37.0000000Z",
///                     Permission = "raud",
///                     StartTime = "2022-03-17T08:49:37.0000000Z",
///                 },
///                 Id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///             },
///             new AzureNative.Storage.Inputs.TableSignedIdentifierArgs
///             {
///                 AccessPolicy = new AzureNative.Storage.Inputs.TableAccessPolicyArgs
///                 {
///                     ExpiryTime = "2022-03-20T08:49:37.0000000Z",
///                     Permission = "rad",
///                     StartTime = "2022-03-17T08:49:37.0000000Z",
///                 },
///                 Id = "PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI",
///             },
///         },
///         TableName = "table6185",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewTable(ctx, "table", &storage.TableArgs{
/// 			AccountName:       pulumi.String("sto328"),
/// 			ResourceGroupName: pulumi.String("res3376"),
/// 			SignedIdentifiers: storage.TableSignedIdentifierArray{
/// 				&storage.TableSignedIdentifierArgs{
/// 					AccessPolicy: &storage.TableAccessPolicyArgs{
/// 						ExpiryTime: pulumi.String("2022-03-20T08:49:37.0000000Z"),
/// 						Permission: pulumi.String("raud"),
/// 						StartTime:  pulumi.String("2022-03-17T08:49:37.0000000Z"),
/// 					},
/// 					Id: pulumi.String("MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"),
/// 				},
/// 				&storage.TableSignedIdentifierArgs{
/// 					AccessPolicy: &storage.TableAccessPolicyArgs{
/// 						ExpiryTime: pulumi.String("2022-03-20T08:49:37.0000000Z"),
/// 						Permission: pulumi.String("rad"),
/// 						StartTime:  pulumi.String("2022-03-17T08:49:37.0000000Z"),
/// 					},
/// 					Id: pulumi.String("PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI"),
/// 				},
/// 			},
/// 			TableName: pulumi.String("table6185"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storage.Table;
/// import com.pulumi.azurenative.storage.TableArgs;
/// import com.pulumi.azurenative.storage.inputs.TableSignedIdentifierArgs;
/// import com.pulumi.azurenative.storage.inputs.TableAccessPolicyArgs;
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
///         var table = new Table("table", TableArgs.builder()
///             .accountName("sto328")
///             .resourceGroupName("res3376")
///             .signedIdentifiers(
///                 TableSignedIdentifierArgs.builder()
///                     .accessPolicy(TableAccessPolicyArgs.builder()
///                         .expiryTime("2022-03-20T08:49:37.0000000Z")
///                         .permission("raud")
///                         .startTime("2022-03-17T08:49:37.0000000Z")
///                         .build())
///                     .id("MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI")
///                     .build(),
///                 TableSignedIdentifierArgs.builder()
///                     .accessPolicy(TableAccessPolicyArgs.builder()
///                         .expiryTime("2022-03-20T08:49:37.0000000Z")
///                         .permission("rad")
///                         .startTime("2022-03-17T08:49:37.0000000Z")
///                         .build())
///                     .id("PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI")
///                     .build())
///             .tableName("table6185")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const table = new azure_native.storage.Table("table", {
///     accountName: "sto328",
///     resourceGroupName: "res3376",
///     signedIdentifiers: [
///         {
///             accessPolicy: {
///                 expiryTime: "2022-03-20T08:49:37.0000000Z",
///                 permission: "raud",
///                 startTime: "2022-03-17T08:49:37.0000000Z",
///             },
///             id: "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///         },
///         {
///             accessPolicy: {
///                 expiryTime: "2022-03-20T08:49:37.0000000Z",
///                 permission: "rad",
///                 startTime: "2022-03-17T08:49:37.0000000Z",
///             },
///             id: "PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI",
///         },
///     ],
///     tableName: "table6185",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// table = azure_native.storage.Table("table",
///     account_name="sto328",
///     resource_group_name="res3376",
///     signed_identifiers=[
///         {
///             "access_policy": {
///                 "expiry_time": "2022-03-20T08:49:37.0000000Z",
///                 "permission": "raud",
///                 "start_time": "2022-03-17T08:49:37.0000000Z",
///             },
///             "id": "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI",
///         },
///         {
///             "access_policy": {
///                 "expiry_time": "2022-03-20T08:49:37.0000000Z",
///                 "permission": "rad",
///                 "start_time": "2022-03-17T08:49:37.0000000Z",
///             },
///             "id": "PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI",
///         },
///     ],
///     table_name="table6185")
///
/// ```
///
/// ```yaml
/// resources:
///   table:
///     type: azure-native:storage:Table
///     properties:
///       accountName: sto328
///       resourceGroupName: res3376
///       signedIdentifiers:
///         - accessPolicy:
///             expiryTime: 2022-03-20T08:49:37.0000000Z
///             permission: raud
///             startTime: 2022-03-17T08:49:37.0000000Z
///           id: MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI
///         - accessPolicy:
///             expiryTime: 2022-03-20T08:49:37.0000000Z
///             permission: rad
///             startTime: 2022-03-17T08:49:37.0000000Z
///           id: PTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODklMTI
///       tableName: table6185
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:Table table6185 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/tableServices/default/tables/{tableName}
/// ```
class Table extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of stored access policies specified on the table.
  late final pulumi.Output<List<Map<String, dynamic>>?> signedIdentifiers;
  /// Table name under the specified account
  late final pulumi.Output<String> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_storage_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    signedIdentifiers = registerOutput<List<Map<String, dynamic>>?>('signedIdentifiers');
    tableName = registerOutput<String>('tableName');
    type = registerOutput<String>('type');
  }
}
