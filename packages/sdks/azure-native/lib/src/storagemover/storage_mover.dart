import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_mover_args.dart';
import 'system_data_response.dart';

/// The Storage Mover resource, which is a container for a group of Agents, Projects, and Endpoints.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-07-01-preview, 2023-10-01, 2025-07-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagemover [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageMovers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageMover = new AzureNative.StorageMover.StorageMover("storageMover", new()
///     {
///         Description = "Example Storage Mover Description",
///         Location = "eastus2",
///         ResourceGroupName = "examples-rg",
///         StorageMoverName = "examples-storageMoverName",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	storagemover "github.com/pulumi/pulumi-azure-native-sdk/storagemover/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagemover.NewStorageMover(ctx, "storageMover", &storagemover.StorageMoverArgs{
/// 			Description:       pulumi.String("Example Storage Mover Description"),
/// 			Location:          pulumi.String("eastus2"),
/// 			ResourceGroupName: pulumi.String("examples-rg"),
/// 			StorageMoverName:  pulumi.String("examples-storageMoverName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagemover.StorageMover;
/// import com.pulumi.azurenative.storagemover.StorageMoverArgs;
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
///         var storageMover = new StorageMover("storageMover", StorageMoverArgs.builder()
///             .description("Example Storage Mover Description")
///             .location("eastus2")
///             .resourceGroupName("examples-rg")
///             .storageMoverName("examples-storageMoverName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
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
/// const storageMover = new azure_native.storagemover.StorageMover("storageMover", {
///     description: "Example Storage Mover Description",
///     location: "eastus2",
///     resourceGroupName: "examples-rg",
///     storageMoverName: "examples-storageMoverName",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_mover = azure_native.storagemover.StorageMover("storageMover",
///     description="Example Storage Mover Description",
///     location="eastus2",
///     resource_group_name="examples-rg",
///     storage_mover_name="examples-storageMoverName",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageMover:
///     type: azure-native:storagemover:StorageMover
///     properties:
///       description: Example Storage Mover Description
///       location: eastus2
///       resourceGroupName: examples-rg
///       storageMoverName: examples-storageMoverName
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:storagemover:StorageMover examples-storageMoverName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageMover/storageMovers/{storageMoverName}
/// ```
class StorageMover extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description for the Storage Mover.
  late final pulumi.Output<String?> description;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of this resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageMover].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageMover]. {@macro pulumi_storagemover_storage_mover_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageMover(
    String name, {
    StorageMoverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagemover:StorageMover',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
