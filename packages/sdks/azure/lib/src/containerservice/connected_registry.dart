import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_registry_args.dart';
import 'connected_registry_state.dart';

/// Manages a Container Connected Registry.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "exampleacr",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Premium",
///     dataEndpointEnabled: true,
/// });
/// const exampleRegistryScopeMap = new azure.containerservice.RegistryScopeMap("example", {
///     name: "examplescopemap",
///     containerRegistryName: exampleRegistry.name,
///     resourceGroupName: exampleRegistry.resourceGroupName,
///     actions: [
///         "repositories/hello-world/content/delete",
///         "repositories/hello-world/content/read",
///         "repositories/hello-world/content/write",
///         "repositories/hello-world/metadata/read",
///         "repositories/hello-world/metadata/write",
///         "gateway/examplecr/config/read",
///         "gateway/examplecr/config/write",
///         "gateway/examplecr/message/read",
///         "gateway/examplecr/message/write",
///     ],
/// });
/// const exampleRegistryToken = new azure.containerservice.RegistryToken("example", {
///     name: "exampletoken",
///     containerRegistryName: exampleRegistry.name,
///     resourceGroupName: exampleRegistry.resourceGroupName,
///     scopeMapId: exampleRegistryScopeMap.id,
/// });
/// const exampleConnectedRegistry = new azure.containerservice.ConnectedRegistry("example", {
///     name: "examplecr",
///     containerRegistryId: exampleRegistry.id,
///     syncTokenId: exampleRegistryToken.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="exampleacr",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Premium",
///     data_endpoint_enabled=True)
/// example_registry_scope_map = azure.containerservice.RegistryScopeMap("example",
///     name="examplescopemap",
///     container_registry_name=example_registry.name,
///     resource_group_name=example_registry.resource_group_name,
///     actions=[
///         "repositories/hello-world/content/delete",
///         "repositories/hello-world/content/read",
///         "repositories/hello-world/content/write",
///         "repositories/hello-world/metadata/read",
///         "repositories/hello-world/metadata/write",
///         "gateway/examplecr/config/read",
///         "gateway/examplecr/config/write",
///         "gateway/examplecr/message/read",
///         "gateway/examplecr/message/write",
///     ])
/// example_registry_token = azure.containerservice.RegistryToken("example",
///     name="exampletoken",
///     container_registry_name=example_registry.name,
///     resource_group_name=example_registry.resource_group_name,
///     scope_map_id=example_registry_scope_map.id)
/// example_connected_registry = azure.containerservice.ConnectedRegistry("example",
///     name="examplecr",
///     container_registry_id=example_registry.id,
///     sync_token_id=example_registry_token.id)
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "exampleacr",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Premium",
///         DataEndpointEnabled = true,
///     });
///
///     var exampleRegistryScopeMap = new Azure.ContainerService.RegistryScopeMap("example", new()
///     {
///         Name = "examplescopemap",
///         ContainerRegistryName = exampleRegistry.Name,
///         ResourceGroupName = exampleRegistry.ResourceGroupName,
///         Actions = new[]
///         {
///             "repositories/hello-world/content/delete",
///             "repositories/hello-world/content/read",
///             "repositories/hello-world/content/write",
///             "repositories/hello-world/metadata/read",
///             "repositories/hello-world/metadata/write",
///             "gateway/examplecr/config/read",
///             "gateway/examplecr/config/write",
///             "gateway/examplecr/message/read",
///             "gateway/examplecr/message/write",
///         },
///     });
///
///     var exampleRegistryToken = new Azure.ContainerService.RegistryToken("example", new()
///     {
///         Name = "exampletoken",
///         ContainerRegistryName = exampleRegistry.Name,
///         ResourceGroupName = exampleRegistry.ResourceGroupName,
///         ScopeMapId = exampleRegistryScopeMap.Id,
///     });
///
///     var exampleConnectedRegistry = new Azure.ContainerService.ConnectedRegistry("example", new()
///     {
///         Name = "examplecr",
///         ContainerRegistryId = exampleRegistry.Id,
///         SyncTokenId = exampleRegistryToken.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:                pulumi.String("exampleacr"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			Sku:                 pulumi.String("Premium"),
/// 			DataEndpointEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistryScopeMap, err := containerservice.NewRegistryScopeMap(ctx, "example", &containerservice.RegistryScopeMapArgs{
/// 			Name:                  pulumi.String("examplescopemap"),
/// 			ContainerRegistryName: exampleRegistry.Name,
/// 			ResourceGroupName:     exampleRegistry.ResourceGroupName,
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("repositories/hello-world/content/delete"),
/// 				pulumi.String("repositories/hello-world/content/read"),
/// 				pulumi.String("repositories/hello-world/content/write"),
/// 				pulumi.String("repositories/hello-world/metadata/read"),
/// 				pulumi.String("repositories/hello-world/metadata/write"),
/// 				pulumi.String("gateway/examplecr/config/read"),
/// 				pulumi.String("gateway/examplecr/config/write"),
/// 				pulumi.String("gateway/examplecr/message/read"),
/// 				pulumi.String("gateway/examplecr/message/write"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistryToken, err := containerservice.NewRegistryToken(ctx, "example", &containerservice.RegistryTokenArgs{
/// 			Name:                  pulumi.String("exampletoken"),
/// 			ContainerRegistryName: exampleRegistry.Name,
/// 			ResourceGroupName:     exampleRegistry.ResourceGroupName,
/// 			ScopeMapId:            exampleRegistryScopeMap.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewConnectedRegistry(ctx, "example", &containerservice.ConnectedRegistryArgs{
/// 			Name:                pulumi.String("examplecr"),
/// 			ContainerRegistryId: exampleRegistry.ID(),
/// 			SyncTokenId:         exampleRegistryToken.ID(),
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryScopeMap;
/// import com.pulumi.azure.containerservice.RegistryScopeMapArgs;
/// import com.pulumi.azure.containerservice.RegistryToken;
/// import com.pulumi.azure.containerservice.RegistryTokenArgs;
/// import com.pulumi.azure.containerservice.ConnectedRegistry;
/// import com.pulumi.azure.containerservice.ConnectedRegistryArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("exampleacr")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Premium")
///             .dataEndpointEnabled(true)
///             .build());
///
///         var exampleRegistryScopeMap = new RegistryScopeMap("exampleRegistryScopeMap", RegistryScopeMapArgs.builder()
///             .name("examplescopemap")
///             .containerRegistryName(exampleRegistry.name())
///             .resourceGroupName(exampleRegistry.resourceGroupName())
///             .actions(
///                 "repositories/hello-world/content/delete",
///                 "repositories/hello-world/content/read",
///                 "repositories/hello-world/content/write",
///                 "repositories/hello-world/metadata/read",
///                 "repositories/hello-world/metadata/write",
///                 "gateway/examplecr/config/read",
///                 "gateway/examplecr/config/write",
///                 "gateway/examplecr/message/read",
///                 "gateway/examplecr/message/write")
///             .build());
///
///         var exampleRegistryToken = new RegistryToken("exampleRegistryToken", RegistryTokenArgs.builder()
///             .name("exampletoken")
///             .containerRegistryName(exampleRegistry.name())
///             .resourceGroupName(exampleRegistry.resourceGroupName())
///             .scopeMapId(exampleRegistryScopeMap.id())
///             .build());
///
///         var exampleConnectedRegistry = new ConnectedRegistry("exampleConnectedRegistry", ConnectedRegistryArgs.builder()
///             .name("examplecr")
///             .containerRegistryId(exampleRegistry.id())
///             .syncTokenId(exampleRegistryToken.id())
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
///       name: example-rg
///       location: West Europe
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: exampleacr
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Premium
///       dataEndpointEnabled: true
///   exampleRegistryScopeMap:
///     type: azure:containerservice:RegistryScopeMap
///     name: example
///     properties:
///       name: examplescopemap
///       containerRegistryName: ${exampleRegistry.name}
///       resourceGroupName: ${exampleRegistry.resourceGroupName}
///       actions:
///         - repositories/hello-world/content/delete
///         - repositories/hello-world/content/read
///         - repositories/hello-world/content/write
///         - repositories/hello-world/metadata/read
///         - repositories/hello-world/metadata/write
///         - gateway/examplecr/config/read
///         - gateway/examplecr/config/write
///         - gateway/examplecr/message/read
///         - gateway/examplecr/message/write
///   exampleRegistryToken:
///     type: azure:containerservice:RegistryToken
///     name: example
///     properties:
///       name: exampletoken
///       containerRegistryName: ${exampleRegistry.name}
///       resourceGroupName: ${exampleRegistry.resourceGroupName}
///       scopeMapId: ${exampleRegistryScopeMap.id}
///   exampleConnectedRegistry:
///     type: azure:containerservice:ConnectedRegistry
///     name: example
///     properties:
///       name: examplecr
///       containerRegistryId: ${exampleRegistry.id}
///       syncTokenId: ${exampleRegistryToken.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
///
/// ## Import
///
/// Container Connected Registries can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/connectedRegistry:ConnectedRegistry example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.ContainerRegistry/registries/registry1/connectedRegistries/registry1
/// ```
class ConnectedRegistry extends pulumi.CustomResource {
  /// Should the log auditing be enabled?
  late final pulumi.Output<bool?> auditLogEnabled;
  /// Specifies a list of IDs of Container Registry Tokens, which are meant to be used by the clients to connect to the Connected Registry.
  late final pulumi.Output<List<String>?> clientTokenIds;
  /// The ID of the Container Registry that this Connected Registry will reside in. Changing this forces a new Container Connected Registry to be created.
  ///
  /// &gt; **Note:** If `parent_registry_id` is not specified, the Connected Registry will be connected to the Container Registry identified by `container_registry_id`.
  late final pulumi.Output<String> containerRegistryId;
  /// The verbosity of the logs. Possible values are `None`, `Debug`, `Information`, `Warning` and `Error`. Defaults to `None`.
  late final pulumi.Output<String?> logLevel;
  /// The mode of the Connected Registry. Possible values are `Mirror`, `ReadOnly`, `ReadWrite` and `Registry`. Changing this forces a new Container Connected Registry to be created. Defaults to `ReadWrite`.
  late final pulumi.Output<String?> mode;
  /// The name which should be used for this Container Connected Registry. Changing this forces a new Container Connected Registry to be created.
  late final pulumi.Output<String> name;
  /// One or more `notification` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> notifications;
  /// The ID of the parent registry. This can be either a Container Registry ID or a Connected Registry ID. Changing this forces a new Container Connected Registry to be created.
  late final pulumi.Output<String?> parentRegistryId;
  /// The period of time (in form of ISO8601) for which a message is available to sync before it is expired. Allowed range is from `P1D` to `P90D`. Defaults to `P1D`.
  late final pulumi.Output<String?> syncMessageTtl;
  /// The cron expression indicating the schedule that the Connected Registry will sync with its parent. Defaults to `* * * * *`.
  late final pulumi.Output<String?> syncSchedule;
  /// The ID of the Container Registry Token which is used for synchronizing the Connected Registry. Changing this forces a new Container Connected Registry to be created.
  late final pulumi.Output<String> syncTokenId;
  /// The time window (in form of ISO8601) during which sync is enabled for each schedule occurrence. Allowed range is from `PT3H` to `P7D`.
  late final pulumi.Output<String?> syncWindow;

