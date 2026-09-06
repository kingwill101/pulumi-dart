import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_rule_args.dart';

/// A virtual network rule.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a virtual network rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkRule = new AzureNative.Sql.VirtualNetworkRule("virtualNetworkRule", new()
///     {
///         IgnoreMissingVnetServiceEndpoint = false,
///         ResourceGroupName = "Default",
///         ServerName = "vnet-test-svr",
///         VirtualNetworkRuleName = "vnet-firewall-rule",
///         VirtualNetworkSubnetId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewVirtualNetworkRule(ctx, "virtualNetworkRule", &sql.VirtualNetworkRuleArgs{
/// 			IgnoreMissingVnetServiceEndpoint: pulumi.Bool(false),
/// 			ResourceGroupName:                pulumi.String("Default"),
/// 			ServerName:                       pulumi.String("vnet-test-svr"),
/// 			VirtualNetworkRuleName:           pulumi.String("vnet-firewall-rule"),
/// 			VirtualNetworkSubnetId:           pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"),
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
/// resource "azure-native_sql_virtualnetworkrule" "virtualNetworkRule" {
///   ignore_missing_vnet_service_endpoint = false
///   resource_group_name                  = "Default"
///   server_name                          = "vnet-test-svr"
///   virtual_network_rule_name            = "vnet-firewall-rule"
///   virtual_network_subnet_id            = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet"
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
/// import com.pulumi.azurenative.sql.VirtualNetworkRule;
/// import com.pulumi.azurenative.sql.VirtualNetworkRuleArgs;
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
///         var virtualNetworkRule = new VirtualNetworkRule("virtualNetworkRule", VirtualNetworkRuleArgs.builder()
///             .ignoreMissingVnetServiceEndpoint(false)
///             .resourceGroupName("Default")
///             .serverName("vnet-test-svr")
///             .virtualNetworkRuleName("vnet-firewall-rule")
///             .virtualNetworkSubnetId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
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
/// const virtualNetworkRule = new azure_native.sql.VirtualNetworkRule("virtualNetworkRule", {
///     ignoreMissingVnetServiceEndpoint: false,
///     resourceGroupName: "Default",
///     serverName: "vnet-test-svr",
///     virtualNetworkRuleName: "vnet-firewall-rule",
///     virtualNetworkSubnetId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_rule = azure_native.sql.VirtualNetworkRule("virtualNetworkRule",
///     ignore_missing_vnet_service_endpoint=False,
///     resource_group_name="Default",
///     server_name="vnet-test-svr",
///     virtual_network_rule_name="vnet-firewall-rule",
///     virtual_network_subnet_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkRule:
///     type: azure-native:sql:VirtualNetworkRule
///     properties:
///       ignoreMissingVnetServiceEndpoint: false
///       resourceGroupName: Default
///       serverName: vnet-test-svr
///       virtualNetworkRuleName: vnet-firewall-rule
///       virtualNetworkSubnetId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet
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
/// $ pulumi import azure-native:sql:VirtualNetworkRule vnet-firewall-rule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/virtualNetworkRules/{virtualNetworkRuleName}
/// ```
class VirtualNetworkRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  late final pulumi.Output<bool?> ignoreMissingVnetServiceEndpoint;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Virtual Network Rule State
  late final pulumi.Output<String> state;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The ARM resource id of the virtual network subnet.
  late final pulumi.Output<String> virtualNetworkSubnetId;

  /// Creates a new [VirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkRule]. {@macro pulumi_sql_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkRule(
    String name, {
    VirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:VirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ignoreMissingVnetServiceEndpoint = registerOutput<bool?>('ignoreMissingVnetServiceEndpoint');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    virtualNetworkSubnetId = registerOutput<String>('virtualNetworkSubnetId');
  }

  /// Creates a typed reference to an existing [VirtualNetworkRule] resource.
  VirtualNetworkRule.reference(String urn)
    : super(
        'azure-native:sql:VirtualNetworkRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ignoreMissingVnetServiceEndpoint = registerOutput<bool?>('ignoreMissingVnetServiceEndpoint');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
    virtualNetworkSubnetId = registerOutput<String>('virtualNetworkSubnetId');
  }
}
