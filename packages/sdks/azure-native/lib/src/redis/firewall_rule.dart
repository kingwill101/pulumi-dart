import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'system_data_response.dart';

/// A firewall rule on a redis cache has a name, and describes a contiguous range of IP addresses permitted to connect
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCacheFirewallRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallRule = new AzureNative.Redis.FirewallRule("firewallRule", new()
///     {
///         CacheName = "cache1",
///         EndIP = "192.168.1.4",
///         ResourceGroupName = "rg1",
///         RuleName = "rule1",
///         StartIP = "192.168.1.1",
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
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewFirewallRule(ctx, "firewallRule", &redis.FirewallRuleArgs{
/// 			CacheName:         pulumi.String("cache1"),
/// 			EndIP:             pulumi.String("192.168.1.4"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RuleName:          pulumi.String("rule1"),
/// 			StartIP:           pulumi.String("192.168.1.1"),
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
/// import com.pulumi.azurenative.redis.FirewallRule;
/// import com.pulumi.azurenative.redis.FirewallRuleArgs;
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
///             .cacheName("cache1")
///             .endIP("192.168.1.4")
///             .resourceGroupName("rg1")
///             .ruleName("rule1")
///             .startIP("192.168.1.1")
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
/// const firewallRule = new azure_native.redis.FirewallRule("firewallRule", {
///     cacheName: "cache1",
///     endIP: "192.168.1.4",
///     resourceGroupName: "rg1",
///     ruleName: "rule1",
///     startIP: "192.168.1.1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_rule = azure_native.redis.FirewallRule("firewallRule",
///     cache_name="cache1",
///     end_ip="192.168.1.4",
///     resource_group_name="rg1",
///     rule_name="rule1",
///     start_ip="192.168.1.1")
///
/// ```
///
/// ```yaml
/// resources:
///   firewallRule:
///     type: azure-native:redis:FirewallRule
///     properties:
///       cacheName: cache1
///       endIP: 192.168.1.4
///       resourceGroupName: rg1
///       ruleName: rule1
///       startIP: 192.168.1.1
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
/// $ pulumi import azure-native:redis:FirewallRule cache1/rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{cacheName}/firewallRules/{ruleName}
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// highest IP address included in the range
  late final pulumi.Output<String> endIP;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// lowest IP address included in the range
  late final pulumi.Output<String> startIP;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_redis_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:redis:FirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIP = registerOutput<String>('endIP');
    this.name = registerOutput<String>('name');
    startIP = registerOutput<String>('startIP');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
