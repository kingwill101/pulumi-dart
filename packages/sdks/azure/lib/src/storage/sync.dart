import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_args.dart';
import 'sync_state.dart';

/// Manages a Storage Sync.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleSync = new azure.storage.Sync("example", {
///     name: "example-storage-sync",
///     resourceGroupName: example.name,
///     location: example.location,
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_sync = azure.storage.Sync("example",
///     name="example-storage-sync",
///     resource_group_name=example.name,
///     location=example.location,
///     tags={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSync = new Azure.Storage.Sync("example", new()
///     {
///         Name = "example-storage-sync",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewSync(ctx, "example", &storage.SyncArgs{
/// 			Name:              pulumi.String("example-storage-sync"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Sync;
/// import com.pulumi.azure.storage.SyncArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSync = new Sync("exampleSync", SyncArgs.builder()
///             .name("example-storage-sync")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleSync:
///     type: azure:storage:Sync
///     name: example
///     properties:
///       name: example-storage-sync
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
///
/// ## Import
///
/// Storage Syncs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/sync:Sync example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageSync/storageSyncServices/sync1
/// ```
class Sync extends pulumi.CustomResource {
  /// Incoming traffic policy. Possible values are `AllowAllTraffic` and `AllowVirtualNetworksOnly`. Defaults to `AllowAllTraffic`.
  late final pulumi.Output<String?> incomingTrafficPolicy;
  /// The Azure Region where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Storage Sync. Changing this forces a new Storage Sync to be created.
  late final pulumi.Output<String> name;
  /// A list of registered servers owned by this Storage Sync.
  late final pulumi.Output<List<String>> registeredServers;
  /// The name of the Resource Group where the Storage Sync should exist. Changing this forces a new Storage Sync to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Storage Sync.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Sync].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sync]. {@macro pulumi_storage_sync_sync_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sync(
    String name, {
    SyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/sync:Sync',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    incomingTrafficPolicy = registerOutput<String?>('incomingTrafficPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    registeredServers = registerOutput<List<String>>('registeredServers');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Sync] resource's state with the given [name] and [id].
  static Sync get(
    String name,
    pulumi.Input<String> id, {
    SyncState? state,
  }) {
    return Sync._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Sync._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/sync:Sync',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    incomingTrafficPolicy = registerOutput<String?>('incomingTrafficPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    registeredServers = registerOutput<List<String>>('registeredServers');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
