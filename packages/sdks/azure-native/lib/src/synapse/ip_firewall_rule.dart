import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_firewall_rule_args.dart';

/// IP firewall rule
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an IP firewall rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipFirewallRule = new AzureNative.Synapse.IpFirewallRule("ipFirewallRule", new()
///     {
///         EndIpAddress = "10.0.0.254",
///         ResourceGroupName = "ExampleResourceGroup",
///         RuleName = "ExampleIpFirewallRule",
///         StartIpAddress = "10.0.0.0",
///         WorkspaceName = "ExampleWorkspace",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewIpFirewallRule(ctx, "ipFirewallRule", &synapse.IpFirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("10.0.0.254"),
/// 			ResourceGroupName: pulumi.String("ExampleResourceGroup"),
/// 			RuleName:          pulumi.String("ExampleIpFirewallRule"),
/// 			StartIpAddress:    pulumi.String("10.0.0.0"),
/// 			WorkspaceName:     pulumi.String("ExampleWorkspace"),
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
/// import com.pulumi.azurenative.synapse.IpFirewallRule;
/// import com.pulumi.azurenative.synapse.IpFirewallRuleArgs;
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
///         var ipFirewallRule = new IpFirewallRule("ipFirewallRule", IpFirewallRuleArgs.builder()
///             .endIpAddress("10.0.0.254")
///             .resourceGroupName("ExampleResourceGroup")
///             .ruleName("ExampleIpFirewallRule")
///             .startIpAddress("10.0.0.0")
///             .workspaceName("ExampleWorkspace")
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
/// const ipFirewallRule = new azure_native.synapse.IpFirewallRule("ipFirewallRule", {
///     endIpAddress: "10.0.0.254",
///     resourceGroupName: "ExampleResourceGroup",
///     ruleName: "ExampleIpFirewallRule",
///     startIpAddress: "10.0.0.0",
///     workspaceName: "ExampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_firewall_rule = azure_native.synapse.IpFirewallRule("ipFirewallRule",
///     end_ip_address="10.0.0.254",
///     resource_group_name="ExampleResourceGroup",
///     rule_name="ExampleIpFirewallRule",
///     start_ip_address="10.0.0.0",
///     workspace_name="ExampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   ipFirewallRule:
///     type: azure-native:synapse:IpFirewallRule
///     properties:
///       endIpAddress: 10.0.0.254
///       resourceGroupName: ExampleResourceGroup
///       ruleName: ExampleIpFirewallRule
///       startIpAddress: 10.0.0.0
///       workspaceName: ExampleWorkspace
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
/// $ pulumi import azure-native:synapse:IpFirewallRule ExampleIpFirewallRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/firewallRules/{ruleName}
/// ```
class IpFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  late final pulumi.Output<String?> endIpAddress;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource provisioning state
  late final pulumi.Output<String> provisioningState;
  /// The start IP address of the firewall rule. Must be IPv4 format
  late final pulumi.Output<String?> startIpAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IpFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpFirewallRule]. {@macro pulumi_synapse_ip_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpFirewallRule(
    String name, {
    IpFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:IpFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String?>('endIpAddress');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    startIpAddress = registerOutput<String?>('startIpAddress');
    type = registerOutput<String>('type');
  }
}
