import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'managed_service_identity_response.dart';
import 'storage_services_for_put_request_response.dart';
import 'system_data_response.dart';

/// An Azure Video Indexer account.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2024-04-01-preview, 2024-06-01-preview, 2024-09-23-preview, 2025-01-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native videoindexer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connect classic account to arm account using system assigned Mi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.VideoIndexer.Account("account", new()
///     {
///         AccountId = "462af7c5-d1f6-4b91-86e3-8bc5e8a61574",
///         AccountName = "contosto-videoanalyzer",
///         Identity = new AzureNative.VideoIndexer.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.VideoIndexer.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "NorthEurope",
///         ResourceGroupName = "contosto-videoanalyzer-rg",
///         StorageServices = new AzureNative.VideoIndexer.Inputs.StorageServicesForPutRequestArgs
///         {
///             ResourceId = "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///         },
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
/// 	videoindexer "github.com/pulumi/pulumi-azure-native-sdk/videoindexer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := videoindexer.NewAccount(ctx, "account", &videoindexer.AccountArgs{
/// 			AccountId:   pulumi.String("462af7c5-d1f6-4b91-86e3-8bc5e8a61574"),
/// 			AccountName: pulumi.String("contosto-videoanalyzer"),
/// 			Identity: &videoindexer.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(videoindexer.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("NorthEurope"),
/// 			ResourceGroupName: pulumi.String("contosto-videoanalyzer-rg"),
/// 			StorageServices: &videoindexer.StorageServicesForPutRequestArgs{
/// 				ResourceId: pulumi.String("/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms"),
/// 			},
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
/// resource "azure-native_videoindexer_account" "account" {
///   account_id   = "462af7c5-d1f6-4b91-86e3-8bc5e8a61574"
///   account_name = "contosto-videoanalyzer"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "NorthEurope"
///   resource_group_name = "contosto-videoanalyzer-rg"
///   storage_services = {
///     resource_id = "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms"
///   }
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
/// import com.pulumi.azurenative.videoindexer.Account;
/// import com.pulumi.azurenative.videoindexer.AccountArgs;
/// import com.pulumi.azurenative.videoindexer.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.videoindexer.inputs.StorageServicesForPutRequestArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountId("462af7c5-d1f6-4b91-86e3-8bc5e8a61574")
///             .accountName("contosto-videoanalyzer")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("NorthEurope")
///             .resourceGroupName("contosto-videoanalyzer-rg")
///             .storageServices(StorageServicesForPutRequestArgs.builder()
///                 .resourceId("/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms")
///                 .build())
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
/// const account = new azure_native.videoindexer.Account("account", {
///     accountId: "462af7c5-d1f6-4b91-86e3-8bc5e8a61574",
///     accountName: "contosto-videoanalyzer",
///     identity: {
///         type: azure_native.videoindexer.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "NorthEurope",
///     resourceGroupName: "contosto-videoanalyzer-rg",
///     storageServices: {
///         resourceId: "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.videoindexer.Account("account",
///     account_id="462af7c5-d1f6-4b91-86e3-8bc5e8a61574",
///     account_name="contosto-videoanalyzer",
///     identity={
///         "type": azure_native.videoindexer.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="NorthEurope",
///     resource_group_name="contosto-videoanalyzer-rg",
///     storage_services={
///         "resource_id": "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:videoindexer:Account
///     properties:
///       accountId: 462af7c5-d1f6-4b91-86e3-8bc5e8a61574
///       accountName: contosto-videoanalyzer
///       identity:
///         type: SystemAssigned
///       location: NorthEurope
///       resourceGroupName: contosto-videoanalyzer-rg
///       storageServices:
///         resourceId: /subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update account with system assigned Mi
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.VideoIndexer.Account("account", new()
///     {
///         AccountName = "contosto-videoanalyzer",
///         Identity = new AzureNative.VideoIndexer.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.VideoIndexer.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "NorthEurope",
///         ResourceGroupName = "contosto-videoanalyzer-rg",
///         StorageServices = new AzureNative.VideoIndexer.Inputs.StorageServicesForPutRequestArgs
///         {
///             ResourceId = "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///         },
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
/// 	videoindexer "github.com/pulumi/pulumi-azure-native-sdk/videoindexer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := videoindexer.NewAccount(ctx, "account", &videoindexer.AccountArgs{
/// 			AccountName: pulumi.String("contosto-videoanalyzer"),
/// 			Identity: &videoindexer.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(videoindexer.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("NorthEurope"),
/// 			ResourceGroupName: pulumi.String("contosto-videoanalyzer-rg"),
/// 			StorageServices: &videoindexer.StorageServicesForPutRequestArgs{
/// 				ResourceId: pulumi.String("/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms"),
/// 			},
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
/// resource "azure-native_videoindexer_account" "account" {
///   account_name = "contosto-videoanalyzer"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "NorthEurope"
///   resource_group_name = "contosto-videoanalyzer-rg"
///   storage_services = {
///     resource_id = "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms"
///   }
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
/// import com.pulumi.azurenative.videoindexer.Account;
/// import com.pulumi.azurenative.videoindexer.AccountArgs;
/// import com.pulumi.azurenative.videoindexer.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.videoindexer.inputs.StorageServicesForPutRequestArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("contosto-videoanalyzer")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("NorthEurope")
///             .resourceGroupName("contosto-videoanalyzer-rg")
///             .storageServices(StorageServicesForPutRequestArgs.builder()
///                 .resourceId("/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms")
///                 .build())
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
/// const account = new azure_native.videoindexer.Account("account", {
///     accountName: "contosto-videoanalyzer",
///     identity: {
///         type: azure_native.videoindexer.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "NorthEurope",
///     resourceGroupName: "contosto-videoanalyzer-rg",
///     storageServices: {
///         resourceId: "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.videoindexer.Account("account",
///     account_name="contosto-videoanalyzer",
///     identity={
///         "type": azure_native.videoindexer.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="NorthEurope",
///     resource_group_name="contosto-videoanalyzer-rg",
///     storage_services={
///         "resource_id": "/subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:videoindexer:Account
///     properties:
///       accountName: contosto-videoanalyzer
///       identity:
///         type: SystemAssigned
///       location: NorthEurope
///       resourceGroupName: contosto-videoanalyzer-rg
///       storageServices:
///         resourceId: /subscriptions/xxx/resourceGroups/contoso-videoanalyzer-rg/providers/Microsoft.Storage/storageAccounts/contoso-videoanalyzer-ms
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
/// $ pulumi import azure-native:videoindexer:Account contosto-videoanalyzer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VideoIndexer/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The account's data-plane ID. This can be set only when connecting an existing classic account
  late final pulumi.Output<String?> accountId;
  /// The account's name
  late final pulumi.Output<String> accountName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the status of the account at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// The storage services details
  late final pulumi.Output<StorageServicesForPutRequestResponse?> storageServices;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The account's tenant id
  late final pulumi.Output<String> tenantId;
  /// An integer representing the total seconds that have been indexed on the account
  late final pulumi.Output<int> totalSecondsIndexed;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_videoindexer_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:videoindexer:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    accountName = registerOutput<String>('accountName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageServices = registerOutput<StorageServicesForPutRequestResponse?>('storageServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageServicesForPutRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    totalSecondsIndexed = registerOutput<int>('totalSecondsIndexed');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:videoindexer:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    accountName = registerOutput<String>('accountName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageServices = registerOutput<StorageServicesForPutRequestResponse?>('storageServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageServicesForPutRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    totalSecondsIndexed = registerOutput<int>('totalSecondsIndexed');
    type = registerOutput<String>('type');
  }
}
