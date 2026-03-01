import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_rule.dart';
import 'policy_state.dart';

/// `f5bigip.ltm.Policy` Configures ltm policies to manage traffic assigned to a virtual server
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource. For example `/Common/test-policy`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const mypool = new f5bigip.ltm.Pool("mypool", {
///     name: "/Common/test-pool",
///     allowNat: "yes",
///     allowSnat: "yes",
///     loadBalancingMode: "round-robin",
/// });
/// const test_policy = new f5bigip.ltm.Policy("test-policy", {
///     name: "/Common/test-policy",
///     strategy: "first-match",
///     requires: ["http"],
///     controls: ["forwarding"],
///     rules: [{
///         name: "rule6",
///         actions: [{
///             forward: true,
///             connection: false,
///             pool: mypool.name,
///         }],
///     }],
/// }, {
///     dependsOn: [mypool],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// mypool = f5bigip.ltm.Pool("mypool",
///     name="/Common/test-pool",
///     allow_nat="yes",
///     allow_snat="yes",
///     load_balancing_mode="round-robin")
/// test_policy = f5bigip.ltm.Policy("test-policy",
///     name="/Common/test-policy",
///     strategy="first-match",
///     requires=["http"],
///     controls=["forwarding"],
///     rules=[{
///         "name": "rule6",
///         "actions": [{
///             "forward": True,
///             "connection": False,
///             "pool": mypool.name,
///         }],
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[mypool]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mypool = new F5BigIP.Ltm.Pool("mypool", new()
///     {
///         Name = "/Common/test-pool",
///         AllowNat = "yes",
///         AllowSnat = "yes",
///         LoadBalancingMode = "round-robin",
///     });
///
///     var test_policy = new F5BigIP.Ltm.Policy("test-policy", new()
///     {
///         Name = "/Common/test-policy",
///         Strategy = "first-match",
///         Requires = new[]
///         {
///             "http",
///         },
///         Controls = new[]
///         {
///             "forwarding",
///         },
///         Rules = new[]
///         {
///             new F5BigIP.Ltm.Inputs.PolicyRuleArgs
///             {
///                 Name = "rule6",
///                 Actions = new[]
///                 {
///                     new F5BigIP.Ltm.Inputs.PolicyRuleActionArgs
///                     {
///                         Forward = true,
///                         Connection = false,
///                         Pool = mypool.Name,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             mypool,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mypool, err := ltm.NewPool(ctx, "mypool", &ltm.PoolArgs{
/// 			Name:              pulumi.String("/Common/test-pool"),
/// 			AllowNat:          pulumi.String("yes"),
/// 			AllowSnat:         pulumi.String("yes"),
/// 			LoadBalancingMode: pulumi.String("round-robin"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewPolicy(ctx, "test-policy", &ltm.PolicyArgs{
/// 			Name:     pulumi.String("/Common/test-policy"),
/// 			Strategy: pulumi.String("first-match"),
/// 			Requires: pulumi.StringArray{
/// 				pulumi.String("http"),
/// 			},
/// 			Controls: pulumi.StringArray{
/// 				pulumi.String("forwarding"),
/// 			},
/// 			Rules: ltm.PolicyRuleArray{
/// 				&ltm.PolicyRuleArgs{
/// 					Name: pulumi.String("rule6"),
/// 					Actions: ltm.PolicyRuleActionArray{
/// 						&ltm.PolicyRuleActionArgs{
/// 							Forward:    pulumi.Bool(true),
/// 							Connection: pulumi.Bool(false),
/// 							Pool:       mypool.Name,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			mypool,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.f5bigip.ltm.Pool;
/// import com.pulumi.f5bigip.ltm.PoolArgs;
/// import com.pulumi.f5bigip.ltm.Policy;
/// import com.pulumi.f5bigip.ltm.PolicyArgs;
/// import com.pulumi.f5bigip.ltm.inputs.PolicyRuleArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var mypool = new Pool("mypool", PoolArgs.builder()
///             .name("/Common/test-pool")
///             .allowNat("yes")
///             .allowSnat("yes")
///             .loadBalancingMode("round-robin")
///             .build());
///
///         var test_policy = new Policy("test-policy", PolicyArgs.builder()
///             .name("/Common/test-policy")
///             .strategy("first-match")
///             .requires("http")
///             .controls("forwarding")
///             .rules(PolicyRuleArgs.builder()
///                 .name("rule6")
///                 .actions(PolicyRuleActionArgs.builder()
///                     .forward(true)
///                     .connection(false)
///                     .pool(mypool.name())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(mypool)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mypool:
///     type: f5bigip:ltm:Pool
///     properties:
///       name: /Common/test-pool
///       allowNat: yes
///       allowSnat: yes
///       loadBalancingMode: round-robin
///   test-policy:
///     type: f5bigip:ltm:Policy
///     properties:
///       name: /Common/test-policy
///       strategy: first-match
///       requires:
///         - http
///       controls:
///         - forwarding
///       rules:
///         - name: rule6
///           actions:
///             - forward: true
///               connection: false
///               pool: ${mypool.name}
///     options:
///       dependsOn:
///         - ${mypool}
/// ```
///
///
/// ## Importing
///
/// An existing policy can be imported into this resource by supplying policy Name in `full path` as `id`.
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_policy.policy-import-test /Common/policy2
/// ```
class Policy extends pulumi.CustomResource {
  /// Specifies the controls
  late final pulumi.Output<List<String>?> controls;
  /// Specifies descriptive text that identifies the ltm policy.
  late final pulumi.Output<String?> description;
  /// Name of the Policy ( policy name should be in full path which is combination of partition and policy name )
  late final pulumi.Output<String> name;
  /// If you want to publish the policy else it will be deployed in Drafts mode. This attribute is deprecated and will be removed in a future release.
  late final pulumi.Output<String?> publishedCopy;
  /// Specifies the protocol
  late final pulumi.Output<List<String>?> requires;
  /// List of Rules can be applied using the policy. Each rule is block type with following arguments.
  late final pulumi.Output<List<PolicyRule>?> rules;
  /// Specifies the match strategy
  late final pulumi.Output<String?> strategy;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_ltm_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.controls = registerOutput<List<String>?>('controls');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.publishedCopy = registerOutput<String?>('publishedCopy');
    this.requires = registerOutput<List<String>?>('requires');
    this.rules = registerOutput<List<PolicyRule>?>('rules');
    this.strategy = registerOutput<String?>('strategy');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.controls = registerOutput<List<String>?>('controls');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.publishedCopy = registerOutput<String?>('publishedCopy');
    this.requires = registerOutput<List<String>?>('requires');
    this.rules = registerOutput<List<PolicyRule>?>('rules');
    this.strategy = registerOutput<String?>('strategy');
  }
}
