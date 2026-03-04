import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_rule_args.dart';

/// Network security rule.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create security rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityRule = new AzureNative.Network.SecurityRule("securityRule", new()
///     {
///         Access = AzureNative.Network.SecurityRuleAccess.Deny,
///         DestinationAddressPrefix = "11.0.0.0/8",
///         DestinationPortRange = "8080",
///         Direction = AzureNative.Network.SecurityRuleDirection.Outbound,
///         NetworkSecurityGroupName = "testnsg",
///         Priority = 100,
///         Protocol = AzureNative.Network.SecurityRuleProtocol.Asterisk,
///         ResourceGroupName = "rg1",
///         SecurityRuleName = "rule1",
///         SourceAddressPrefix = "10.0.0.0/8",
///         SourcePortRange = "*",
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
/// 		_, err := network.NewSecurityRule(ctx, "securityRule", &network.SecurityRuleArgs{
/// 			Access:                   pulumi.String(network.SecurityRuleAccessDeny),
/// 			DestinationAddressPrefix: pulumi.String("11.0.0.0/8"),
/// 			DestinationPortRange:     pulumi.String("8080"),
/// 			Direction:                pulumi.String(network.SecurityRuleDirectionOutbound),
/// 			NetworkSecurityGroupName: pulumi.String("testnsg"),
/// 			Priority:                 pulumi.Int(100),
/// 			Protocol:                 pulumi.String(network.SecurityRuleProtocolAsterisk),
/// 			ResourceGroupName:        pulumi.String("rg1"),
/// 			SecurityRuleName:         pulumi.String("rule1"),
/// 			SourceAddressPrefix:      pulumi.String("10.0.0.0/8"),
/// 			SourcePortRange:          pulumi.String("*"),
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
/// import com.pulumi.azurenative.network.SecurityRule;
/// import com.pulumi.azurenative.network.SecurityRuleArgs;
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
///         var securityRule = new SecurityRule("securityRule", SecurityRuleArgs.builder()
///             .access("Deny")
///             .destinationAddressPrefix("11.0.0.0/8")
///             .destinationPortRange("8080")
///             .direction("Outbound")
///             .networkSecurityGroupName("testnsg")
///             .priority(100)
///             .protocol("*")
///             .resourceGroupName("rg1")
///             .securityRuleName("rule1")
///             .sourceAddressPrefix("10.0.0.0/8")
///             .sourcePortRange("*")
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
/// const securityRule = new azure_native.network.SecurityRule("securityRule", {
///     access: azure_native.network.SecurityRuleAccess.Deny,
///     destinationAddressPrefix: "11.0.0.0/8",
///     destinationPortRange: "8080",
///     direction: azure_native.network.SecurityRuleDirection.Outbound,
///     networkSecurityGroupName: "testnsg",
///     priority: 100,
///     protocol: azure_native.network.SecurityRuleProtocol.Asterisk,
///     resourceGroupName: "rg1",
///     securityRuleName: "rule1",
///     sourceAddressPrefix: "10.0.0.0/8",
///     sourcePortRange: "*",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_rule = azure_native.network.SecurityRule("securityRule",
///     access=azure_native.network.SecurityRuleAccess.DENY,
///     destination_address_prefix="11.0.0.0/8",
///     destination_port_range="8080",
///     direction=azure_native.network.SecurityRuleDirection.OUTBOUND,
///     network_security_group_name="testnsg",
///     priority=100,
///     protocol=azure_native.network.SecurityRuleProtocol.ASTERISK,
///     resource_group_name="rg1",
///     security_rule_name="rule1",
///     source_address_prefix="10.0.0.0/8",
///     source_port_range="*")
///
/// ```
///
/// ```yaml
/// resources:
///   securityRule:
///     type: azure-native:network:SecurityRule
///     properties:
///       access: Deny
///       destinationAddressPrefix: 11.0.0.0/8
///       destinationPortRange: '8080'
///       direction: Outbound
///       networkSecurityGroupName: testnsg
///       priority: 100
///       protocol: '*'
///       resourceGroupName: rg1
///       securityRuleName: rule1
///       sourceAddressPrefix: 10.0.0.0/8
///       sourcePortRange: '*'
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
/// $ pulumi import azure-native:network:SecurityRule rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}/securityRules/{securityRuleName}
/// ```
class SecurityRuleNetwork extends pulumi.CustomResource {
  /// The network traffic is allowed or denied.
  late final pulumi.Output<String> access;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description for this rule. Restricted to 140 chars.
  late final pulumi.Output<String?> description;

  /// The destination address prefix. CIDR or destination IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.
  late final pulumi.Output<String?> destinationAddressPrefix;

  /// The destination address prefixes. CIDR or destination IP ranges.
  late final pulumi.Output<List<String>?> destinationAddressPrefixes;

  /// The application security group specified as destination.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  destinationApplicationSecurityGroups;

  /// The destination port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  late final pulumi.Output<String?> destinationPortRange;

  /// The destination port ranges.
  late final pulumi.Output<List<String>?> destinationPortRanges;

  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  late final pulumi.Output<String> direction;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;

  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;

  /// The provisioning state of the security rule resource.
  late final pulumi.Output<String> provisioningState;

  /// The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used. If this is an ingress rule, specifies where network traffic originates from.
  late final pulumi.Output<String?> sourceAddressPrefix;

  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<String>?> sourceAddressPrefixes;

  /// The application security group specified as source.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  sourceApplicationSecurityGroups;

  /// The source port or range. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  late final pulumi.Output<String?> sourcePortRange;

  /// The source port ranges.
  late final pulumi.Output<List<String>?> sourcePortRanges;

  /// The type of the resource.
  late final pulumi.Output<String?> type;

  /// Creates a new [SecurityRuleNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityRuleNetwork]. {@macro pulumi_network_security_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityRuleNetwork(
    String name, {
    SecurityRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:SecurityRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    access = registerOutput<String>('access');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationAddressPrefix = registerOutput<String?>(
      'destinationAddressPrefix',
    );
    destinationAddressPrefixes = registerOutput<List<String>?>(
      'destinationAddressPrefixes',
    );
    destinationApplicationSecurityGroups =
        registerOutput<List<Map<String, dynamic>>?>(
          'destinationApplicationSecurityGroups',
        );
    destinationPortRange = registerOutput<String?>('destinationPortRange');
    destinationPortRanges = registerOutput<List<String>?>(
      'destinationPortRanges',
    );
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    sourceAddressPrefix = registerOutput<String?>('sourceAddressPrefix');
    sourceAddressPrefixes = registerOutput<List<String>?>(
      'sourceAddressPrefixes',
    );
    sourceApplicationSecurityGroups =
        registerOutput<List<Map<String, dynamic>>?>(
          'sourceApplicationSecurityGroups',
        );
    sourcePortRange = registerOutput<String?>('sourcePortRange');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges');
    type = registerOutput<String?>('type');
  }
}
