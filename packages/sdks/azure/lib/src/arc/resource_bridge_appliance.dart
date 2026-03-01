import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_bridge_appliance_args.dart';
import 'resource_bridge_appliance_identity.dart';
import 'resource_bridge_appliance_state.dart';

/// Manages an Arc Resource Bridge Appliance.
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
/// const exampleResourceBridgeAppliance = new azure.arc.ResourceBridgeAppliance("example", {
///     name: "example-appliance",
///     location: example.location,
///     resourceGroupName: example.name,
///     distro: "AKSEdge",
///     infrastructureProvider: "VMWare",
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         hello: "world",
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
/// example_resource_bridge_appliance = azure.arc.ResourceBridgeAppliance("example",
///     name="example-appliance",
///     location=example.location,
///     resource_group_name=example.name,
///     distro="AKSEdge",
///     infrastructure_provider="VMWare",
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "hello": "world",
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
///     var exampleResourceBridgeAppliance = new Azure.Arc.ResourceBridgeAppliance("example", new()
///     {
///         Name = "example-appliance",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Distro = "AKSEdge",
///         InfrastructureProvider = "VMWare",
///         Identity = new Azure.Arc.Inputs.ResourceBridgeApplianceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "hello", "world" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arc"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = arc.NewResourceBridgeAppliance(ctx, "example", &arc.ResourceBridgeApplianceArgs{
/// 			Name:                   pulumi.String("example-appliance"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			Distro:                 pulumi.String("AKSEdge"),
/// 			InfrastructureProvider: pulumi.String("VMWare"),
/// 			Identity: &arc.ResourceBridgeApplianceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"hello": pulumi.String("world"),
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
/// import com.pulumi.azure.arc.ResourceBridgeAppliance;
/// import com.pulumi.azure.arc.ResourceBridgeApplianceArgs;
/// import com.pulumi.azure.arc.inputs.ResourceBridgeApplianceIdentityArgs;
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
///         var exampleResourceBridgeAppliance = new ResourceBridgeAppliance("exampleResourceBridgeAppliance", ResourceBridgeApplianceArgs.builder()
///             .name("example-appliance")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .distro("AKSEdge")
///             .infrastructureProvider("VMWare")
///             .identity(ResourceBridgeApplianceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("hello", "world"))
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
///   exampleResourceBridgeAppliance:
///     type: azure:arc:ResourceBridgeAppliance
///     name: example
///     properties:
///       name: example-appliance
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       distro: AKSEdge
///       infrastructureProvider: VMWare
///       identity:
///         type: SystemAssigned
///       tags:
///         hello: world
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ResourceConnector` - 2022-10-27
///
/// ## Import
///
/// Arc Resource Bridge Appliance can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:arc/resourceBridgeAppliance:ResourceBridgeAppliance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ResourceConnector/appliances/appliancesExample
/// ```
class ResourceBridgeAppliance extends pulumi.CustomResource {
  /// Specifies a supported Fabric/Infrastructure for this Arc Resource Bridge Appliance. The possible value is `AKSEdge`.
  late final pulumi.Output<String> distro;
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ResourceBridgeApplianceIdentity> identity;
  /// The infrastructure provider about the connected Arc Resource Bridge Appliance. Possible values are `HCI`,`SCVMM` and `VMWare`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> infrastructureProvider;
  /// The Azure Region where the Arc Resource Bridge Appliance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Name which should be used for this Arc Resource Bridge Appliance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The `public_key_base64` is an RSA public key in PKCS1 format encoded in base64. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> publicKeyBase64;
  /// Specifies the resource group where the Arc Resource Bridge Appliance exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Resource Bridge Appliance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ResourceBridgeAppliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceBridgeAppliance]. {@macro pulumi_arc_resource_bridge_appliance_resource_bridge_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceBridgeAppliance(
    String name, {
    ResourceBridgeApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arc/resourceBridgeAppliance:ResourceBridgeAppliance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.distro = registerOutput<String>('distro');
    this.identity = registerOutput<ResourceBridgeApplianceIdentity>('identity');
    this.infrastructureProvider = registerOutput<String>('infrastructureProvider');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicKeyBase64 = registerOutput<String?>('publicKeyBase64');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ResourceBridgeAppliance] resource's state with the given [name] and [id].
  static ResourceBridgeAppliance get(
    String name,
    pulumi.Input<String> id, {
    ResourceBridgeApplianceState? state,
  }) {
    return ResourceBridgeAppliance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceBridgeAppliance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:arc/resourceBridgeAppliance:ResourceBridgeAppliance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.distro = registerOutput<String>('distro');
    this.identity = registerOutput<ResourceBridgeApplianceIdentity>('identity');
    this.infrastructureProvider = registerOutput<String>('infrastructureProvider');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicKeyBase64 = registerOutput<String?>('publicKeyBase64');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
