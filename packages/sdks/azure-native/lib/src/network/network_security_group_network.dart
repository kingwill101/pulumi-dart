import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_response.dart';
import 'network_interface_response.dart';
import 'network_security_group_args.dart';
import 'security_rule_response.dart';
import 'subnet_response.dart';

/// NetworkSecurityGroup resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network security group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityGroup = new AzureNative.Network.NetworkSecurityGroup("networkSecurityGroup", new()
///     {
///         Location = "eastus",
///         NetworkSecurityGroupName = "testnsg",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkSecurityGroup(ctx, "networkSecurityGroup", &network.NetworkSecurityGroupArgs{
/// 			Location:                 pulumi.String("eastus"),
/// 			NetworkSecurityGroupName: pulumi.String("testnsg"),
/// 			ResourceGroupName:        pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkSecurityGroup;
/// import com.pulumi.azurenative.network.NetworkSecurityGroupArgs;
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
///         var networkSecurityGroup = new NetworkSecurityGroup("networkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .location("eastus")
///             .networkSecurityGroupName("testnsg")
///             .resourceGroupName("rg1")
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
/// const networkSecurityGroup = new azure_native.network.NetworkSecurityGroup("networkSecurityGroup", {
///     location: "eastus",
///     networkSecurityGroupName: "testnsg",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_group = azure_native.network.NetworkSecurityGroup("networkSecurityGroup",
///     location="eastus",
///     network_security_group_name="testnsg",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityGroup:
///     type: azure-native:network:NetworkSecurityGroup
///     properties:
///       location: eastus
///       networkSecurityGroupName: testnsg
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create network security group with rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityGroup = new AzureNative.Network.NetworkSecurityGroup("networkSecurityGroup", new()
///     {
///         Location = "eastus",
///         NetworkSecurityGroupName = "testnsg",
///         ResourceGroupName = "rg1",
///         SecurityRules = new[]
///         {
///             new AzureNative.Network.Inputs.SecurityRuleArgs
///             {
///                 Access = AzureNative.Network.SecurityRuleAccess.Allow,
///                 DestinationAddressPrefix = "*",
///                 DestinationPortRange = "80",
///                 Direction = AzureNative.Network.SecurityRuleDirection.Inbound,
///                 Name = "rule1",
///                 Priority = 130,
///                 Protocol = AzureNative.Network.SecurityRuleProtocol.Asterisk,
///                 SourceAddressPrefix = "*",
///                 SourcePortRange = "*",
///             },
///         },
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
/// 		_, err := network.NewNetworkSecurityGroup(ctx, "networkSecurityGroup", &network.NetworkSecurityGroupArgs{
/// 			Location:                 pulumi.String("eastus"),
/// 			NetworkSecurityGroupName: pulumi.String("testnsg"),
/// 			ResourceGroupName:        pulumi.String("rg1"),
/// 			SecurityRules: network.SecurityRuleTypeArray{
/// 				&network.SecurityRuleTypeArgs{
/// 					Access:                   pulumi.String(network.SecurityRuleAccessAllow),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("80"),
/// 					Direction:                pulumi.String(network.SecurityRuleDirectionInbound),
/// 					Name:                     pulumi.String("rule1"),
/// 					Priority:                 pulumi.Int(130),
/// 					Protocol:                 pulumi.String(network.SecurityRuleProtocolAsterisk),
/// 					SourceAddressPrefix:      pulumi.String("*"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.network.NetworkSecurityGroup;
/// import com.pulumi.azurenative.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azurenative.network.inputs.SecurityRuleArgs;
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
///         var networkSecurityGroup = new NetworkSecurityGroup("networkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .location("eastus")
///             .networkSecurityGroupName("testnsg")
///             .resourceGroupName("rg1")
///             .securityRules(SecurityRuleArgs.builder()
///                 .access("Allow")
///                 .destinationAddressPrefix("*")
///                 .destinationPortRange("80")
///                 .direction("Inbound")
///                 .name("rule1")
///                 .priority(130)
///                 .protocol("*")
///                 .sourceAddressPrefix("*")
///                 .sourcePortRange("*")
///                 .build())
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
/// const networkSecurityGroup = new azure_native.network.NetworkSecurityGroup("networkSecurityGroup", {
///     location: "eastus",
///     networkSecurityGroupName: "testnsg",
///     resourceGroupName: "rg1",
///     securityRules: [{
///         access: azure_native.network.SecurityRuleAccess.Allow,
///         destinationAddressPrefix: "*",
///         destinationPortRange: "80",
///         direction: azure_native.network.SecurityRuleDirection.Inbound,
///         name: "rule1",
///         priority: 130,
///         protocol: azure_native.network.SecurityRuleProtocol.Asterisk,
///         sourceAddressPrefix: "*",
///         sourcePortRange: "*",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_group = azure_native.network.NetworkSecurityGroup("networkSecurityGroup",
///     location="eastus",
///     network_security_group_name="testnsg",
///     resource_group_name="rg1",
///     security_rules=[{
///         "access": azure_native.network.SecurityRuleAccess.ALLOW,
///         "destination_address_prefix": "*",
///         "destination_port_range": "80",
///         "direction": azure_native.network.SecurityRuleDirection.INBOUND,
///         "name": "rule1",
///         "priority": 130,
///         "protocol": azure_native.network.SecurityRuleProtocol.ASTERISK,
///         "source_address_prefix": "*",
///         "source_port_range": "*",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityGroup:
///     type: azure-native:network:NetworkSecurityGroup
///     properties:
///       location: eastus
///       networkSecurityGroupName: testnsg
///       resourceGroupName: rg1
///       securityRules:
///         - access: Allow
///           destinationAddressPrefix: '*'
///           destinationPortRange: '80'
///           direction: Inbound
///           name: rule1
///           priority: 130
///           protocol: '*'
///           sourceAddressPrefix: '*'
///           sourcePortRange: '*'
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
/// $ pulumi import azure-native:network:NetworkSecurityGroup testnsg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityGroups/{networkSecurityGroupName}
/// ```
class NetworkSecurityGroupNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The default security rules of network security group.
  late final pulumi.Output<List<SecurityRuleResponse>> defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A collection of references to flow log resources.
  late final pulumi.Output<List<FlowLogResponse>> flowLogs;
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  late final pulumi.Output<bool?> flushConnection;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// A collection of references to network interfaces.
  late final pulumi.Output<List<NetworkInterfaceResponse>> networkInterfaces;
  /// The provisioning state of the network security group resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the network security group resource.
  late final pulumi.Output<String> resourceGuid;
  /// A collection of security rules of the network security group.
  late final pulumi.Output<List<SecurityRuleResponse>?> securityRules;
  /// A collection of references to subnets.
  late final pulumi.Output<List<SubnetResponse>> subnets;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityGroupNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityGroupNetwork]. {@macro pulumi_network_network_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityGroupNetwork(
    String name, {
    NetworkSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.defaultSecurityRules = registerOutput<List<SecurityRuleResponse>>('defaultSecurityRules');
    this.etag = registerOutput<String>('etag');
    this.flowLogs = registerOutput<List<FlowLogResponse>>('flowLogs');
    this.flushConnection = registerOutput<bool?>('flushConnection');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkInterfaces = registerOutput<List<NetworkInterfaceResponse>>('networkInterfaces');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.securityRules = registerOutput<List<SecurityRuleResponse>?>('securityRules');
    this.subnets = registerOutput<List<SubnetResponse>>('subnets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
