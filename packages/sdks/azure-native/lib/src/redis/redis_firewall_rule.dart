import 'package:pulumi/pulumi.dart' as pulumi;
import 'redis_firewall_rule_args.dart';

/// A firewall rule on a redis cache has a name, and describes a contiguous range of IP addresses permitted to connect
///
/// Uses Azure REST API version 2016-04-01.
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
///     var redisFirewallRule = new AzureNative.Redis.RedisFirewallRule("redisFirewallRule", new()
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
/// 		_, err := redis.NewRedisFirewallRule(ctx, "redisFirewallRule", &redis.RedisFirewallRuleArgs{
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
/// import com.pulumi.azurenative.redis.RedisFirewallRule;
/// import com.pulumi.azurenative.redis.RedisFirewallRuleArgs;
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
///         var redisFirewallRule = new RedisFirewallRule("redisFirewallRule", RedisFirewallRuleArgs.builder()
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
/// const redisFirewallRule = new azure_native.redis.RedisFirewallRule("redisFirewallRule", {
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
/// redis_firewall_rule = azure_native.redis.RedisFirewallRule("redisFirewallRule",
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
///   redisFirewallRule:
///     type: azure-native:redis:RedisFirewallRule
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
/// $ pulumi import azure-native:redis:RedisFirewallRule cache1/rule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{cacheName}/firewallRules/{ruleName}
/// ```
class RedisFirewallRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// highest IP address included in the range
  late final pulumi.Output<String> endIP;

  /// name of the firewall rule
  late final pulumi.Output<String> name;

  /// lowest IP address included in the range
  late final pulumi.Output<String> startIP;

  /// type (of the firewall rule resource = 'Microsoft.Cache/redis/firewallRule')
  late final pulumi.Output<String> type;

  /// Creates a new [RedisFirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedisFirewallRule]. {@macro pulumi_redis_redis_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedisFirewallRule(
    String name, {
    RedisFirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:redis:RedisFirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endIP = registerOutput<String>('endIP');
    this.name = registerOutput<String>('name');
    startIP = registerOutput<String>('startIP');
    type = registerOutput<String>('type');
  }
}
