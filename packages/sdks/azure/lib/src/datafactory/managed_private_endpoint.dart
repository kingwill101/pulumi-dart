import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_args.dart';
import 'managed_private_endpoint_state.dart';

/// Manages a Data Factory Managed Private Endpoint.
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
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     managedVirtualNetworkEnabled: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountKind: "BlobStorage",
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleManagedPrivateEndpoint = new azure.datafactory.ManagedPrivateEndpoint("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     targetResourceId: exampleAccount.id,
///     subresourceName: "blob",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     managed_virtual_network_enabled=True)
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_kind="BlobStorage",
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_managed_private_endpoint = azure.datafactory.ManagedPrivateEndpoint("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     target_resource_id=example_account.id,
///     subresource_name="blob")
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
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ManagedVirtualNetworkEnabled = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountKind = "BlobStorage",
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleManagedPrivateEndpoint = new Azure.DataFactory.ManagedPrivateEndpoint("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         TargetResourceId = exampleAccount.Id,
///         SubresourceName = "blob",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
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
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:                         pulumi.String("example"),
/// 			Location:                     example.Location,
/// 			ResourceGroupName:            example.Name,
/// 			ManagedVirtualNetworkEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewManagedPrivateEndpoint(ctx, "example", &datafactory.ManagedPrivateEndpointArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			TargetResourceId: exampleAccount.ID(),
/// 			SubresourceName:  pulumi.String("blob"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.datafactory.ManagedPrivateEndpoint;
/// import com.pulumi.azure.datafactory.ManagedPrivateEndpointArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .managedVirtualNetworkEnabled(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountKind("BlobStorage")
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleManagedPrivateEndpoint = new ManagedPrivateEndpoint("exampleManagedPrivateEndpoint", ManagedPrivateEndpointArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .targetResourceId(exampleAccount.id())
///             .subresourceName("blob")
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       managedVirtualNetworkEnabled: true
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountKind: BlobStorage
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleManagedPrivateEndpoint:
///     type: azure:datafactory:ManagedPrivateEndpoint
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       targetResourceId: ${exampleAccount.id}
///       subresourceName: blob
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataFactory` - 2018-06-01
///
/// ## Import
///
/// Data Factory Managed Private Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/managedPrivateEndpoint:ManagedPrivateEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/managedVirtualNetworks/default/managedPrivateEndpoints/endpoint1
/// ```
class ManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The ID of the Data Factory on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataFactoryId;
  /// Fully qualified domain names. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Possible values are listed in [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#dns-configuration).
  late final pulumi.Output<List<String>> fqdns;
  /// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the sub resource name which the Data Factory Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Data Factory Private Endpoint should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrivateEndpoint]. {@macro pulumi_datafactory_managed_private_endpoint_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrivateEndpoint(
    String name, {
    ManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/managedPrivateEndpoint:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.fqdns = registerOutput<List<String>>('fqdns');
    this.name = registerOutput<String>('name');
    this.subresourceName = registerOutput<String?>('subresourceName');
    this.targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [ManagedPrivateEndpoint] resource's state with the given [name] and [id].
  static ManagedPrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ManagedPrivateEndpointState? state,
  }) {
    return ManagedPrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedPrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/managedPrivateEndpoint:ManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.fqdns = registerOutput<List<String>>('fqdns');
    this.name = registerOutput<String>('name');
    this.subresourceName = registerOutput<String?>('subresourceName');
    this.targetResourceId = registerOutput<String>('targetResourceId');
  }
}
