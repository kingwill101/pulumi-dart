import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_connection_args.dart';
import 'hybrid_connection_state.dart';

/// Manages an Azure Relay Hybrid Connection.
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
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
///     tags: {
///         source: "managed",
///     },
/// });
/// const exampleHybridConnection = new azure.relay.HybridConnection("example", {
///     name: "acctestrnhc-%d",
///     resourceGroupName: example.name,
///     relayNamespaceName: exampleNamespace.name,
///     requiresClientAuthorization: false,
///     userMetadata: "testmetadata",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard",
///     tags={
///         "source": "managed",
///     })
/// example_hybrid_connection = azure.relay.HybridConnection("example",
///     name="acctestrnhc-%d",
///     resource_group_name=example.name,
///     relay_namespace_name=example_namespace.name,
///     requires_client_authorization=False,
///     user_metadata="testmetadata")
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
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///         Tags =
///         {
///             { "source", "managed" },
///         },
///     });
///
///     var exampleHybridConnection = new Azure.Relay.HybridConnection("example", new()
///     {
///         Name = "acctestrnhc-%d",
///         ResourceGroupName = example.Name,
///         RelayNamespaceName = exampleNamespace.Name,
///         RequiresClientAuthorization = false,
///         UserMetadata = "testmetadata",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
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
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("managed"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = relay.NewHybridConnection(ctx, "example", &relay.HybridConnectionArgs{
/// 			Name:                        pulumi.String("acctestrnhc-%d"),
/// 			ResourceGroupName:           example.Name,
/// 			RelayNamespaceName:          exampleNamespace.Name,
/// 			RequiresClientAuthorization: pulumi.Bool(false),
/// 			UserMetadata:                pulumi.String("testmetadata"),
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
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
/// import com.pulumi.azure.relay.HybridConnection;
/// import com.pulumi.azure.relay.HybridConnectionArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .tags(Map.of("source", "managed"))
///             .build());
///
///         var exampleHybridConnection = new HybridConnection("exampleHybridConnection", HybridConnectionArgs.builder()
///             .name("acctestrnhc-%d")
///             .resourceGroupName(example.name())
///             .relayNamespaceName(exampleNamespace.name())
///             .requiresClientAuthorization(false)
///             .userMetadata("testmetadata")
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
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///       tags:
///         source: managed
///   exampleHybridConnection:
///     type: azure:relay:HybridConnection
///     name: example
///     properties:
///       name: acctestrnhc-%d
///       resourceGroupName: ${example.name}
///       relayNamespaceName: ${exampleNamespace.name}
///       requiresClientAuthorization: false
///       userMetadata: testmetadata
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// ## Import
///
/// Relay Hybrid Connection's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:relay/hybridConnection:HybridConnection relay1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Relay/namespaces/relay1/hybridConnections/hconn1
/// ```
class HybridConnection extends pulumi.CustomResource {
  /// Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> relayNamespaceName;

  /// Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`.
  late final pulumi.Output<bool?> requiresClientAuthorization;

  /// The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [HybridConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridConnection]. {@macro pulumi_relay_hybrid_connection_hybrid_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridConnection(
    String name, {
    HybridConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:relay/hybridConnection:HybridConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    relayNamespaceName = registerOutput<String>('relayNamespaceName');
    requiresClientAuthorization = registerOutput<bool?>(
      'requiresClientAuthorization',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    userMetadata = registerOutput<String?>('userMetadata');
  }

  /// Gets an existing [HybridConnection] resource's state with the given [name] and [id].
  static HybridConnection get(
    String name,
    pulumi.Input<String> id, {
    HybridConnectionState? state,
  }) {
    return HybridConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HybridConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:relay/hybridConnection:HybridConnection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    relayNamespaceName = registerOutput<String>('relayNamespaceName');
    requiresClientAuthorization = registerOutput<bool?>(
      'requiresClientAuthorization',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    userMetadata = registerOutput<String?>('userMetadata');
  }
}
