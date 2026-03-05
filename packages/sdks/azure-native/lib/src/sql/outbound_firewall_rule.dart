import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_firewall_rule_args.dart';

/// An Azure SQL DB Server Outbound Firewall Rule.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve or reject a outbound firewall rule with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var outboundFirewallRule = new AzureNative.Sql.OutboundFirewallRule("outboundFirewallRule", new()
///     {
///         OutboundRuleFqdn = "server.database.windows.net",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerName = "sqlcrudtest-4645",
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
/// 		_, err := sql.NewOutboundFirewallRule(ctx, "outboundFirewallRule", &sql.OutboundFirewallRuleArgs{
/// 			OutboundRuleFqdn:  pulumi.String("server.database.windows.net"),
/// 			ResourceGroupName: pulumi.String("sqlcrudtest-7398"),
/// 			ServerName:        pulumi.String("sqlcrudtest-4645"),
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
/// import com.pulumi.azurenative.sql.OutboundFirewallRule;
/// import com.pulumi.azurenative.sql.OutboundFirewallRuleArgs;
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
///         var outboundFirewallRule = new OutboundFirewallRule("outboundFirewallRule", OutboundFirewallRuleArgs.builder()
///             .outboundRuleFqdn("server.database.windows.net")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverName("sqlcrudtest-4645")
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
/// const outboundFirewallRule = new azure_native.sql.OutboundFirewallRule("outboundFirewallRule", {
///     outboundRuleFqdn: "server.database.windows.net",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverName: "sqlcrudtest-4645",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// outbound_firewall_rule = azure_native.sql.OutboundFirewallRule("outboundFirewallRule",
///     outbound_rule_fqdn="server.database.windows.net",
///     resource_group_name="sqlcrudtest-7398",
///     server_name="sqlcrudtest-4645")
///
/// ```
///
/// ```yaml
/// resources:
///   outboundFirewallRule:
///     type: azure-native:sql:OutboundFirewallRule
///     properties:
///       outboundRuleFqdn: server.database.windows.net
///       resourceGroupName: sqlcrudtest-7398
///       serverName: sqlcrudtest-4645
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
/// $ pulumi import azure-native:sql:OutboundFirewallRule server.database.windows.net /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/outboundFirewallRules/{outboundRuleFqdn}
/// ```
class OutboundFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The state of the outbound rule.
  late final pulumi.Output<String> provisioningState;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [OutboundFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundFirewallRule]. {@macro pulumi_sql_outbound_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundFirewallRule(
    String name, {
    OutboundFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:OutboundFirewallRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
