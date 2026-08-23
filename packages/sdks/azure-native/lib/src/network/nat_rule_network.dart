import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_rule_args.dart';

/// VpnGatewayNatRule Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NatRulePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var natRule = new AzureNative.Network.NatRule("natRule", new()
///     {
///         ExternalMappings = new[]
///         {
///             new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///             {
///                 AddressSpace = "192.168.21.0/24",
///             },
///         },
///         GatewayName = "gateway1",
///         InternalMappings = new[]
///         {
///             new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///             {
///                 AddressSpace = "10.4.0.0/24",
///             },
///         },
///         IpConfigurationId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default",
///         Mode = AzureNative.Network.VpnNatRuleMode.EgressSnat,
///         NatRuleName = "natRule1",
///         ResourceGroupName = "rg1",
///         Type = AzureNative.Network.VpnNatRuleType.Static,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewNatRule(ctx, "natRule", &network.NatRuleArgs{
/// 			ExternalMappings: network.VpnNatRuleMappingArray{
/// 				&network.VpnNatRuleMappingArgs{
/// 					AddressSpace: pulumi.String("192.168.21.0/24"),
/// 				},
/// 			},
/// 			GatewayName: pulumi.String("gateway1"),
/// 			InternalMappings: network.VpnNatRuleMappingArray{
/// 				&network.VpnNatRuleMappingArgs{
/// 					AddressSpace: pulumi.String("10.4.0.0/24"),
/// 				},
/// 			},
/// 			IpConfigurationId: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default"),
/// 			Mode:              pulumi.String(network.VpnNatRuleModeEgressSnat),
/// 			NatRuleName:       pulumi.String("natRule1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Type:              pulumi.String(network.VpnNatRuleTypeStatic),
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
/// resource "azure-native_network_natrule" "natRule" {
///   external_mappings {
///     address_space = "192.168.21.0/24"
///   }
///   gateway_name = "gateway1"
///   internal_mappings {
///     address_space = "10.4.0.0/24"
///   }
///   ip_configuration_id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default"
///   mode                = "EgressSnat"
///   nat_rule_name       = "natRule1"
///   resource_group_name = "rg1"
///   type                = "Static"
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
/// import com.pulumi.azurenative.network.NatRule;
/// import com.pulumi.azurenative.network.NatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.VpnNatRuleMappingArgs;
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
///         var natRule = new NatRule("natRule", NatRuleArgs.builder()
///             .externalMappings(VpnNatRuleMappingArgs.builder()
///                 .addressSpace("192.168.21.0/24")
///                 .build())
///             .gatewayName("gateway1")
///             .internalMappings(VpnNatRuleMappingArgs.builder()
///                 .addressSpace("10.4.0.0/24")
///                 .build())
///             .ipConfigurationId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default")
///             .mode("EgressSnat")
///             .natRuleName("natRule1")
///             .resourceGroupName("rg1")
///             .type("Static")
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
/// const natRule = new azure_native.network.NatRule("natRule", {
///     externalMappings: [{
///         addressSpace: "192.168.21.0/24",
///     }],
///     gatewayName: "gateway1",
///     internalMappings: [{
///         addressSpace: "10.4.0.0/24",
///     }],
///     ipConfigurationId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default",
///     mode: azure_native.network.VpnNatRuleMode.EgressSnat,
///     natRuleName: "natRule1",
///     resourceGroupName: "rg1",
///     type: azure_native.network.VpnNatRuleType.Static,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// nat_rule = azure_native.network.NatRule("natRule",
///     external_mappings=[{
///         "address_space": "192.168.21.0/24",
///     }],
///     gateway_name="gateway1",
///     internal_mappings=[{
///         "address_space": "10.4.0.0/24",
///     }],
///     ip_configuration_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default",
///     mode=azure_native.network.VpnNatRuleMode.EGRESS_SNAT,
///     nat_rule_name="natRule1",
///     resource_group_name="rg1",
///     type=azure_native.network.VpnNatRuleType.STATIC)
///
/// ```
///
/// ```yaml
/// resources:
///   natRule:
///     type: azure-native:network:NatRule
///     properties:
///       externalMappings:
///         - addressSpace: 192.168.21.0/24
///       gatewayName: gateway1
///       internalMappings:
///         - addressSpace: 10.4.0.0/24
///       ipConfigurationId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/cloudnet1-VNG/ipConfigurations/default
///       mode: EgressSnat
///       natRuleName: natRule1
///       resourceGroupName: rg1
///       type: Static
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
/// $ pulumi import azure-native:network:NatRule natRule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}/natRules/{natRuleName}
/// ```
class NatRuleNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of egress VpnSiteLinkConnections.
  late final pulumi.Output<List<Map<String, dynamic>>> egressVpnSiteLinkConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The private IP address external mapping for NAT.
  late final pulumi.Output<List<Map<String, dynamic>>?> externalMappings;
  /// List of ingress VpnSiteLinkConnections.
  late final pulumi.Output<List<Map<String, dynamic>>> ingressVpnSiteLinkConnections;
  /// The private IP address internal mapping for NAT.
  late final pulumi.Output<List<Map<String, dynamic>>?> internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  late final pulumi.Output<String?> ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  late final pulumi.Output<String?> mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the NAT Rule resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NatRuleNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatRuleNetwork]. {@macro pulumi_network_nat_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatRuleNetwork(
    String name, {
    NatRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NatRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    egressVpnSiteLinkConnections = registerOutput<List<Map<String, dynamic>>>('egressVpnSiteLinkConnections');
    etag = registerOutput<String>('etag');
    externalMappings = registerOutput<List<Map<String, dynamic>>?>('externalMappings');
    ingressVpnSiteLinkConnections = registerOutput<List<Map<String, dynamic>>>('ingressVpnSiteLinkConnections');
    internalMappings = registerOutput<List<Map<String, dynamic>>?>('internalMappings');
    ipConfigurationId = registerOutput<String?>('ipConfigurationId');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
