import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_args.dart';
import 'storage_data_share_properties_response.dart';
import 'system_data_response.dart';

/// A DataShare is a tracked ARM resource modeled as a sub-resource of a Storage Account.
///
/// Uses Azure REST API version 2025-08-01.
///
/// Other available API versions: 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateDataShare
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataShare = new AzureNative.Storage.DataShare("dataShare", new()
///     {
///         AccountName = "teststorageaccount",
///         DataShareName = "testdatashare",
///         Location = "eastus",
///         Properties = new AzureNative.Storage.Inputs.StorageDataSharePropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.Storage.Inputs.StorageDataShareAccessPolicyArgs
///                 {
///                     Permission = AzureNative.Storage.StorageDataShareAccessPolicyPermission.Read,
///                     PrincipalId = "00000000-0000-0000-0000-000000000000",
///                     TenantId = "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             Assets = new[]
///             {
///                 new AzureNative.Storage.Inputs.StorageDataShareAssetArgs
///                 {
///                     AssetPath = "/container/folder/foo",
///                     DisplayName = "virtualFoo",
///                 },
///             },
///             Description = "Dummy data share",
///         },
///         ResourceGroupName = "testrg",
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
/// 		_, err := storage.NewDataShare(ctx, "dataShare", &storage.DataShareArgs{
/// 			AccountName:   pulumi.String("teststorageaccount"),
/// 			DataShareName: pulumi.String("testdatashare"),
/// 			Location:      pulumi.String("eastus"),
/// 			Properties: &storage.StorageDataSharePropertiesArgs{
/// 				AccessPolicies: storage.StorageDataShareAccessPolicyArray{
/// 					&storage.StorageDataShareAccessPolicyArgs{
/// 						Permission:  pulumi.String(storage.StorageDataShareAccessPolicyPermissionRead),
/// 						PrincipalId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						TenantId:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					},
/// 				},
/// 				Assets: storage.StorageDataShareAssetArray{
/// 					&storage.StorageDataShareAssetArgs{
/// 						AssetPath:   pulumi.String("/container/folder/foo"),
/// 						DisplayName: pulumi.String("virtualFoo"),
/// 					},
/// 				},
/// 				Description: pulumi.String("Dummy data share"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_datashare" "dataShare" {
///   account_name    = "teststorageaccount"
///   data_share_name = "testdatashare"
///   location        = "eastus"
///   properties = {
///     access_policies = [{
///       "permission"  = "Read"
///       "principalId" = "00000000-0000-0000-0000-000000000000"
///       "tenantId"    = "00000000-0000-0000-0000-000000000000"
///     }]
///     assets = [{
///       "assetPath"   = "/container/folder/foo"
///       "displayName" = "virtualFoo"
///     }]
///     description = "Dummy data share"
///   }
///   resource_group_name = "testrg"
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
/// import com.pulumi.azurenative.storage.DataShare;
/// import com.pulumi.azurenative.storage.DataShareArgs;
/// import com.pulumi.azurenative.storage.inputs.StorageDataSharePropertiesArgs;
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
///         var dataShare = new DataShare("dataShare", DataShareArgs.builder()
///             .accountName("teststorageaccount")
///             .dataShareName("testdatashare")
///             .location("eastus")
///             .properties(StorageDataSharePropertiesArgs.builder()
///                 .accessPolicies(StorageDataShareAccessPolicyArgs.builder()
///                     .permission("Read")
///                     .principalId("00000000-0000-0000-0000-000000000000")
///                     .tenantId("00000000-0000-0000-0000-000000000000")
///                     .build())
///                 .assets(StorageDataShareAssetArgs.builder()
///                     .assetPath("/container/folder/foo")
///                     .displayName("virtualFoo")
///                     .build())
///                 .description("Dummy data share")
///                 .build())
///             .resourceGroupName("testrg")
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
/// const dataShare = new azure_native.storage.DataShare("dataShare", {
///     accountName: "teststorageaccount",
///     dataShareName: "testdatashare",
///     location: "eastus",
///     properties: {
///         accessPolicies: [{
///             permission: azure_native.storage.StorageDataShareAccessPolicyPermission.Read,
///             principalId: "00000000-0000-0000-0000-000000000000",
///             tenantId: "00000000-0000-0000-0000-000000000000",
///         }],
///         assets: [{
///             assetPath: "/container/folder/foo",
///             displayName: "virtualFoo",
///         }],
///         description: "Dummy data share",
///     },
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_share = azure_native.storage.DataShare("dataShare",
///     account_name="teststorageaccount",
///     data_share_name="testdatashare",
///     location="eastus",
///     properties={
///         "access_policies": [{
///             "permission": azure_native.storage.StorageDataShareAccessPolicyPermission.READ,
///             "principal_id": "00000000-0000-0000-0000-000000000000",
///             "tenant_id": "00000000-0000-0000-0000-000000000000",
///         }],
///         "assets": [{
///             "asset_path": "/container/folder/foo",
///             "display_name": "virtualFoo",
///         }],
///         "description": "Dummy data share",
///     },
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   dataShare:
///     type: azure-native:storage:DataShare
///     properties:
///       accountName: teststorageaccount
///       dataShareName: testdatashare
///       location: eastus
///       properties:
///         accessPolicies:
///           - permission: Read
///             principalId: 00000000-0000-0000-0000-000000000000
///             tenantId: 00000000-0000-0000-0000-000000000000
///         assets:
///           - assetPath: /container/folder/foo
///             displayName: virtualFoo
///         description: Dummy data share
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:storage:DataShare testdatashare /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/dataShares/{dataShareName}
/// ```
class DataShare extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the Storage DataShare.
  late final pulumi.Output<StorageDataSharePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataShare]. {@macro pulumi_storage_data_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataShare(
    String name, {
    DataShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:DataShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageDataSharePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageDataSharePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataShare] resource.
  DataShare.reference(String urn)
    : super(
        'azure-native:storage:DataShare',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageDataSharePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageDataSharePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
