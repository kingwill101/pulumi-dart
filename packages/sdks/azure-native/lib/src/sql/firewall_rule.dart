import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';

/// A server firewall rule.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a firewall rule max/min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.Sql.FirewallRule("firewallRule", new()
///     {
///         EndIpAddress = "0.0.0.3",
///         FirewallRuleName = "firewallrulecrudtest-5370",
///         ResourceGroupName = "firewallrulecrudtest-12",
///         ServerName = "firewallrulecrudtest-6285",
///         StartIpAddress = "0.0.0.3",
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
/// 		_, err := sql.NewFirewallRule(ctx, "firewallRule", &sql.FirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("0.0.0.3"),
/// 			FirewallRuleName:  pulumi.String("firewallrulecrudtest-5370"),
/// 			ResourceGroupName: pulumi.String("firewallrulecrudtest-12"),
/// 			ServerName:        pulumi.String("firewallrulecrudtest-6285"),
/// 			StartIpAddress:    pulumi.String("0.0.0.3"),
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
/// import com.pulumi.azurenative.sql.FirewallRule;
/// import com.pulumi.azurenative.sql.FirewallRuleArgs;
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
///         var firewallRule = new FirewallRule("firewallRule", FirewallRuleArgs.builder()
///             .endIpAddress("0.0.0.3")
///             .firewallRuleName("firewallrulecrudtest-5370")
///             .resourceGroupName("firewallrulecrudtest-12")
///             .serverName("firewallrulecrudtest-6285")
///             .startIpAddress("0.0.0.3")
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
/// const firewallRule = new azure_native.sql.FirewallRule("firewallRule", {
///     endIpAddress: "0.0.0.3",
///     firewallRuleName: "firewallrulecrudtest-5370",
///     resourceGroupName: "firewallrulecrudtest-12",
///     serverName: "firewallrulecrudtest-6285",
///     startIpAddress: "0.0.0.3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.sql.FirewallRule("firewallRule",
///     end_ip_address="0.0.0.3",
///     firewall_rule_name="firewallrulecrudtest-5370",
///     resource_group_name="firewallrulecrudtest-12",
///     server_name="firewallrulecrudtest-6285",
///     start_ip_address="0.0.0.3")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:sql:FirewallRule
///     properties:
///       endIpAddress: 0.0.0.3
///       firewallRuleName: firewallrulecrudtest-5370
///       resourceGroupName: firewallrulecrudtest-12
///       serverName: firewallrulecrudtest-6285
///       startIpAddress: 0.0.0.3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a firewall rule max/min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.Sql.FirewallRule("firewallRule", new()
///     {
///         EndIpAddress = "0.0.0.1",
///         FirewallRuleName = "firewallrulecrudtest-3927",
///         ResourceGroupName = "firewallrulecrudtest-12",
///         ServerName = "firewallrulecrudtest-6285",
///         StartIpAddress = "0.0.0.1",
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
/// 		_, err := sql.NewFirewallRule(ctx, "firewallRule", &sql.FirewallRuleArgs{
/// 			EndIpAddress:      pulumi.String("0.0.0.1"),
/// 			FirewallRuleName:  pulumi.String("firewallrulecrudtest-3927"),
/// 			ResourceGroupName: pulumi.String("firewallrulecrudtest-12"),
/// 			ServerName:        pulumi.String("firewallrulecrudtest-6285"),
/// 			StartIpAddress:    pulumi.String("0.0.0.1"),
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
/// import com.pulumi.azurenative.sql.FirewallRule;
/// import com.pulumi.azurenative.sql.FirewallRuleArgs;
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
///         var firewallRule = new FirewallRule("firewallRule", FirewallRuleArgs.builder()
///             .endIpAddress("0.0.0.1")
///             .firewallRuleName("firewallrulecrudtest-3927")
///             .resourceGroupName("firewallrulecrudtest-12")
///             .serverName("firewallrulecrudtest-6285")
///             .startIpAddress("0.0.0.1")
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
/// const firewallRule = new azure_native.sql.FirewallRule("firewallRule", {
///     endIpAddress: "0.0.0.1",
///     firewallRuleName: "firewallrulecrudtest-3927",
///     resourceGroupName: "firewallrulecrudtest-12",
///     serverName: "firewallrulecrudtest-6285",
///     startIpAddress: "0.0.0.1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.sql.FirewallRule("firewallRule",
///     end_ip_address="0.0.0.1",
///     firewall_rule_name="firewallrulecrudtest-3927",
///     resource_group_name="firewallrulecrudtest-12",
///     server_name="firewallrulecrudtest-6285",
///     start_ip_address="0.0.0.1")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:sql:FirewallRule
///     properties:
///       endIpAddress: 0.0.0.1
///       firewallRuleName: firewallrulecrudtest-3927
///       resourceGroupName: firewallrulecrudtest-12
///       serverName: firewallrulecrudtest-6285
///       startIpAddress: 0.0.0.1
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
/// $ pulumi import azure-native:sql:FirewallRule firewallrulecrudtest-3927 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/firewallRules/{firewallRuleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' for all Azure-internal IP addresses.
  late final pulumi.Output<String?> endIpAddress;
  /// Resource name.
  late final pulumi.Output<String?> name;
  /// The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' for all Azure-internal IP addresses.
  late final pulumi.Output<String?> startIpAddress;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_sql_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:FirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIpAddress = registerOutput<String?>('endIpAddress');
    this.name = registerOutput<String?>('name');
    startIpAddress = registerOutput<String?>('startIpAddress');
    type = registerOutput<String>('type');
  }
}
