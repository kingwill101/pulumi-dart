import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_backup_server_container_response.dart';
import 'protection_container_args.dart';

/// Base class for container with backup items. Containers with specific workloads are derived from this class.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RegisterAzure Storage ProtectionContainers
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionContainer = new AzureNative.RecoveryServices.ProtectionContainer("protectionContainer", new()
///     {
///         ContainerName = "StorageContainer;Storage;SwaggerTestRg;swaggertestsa",
///         FabricName = "Azure",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureStorageContainerArgs
///         {
///             AcquireStorageAccountLock = AzureNative.RecoveryServices.AcquireStorageAccountLock.Acquire,
///             BackupManagementType = AzureNative.RecoveryServices.BackupManagementType.AzureStorage,
///             ContainerType = "StorageContainer",
///             FriendlyName = "swaggertestsa",
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa",
///         },
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "swaggertestvault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectionContainer(ctx, "protectionContainer", &recoveryservices.ProtectionContainerArgs{
/// 			ContainerName: pulumi.String("StorageContainer;Storage;SwaggerTestRg;swaggertestsa"),
/// 			FabricName:    pulumi.String("Azure"),
/// 			Properties: &recoveryservices.AzureStorageContainerArgs{
/// 				AcquireStorageAccountLock: pulumi.String(recoveryservices.AcquireStorageAccountLockAcquire),
/// 				BackupManagementType:      pulumi.String(recoveryservices.BackupManagementTypeAzureStorage),
/// 				ContainerType:             pulumi.String("StorageContainer"),
/// 				FriendlyName:              pulumi.String("swaggertestsa"),
/// 				SourceResourceId:          pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa"),
/// 			},
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("swaggertestvault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionContainer;
/// import com.pulumi.azurenative.recoveryservices.ProtectionContainerArgs;
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
///         var protectionContainer = new ProtectionContainer("protectionContainer", ProtectionContainerArgs.builder()
///             .containerName("StorageContainer;Storage;SwaggerTestRg;swaggertestsa")
///             .fabricName("Azure")
///             .properties(AzureStorageContainerArgs.builder()
///                 .acquireStorageAccountLock("Acquire")
///                 .backupManagementType("AzureStorage")
///                 .containerType("StorageContainer")
///                 .friendlyName("swaggertestsa")
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa")
///                 .build())
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("swaggertestvault")
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
/// const protectionContainer = new azure_native.recoveryservices.ProtectionContainer("protectionContainer", {
///     containerName: "StorageContainer;Storage;SwaggerTestRg;swaggertestsa",
///     fabricName: "Azure",
///     properties: {
///         acquireStorageAccountLock: azure_native.recoveryservices.AcquireStorageAccountLock.Acquire,
///         backupManagementType: azure_native.recoveryservices.BackupManagementType.AzureStorage,
///         containerType: "StorageContainer",
///         friendlyName: "swaggertestsa",
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa",
///     },
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "swaggertestvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_container = azure_native.recoveryservices.ProtectionContainer("protectionContainer",
///     container_name="StorageContainer;Storage;SwaggerTestRg;swaggertestsa",
///     fabric_name="Azure",
///     properties={
///         "acquire_storage_account_lock": azure_native.recoveryservices.AcquireStorageAccountLock.ACQUIRE,
///         "backup_management_type": azure_native.recoveryservices.BackupManagementType.AZURE_STORAGE,
///         "container_type": "StorageContainer",
///         "friendly_name": "swaggertestsa",
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa",
///     },
///     resource_group_name="SwaggerTestRg",
///     vault_name="swaggertestvault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionContainer:
///     type: azure-native:recoveryservices:ProtectionContainer
///     properties:
///       containerName: StorageContainer;Storage;SwaggerTestRg;swaggertestsa
///       fabricName: Azure
///       properties:
///         acquireStorageAccountLock: Acquire
///         backupManagementType: AzureStorage
///         containerType: StorageContainer
///         friendlyName: swaggertestsa
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/SwaggerTestRg/providers/Microsoft.Storage/storageAccounts/swaggertestsa
///       resourceGroupName: SwaggerTestRg
///       vaultName: swaggertestvault
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
/// $ pulumi import azure-native:recoveryservices:ProtectionContainer StorageContainer;Storage;SwaggerTestRg;swaggertestsa /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}
/// ```
class ProtectionContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// ProtectionContainerResource properties
  late final pulumi.Output<AzureBackupServerContainerResponse> properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectionContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionContainer]. {@macro pulumi_recoveryservices_protection_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionContainer(
    String name, {
    ProtectionContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ProtectionContainer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AzureBackupServerContainerResponse>(
      'properties',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
