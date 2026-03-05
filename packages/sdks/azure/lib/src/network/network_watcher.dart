import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_watcher_args.dart';
import 'network_watcher_state.dart';

/// Manages a Network Watcher.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "production-nwwatcher",
///     location: "West Europe",
/// });
/// const exampleNetworkWatcher = new azure.network.NetworkWatcher("example", {
///     name: "production-nwwatcher",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="production-nwwatcher",
///     location="West Europe")
/// example_network_watcher = azure.network.NetworkWatcher("example",
///     name="production-nwwatcher",
///     location=example.location,
///     resource_group_name=example.name)
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
///         Name = "production-nwwatcher",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkWatcher = new Azure.Network.NetworkWatcher("example", new()
///     {
///         Name = "production-nwwatcher",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("production-nwwatcher"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkWatcher(ctx, "example", &network.NetworkWatcherArgs{
/// 			Name:              pulumi.String("production-nwwatcher"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// import com.pulumi.azure.network.NetworkWatcher;
/// import com.pulumi.azure.network.NetworkWatcherArgs;
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
///             .name("production-nwwatcher")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkWatcher = new NetworkWatcher("exampleNetworkWatcher", NetworkWatcherArgs.builder()
///             .name("production-nwwatcher")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///       name: production-nwwatcher
///       location: West Europe
///   exampleNetworkWatcher:
///     type: azure:network:NetworkWatcher
///     name: example
///     properties:
///       name: production-nwwatcher
///       location: ${example.location}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Watchers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkWatcher:NetworkWatcher watcher1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkWatchers/watcher1
/// ```
class NetworkWatcher extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Network Watcher. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Network Watcher. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NetworkWatcher].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkWatcher]. {@macro pulumi_network_network_watcher_network_watcher_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkWatcher(
    String name, {
    NetworkWatcherArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkWatcher:NetworkWatcher',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NetworkWatcher] resource's state with the given [name] and [id].
  static NetworkWatcher get(
    String name,
    pulumi.Input<String> id, {
    NetworkWatcherState? state,
  }) {
    return NetworkWatcher._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkWatcher._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkWatcher:NetworkWatcher',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
