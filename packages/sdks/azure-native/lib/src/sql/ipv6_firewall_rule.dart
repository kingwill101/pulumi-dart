import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_firewall_rule_args.dart';

/// An IPv6 server firewall rule.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an IPv6 firewall rule max/min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iPv6FirewallRule = new AzureNative.Sql.IPv6FirewallRule("iPv6FirewallRule", new()
///     {
///         EndIPv6Address = "0000:0000:0000:0000:0000:ffff:0000:0003",
///         FirewallRuleName = "firewallrulecrudtest-5370",
///         ResourceGroupName = "firewallrulecrudtest-12",
///         ServerName = "firewallrulecrudtest-6285",
///         StartIPv6Address = "0000:0000:0000:0000:0000:ffff:0000:0003",
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
/// 		_, err := sql.NewIPv6FirewallRule(ctx, "iPv6FirewallRule", &sql.IPv6FirewallRuleArgs{
/// 			EndIPv6Address:    pulumi.String("0000:0000:0000:0000:0000:ffff:0000:0003"),
/// 			FirewallRuleName:  pulumi.String("firewallrulecrudtest-5370"),
/// 			ResourceGroupName: pulumi.String("firewallrulecrudtest-12"),
/// 			ServerName:        pulumi.String("firewallrulecrudtest-6285"),
/// 			StartIPv6Address:  pulumi.String("0000:0000:0000:0000:0000:ffff:0000:0003"),
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
/// import com.pulumi.azurenative.sql.IPv6FirewallRule;
/// import com.pulumi.azurenative.sql.IPv6FirewallRuleArgs;
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
///         var iPv6FirewallRule = new IPv6FirewallRule("iPv6FirewallRule", IPv6FirewallRuleArgs.builder()
///             .endIPv6Address("0000:0000:0000:0000:0000:ffff:0000:0003")
///             .firewallRuleName("firewallrulecrudtest-5370")
///             .resourceGroupName("firewallrulecrudtest-12")
///             .serverName("firewallrulecrudtest-6285")
///             .startIPv6Address("0000:0000:0000:0000:0000:ffff:0000:0003")
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
/// const iPv6FirewallRule = new azure_native.sql.IPv6FirewallRule("iPv6FirewallRule", {
///     endIPv6Address: "0000:0000:0000:0000:0000:ffff:0000:0003",
///     firewallRuleName: "firewallrulecrudtest-5370",
///     resourceGroupName: "firewallrulecrudtest-12",
///     serverName: "firewallrulecrudtest-6285",
///     startIPv6Address: "0000:0000:0000:0000:0000:ffff:0000:0003",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// i_pv6_firewall_rule = azure_native.sql.IPv6FirewallRule("iPv6FirewallRule",
///     end_i_pv6_address="0000:0000:0000:0000:0000:ffff:0000:0003",
///     firewall_rule_name="firewallrulecrudtest-5370",
///     resource_group_name="firewallrulecrudtest-12",
///     server_name="firewallrulecrudtest-6285",
///     start_i_pv6_address="0000:0000:0000:0000:0000:ffff:0000:0003")
///
/// ```
///
/// ```yaml
/// resources:
///   iPv6FirewallRule:
///     type: azure-native:sql:IPv6FirewallRule
///     properties:
///       endIPv6Address: 0000:0000:0000:0000:0000:ffff:0000:0003
///       firewallRuleName: firewallrulecrudtest-5370
///       resourceGroupName: firewallrulecrudtest-12
///       serverName: firewallrulecrudtest-6285
///       startIPv6Address: 0000:0000:0000:0000:0000:ffff:0000:0003
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update an IPv6 firewall rule max/min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iPv6FirewallRule = new AzureNative.Sql.IPv6FirewallRule("iPv6FirewallRule", new()
///     {
///         EndIPv6Address = "0000:0000:0000:0000:0000:ffff:0000:0001",
///         FirewallRuleName = "firewallrulecrudtest-3927",
///         ResourceGroupName = "firewallrulecrudtest-12",
///         ServerName = "firewallrulecrudtest-6285",
///         StartIPv6Address = "0000:0000:0000:0000:0000:ffff:0000:0001",
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
/// 		_, err := sql.NewIPv6FirewallRule(ctx, "iPv6FirewallRule", &sql.IPv6FirewallRuleArgs{
/// 			EndIPv6Address:    pulumi.String("0000:0000:0000:0000:0000:ffff:0000:0001"),
/// 			FirewallRuleName:  pulumi.String("firewallrulecrudtest-3927"),
/// 			ResourceGroupName: pulumi.String("firewallrulecrudtest-12"),
/// 			ServerName:        pulumi.String("firewallrulecrudtest-6285"),
/// 			StartIPv6Address:  pulumi.String("0000:0000:0000:0000:0000:ffff:0000:0001"),
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
/// import com.pulumi.azurenative.sql.IPv6FirewallRule;
/// import com.pulumi.azurenative.sql.IPv6FirewallRuleArgs;
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
///         var iPv6FirewallRule = new IPv6FirewallRule("iPv6FirewallRule", IPv6FirewallRuleArgs.builder()
///             .endIPv6Address("0000:0000:0000:0000:0000:ffff:0000:0001")
///             .firewallRuleName("firewallrulecrudtest-3927")
///             .resourceGroupName("firewallrulecrudtest-12")
///             .serverName("firewallrulecrudtest-6285")
///             .startIPv6Address("0000:0000:0000:0000:0000:ffff:0000:0001")
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
/// const iPv6FirewallRule = new azure_native.sql.IPv6FirewallRule("iPv6FirewallRule", {
///     endIPv6Address: "0000:0000:0000:0000:0000:ffff:0000:0001",
///     firewallRuleName: "firewallrulecrudtest-3927",
///     resourceGroupName: "firewallrulecrudtest-12",
///     serverName: "firewallrulecrudtest-6285",
///     startIPv6Address: "0000:0000:0000:0000:0000:ffff:0000:0001",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// i_pv6_firewall_rule = azure_native.sql.IPv6FirewallRule("iPv6FirewallRule",
///     end_i_pv6_address="0000:0000:0000:0000:0000:ffff:0000:0001",
///     firewall_rule_name="firewallrulecrudtest-3927",
///     resource_group_name="firewallrulecrudtest-12",
///     server_name="firewallrulecrudtest-6285",
///     start_i_pv6_address="0000:0000:0000:0000:0000:ffff:0000:0001")
///
/// ```
///
/// ```yaml
/// resources:
///   iPv6FirewallRule:
///     type: azure-native:sql:IPv6FirewallRule
///     properties:
///       endIPv6Address: 0000:0000:0000:0000:0000:ffff:0000:0001
///       firewallRuleName: firewallrulecrudtest-3927
///       resourceGroupName: firewallrulecrudtest-12
///       serverName: firewallrulecrudtest-6285
///       startIPv6Address: 0000:0000:0000:0000:0000:ffff:0000:0001
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
/// $ pulumi import azure-native:sql:IPv6FirewallRule firewallrulecrudtest-3927 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/ipv6FirewallRules/{firewallRuleName}
/// ```
class IPv6FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The end IP address of the firewall rule. Must be IPv6 format. Must be greater than or equal to startIpv6Address.
  late final pulumi.Output<String?> endIPv6Address;

  /// Resource name.
  late final pulumi.Output<String?> name;

  /// The start IP address of the firewall rule. Must be IPv6 format.
  late final pulumi.Output<String?> startIPv6Address;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IPv6FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IPv6FirewallRule]. {@macro pulumi_sql_ipv6_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IPv6FirewallRule(
    String name, {
    IPv6FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:IPv6FirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIPv6Address = registerOutput<String?>('endIPv6Address');
    this.name = registerOutput<String?>('name');
    startIPv6Address = registerOutput<String?>('startIPv6Address');
    type = registerOutput<String>('type');
  }
}