  /// Creates a new [ConnectedRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedRegistry]. {@macro pulumi_containerservice_connected_registry_connected_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedRegistry(
    String name, {
    ConnectedRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/connectedRegistry:ConnectedRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditLogEnabled = registerOutput<bool?>('auditLogEnabled');
    clientTokenIds = registerOutput<List<String>?>('clientTokenIds');
    containerRegistryId = registerOutput<String>('containerRegistryId');
    logLevel = registerOutput<String?>('logLevel');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>?>('notifications');
    parentRegistryId = registerOutput<String?>('parentRegistryId');
    syncMessageTtl = registerOutput<String?>('syncMessageTtl');
    syncSchedule = registerOutput<String?>('syncSchedule');
    syncTokenId = registerOutput<String>('syncTokenId');
    syncWindow = registerOutput<String?>('syncWindow');
  }

  /// Gets an existing [ConnectedRegistry] resource's state with the given [name] and [id].
  static ConnectedRegistry get(
    String name,
    pulumi.Input<String> id, {
    ConnectedRegistryState? state,
  }) {
    return ConnectedRegistry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConnectedRegistry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/connectedRegistry:ConnectedRegistry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditLogEnabled = registerOutput<bool?>('auditLogEnabled');
    clientTokenIds = registerOutput<List<String>?>('clientTokenIds');
    containerRegistryId = registerOutput<String>('containerRegistryId');
    logLevel = registerOutput<String?>('logLevel');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    notifications = registerOutput<List<Map<String, dynamic>>?>('notifications');
    parentRegistryId = registerOutput<String?>('parentRegistryId');
    syncMessageTtl = registerOutput<String?>('syncMessageTtl');
    syncSchedule = registerOutput<String?>('syncSchedule');
    syncTokenId = registerOutput<String>('syncTokenId');
    syncWindow = registerOutput<String?>('syncWindow');
  }
}
