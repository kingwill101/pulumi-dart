import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_policy_group_args.dart';
import 'vpn_server_configuration_policy_group_state.dart';

/// Manages a VPN Server Configuration Policy Group.
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
/// const exampleVpnServerConfiguration = new azure.network.VpnServerConfiguration("example", {
///     name: "example-VPNSC",
///     resourceGroupName: example.name,
///     location: example.location,
///     vpnAuthenticationTypes: ["Radius"],
///     radius: {
///         servers: [{
///             address: "10.105.1.1",
///             secret: "vindicators-the-return-of-worldender",
///             score: 15,
///         }],
///     },
/// });
/// const exampleVpnServerConfigurationPolicyGroup = new azure.network.VpnServerConfigurationPolicyGroup("example", {
///     name: "example-VPNSCPG",
///     vpnServerConfigurationId: exampleVpnServerConfiguration.id,
///     policies: [{
///         name: "policy1",
///         type: "RadiusAzureGroupId",
///         value: "6ad1bd08",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_vpn_server_configuration = azure.network.VpnServerConfiguration("example",
///     name="example-VPNSC",
///     resource_group_name=example.name,
///     location=example.location,
///     vpn_authentication_types=["Radius"],
///     radius={
///         "servers": [{
///             "address": "10.105.1.1",
///             "secret": "vindicators-the-return-of-worldender",
///             "score": 15,
///         }],
///     })
/// example_vpn_server_configuration_policy_group = azure.network.VpnServerConfigurationPolicyGroup("example",
///     name="example-VPNSCPG",
///     vpn_server_configuration_id=example_vpn_server_configuration.id,
///     policies=[{
///         "name": "policy1",
///         "type": "RadiusAzureGroupId",
///         "value": "6ad1bd08",
///     }])
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
///     var exampleVpnServerConfiguration = new Azure.Network.VpnServerConfiguration("example", new()
///     {
///         Name = "example-VPNSC",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VpnAuthenticationTypes = new[]
///         {
///             "Radius",
///         },
///         Radius = new Azure.Network.Inputs.VpnServerConfigurationRadiusArgs
///         {
///             Servers = new[]
///             {
///                 new Azure.Network.Inputs.VpnServerConfigurationRadiusServerArgs
///                 {
///                     Address = "10.105.1.1",
///                     Secret = "vindicators-the-return-of-worldender",
///                     Score = 15,
///                 },
///             },
///         },
///     });
///
///     var exampleVpnServerConfigurationPolicyGroup = new Azure.Network.VpnServerConfigurationPolicyGroup("example", new()
///     {
///         Name = "example-VPNSCPG",
///         VpnServerConfigurationId = exampleVpnServerConfiguration.Id,
///         Policies = new[]
///         {
///             new Azure.Network.Inputs.VpnServerConfigurationPolicyGroupPolicyArgs
///             {
///                 Name = "policy1",
///                 Type = "RadiusAzureGroupId",
///                 Value = "6ad1bd08",
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVpnServerConfiguration, err := network.NewVpnServerConfiguration(ctx, "example", &network.VpnServerConfigurationArgs{
/// 			Name:              pulumi.String("example-VPNSC"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VpnAuthenticationTypes: pulumi.StringArray{
/// 				pulumi.String("Radius"),
/// 			},
/// 			Radius: &network.VpnServerConfigurationRadiusArgs{
/// 				Servers: network.VpnServerConfigurationRadiusServerArray{
/// 					&network.VpnServerConfigurationRadiusServerArgs{
/// 						Address: pulumi.String("10.105.1.1"),
/// 						Secret:  pulumi.String("vindicators-the-return-of-worldender"),
/// 						Score:   pulumi.Int(15),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVpnServerConfigurationPolicyGroup(ctx, "example", &network.VpnServerConfigurationPolicyGroupArgs{
/// 			Name:                     pulumi.String("example-VPNSCPG"),
/// 			VpnServerConfigurationId: exampleVpnServerConfiguration.ID(),
/// 			Policies: network.VpnServerConfigurationPolicyGroupPolicyArray{
/// 				&network.VpnServerConfigurationPolicyGroupPolicyArgs{
/// 					Name:  pulumi.String("policy1"),
/// 					Type:  pulumi.String("RadiusAzureGroupId"),
/// 					Value: pulumi.String("6ad1bd08"),
/// 				},
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
/// import com.pulumi.azure.network.VpnServerConfiguration;
/// import com.pulumi.azure.network.VpnServerConfigurationArgs;
/// import com.pulumi.azure.network.inputs.VpnServerConfigurationRadiusArgs;
/// import com.pulumi.azure.network.VpnServerConfigurationPolicyGroup;
/// import com.pulumi.azure.network.VpnServerConfigurationPolicyGroupArgs;
/// import com.pulumi.azure.network.inputs.VpnServerConfigurationPolicyGroupPolicyArgs;
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
///         var exampleVpnServerConfiguration = new VpnServerConfiguration("exampleVpnServerConfiguration", VpnServerConfigurationArgs.builder()
///             .name("example-VPNSC")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .vpnAuthenticationTypes("Radius")
///             .radius(VpnServerConfigurationRadiusArgs.builder()
///                 .servers(VpnServerConfigurationRadiusServerArgs.builder()
///                     .address("10.105.1.1")
///                     .secret("vindicators-the-return-of-worldender")
///                     .score(15)
///                     .build())
///                 .build())
///             .build());
///
///         var exampleVpnServerConfigurationPolicyGroup = new VpnServerConfigurationPolicyGroup("exampleVpnServerConfigurationPolicyGroup", VpnServerConfigurationPolicyGroupArgs.builder()
///             .name("example-VPNSCPG")
///             .vpnServerConfigurationId(exampleVpnServerConfiguration.id())
///             .policies(VpnServerConfigurationPolicyGroupPolicyArgs.builder()
///                 .name("policy1")
///                 .type("RadiusAzureGroupId")
///                 .value("6ad1bd08")
///                 .build())
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
///   exampleVpnServerConfiguration:
///     type: azure:network:VpnServerConfiguration
///     name: example
///     properties:
///       name: example-VPNSC
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       vpnAuthenticationTypes:
///         - Radius
///       radius:
///         servers:
///           - address: 10.105.1.1
///             secret: vindicators-the-return-of-worldender
///             score: 15
///   exampleVpnServerConfigurationPolicyGroup:
///     type: azure:network:VpnServerConfigurationPolicyGroup
///     name: example
///     properties:
///       name: example-VPNSCPG
///       vpnServerConfigurationId: ${exampleVpnServerConfiguration.id}
///       policies:
///         - name: policy1
///           type: RadiusAzureGroupId
///           value: 6ad1bd08
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
/// VPN Server Configuration Policy Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/vpnServerConfigurationPolicyGroup:VpnServerConfigurationPolicyGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Network/vpnServerConfigurations/serverConfiguration1/configurationPolicyGroups/configurationPolicyGroup1
/// ```
class VpnServerConfigurationPolicyGroup extends pulumi.CustomResource {
  /// Is this a default VPN Server Configuration Policy Group? Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> isDefault;
  /// The Name which should be used for this VPN Server Configuration Policy Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `policy` blocks as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> policies;
  /// The priority of this VPN Server Configuration Policy Group. Defaults to `0`.
  late final pulumi.Output<int?> priority;
  /// The ID of the VPN Server Configuration that the VPN Server Configuration Policy Group belongs to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vpnServerConfigurationId;

  /// Creates a new [VpnServerConfigurationPolicyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnServerConfigurationPolicyGroup]. {@macro pulumi_network_vpn_server_configuration_policy_group_vpn_server_configuration_policy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnServerConfigurationPolicyGroup(
    String name, {
    VpnServerConfigurationPolicyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnServerConfigurationPolicyGroup:VpnServerConfigurationPolicyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
    priority = registerOutput<int?>('priority');
    vpnServerConfigurationId = registerOutput<String>('vpnServerConfigurationId');
  }

  /// Gets an existing [VpnServerConfigurationPolicyGroup] resource's state with the given [name] and [id].
  static VpnServerConfigurationPolicyGroup get(
    String name,
    pulumi.Input<String> id, {
    VpnServerConfigurationPolicyGroupState? state,
  }) {
    return VpnServerConfigurationPolicyGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnServerConfigurationPolicyGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnServerConfigurationPolicyGroup:VpnServerConfigurationPolicyGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
    priority = registerOutput<int?>('priority');
    vpnServerConfigurationId = registerOutput<String>('vpnServerConfigurationId');
  }
}
