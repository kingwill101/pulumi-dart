import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_integer_args.dart';
import 'random_integer_state.dart';

/// The resource `random.RandomInteger` generates random values from a given range, described by the `min` and `max` attributes of a given resource.
///
/// This resource can be used in conjunction with resources that have the `create_before_destroy` lifecycle flag set, to avoid conflicts with unique names during the brief period where both the old and new resources exist concurrently.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// // The following example shows how to generate a random priority
/// // between 1 and 50000 for a aws_alb_listener_rule resource:
/// const priority = new random.RandomInteger("priority", {
///     min: 1,
///     max: 50000,
///     keepers: {
///         listener_arn: listenerArn,
///     },
/// });
/// const main = new aws.index.AlbListenerRule("main", {
///     listenerArn: priority.keepers?.listenerArn,
///     priority: priority.result,
///     action: [{
///         type: "forward",
///         targetGroupArn: targetGroupArn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// # The following example shows how to generate a random priority
/// # between 1 and 50000 for a aws_alb_listener_rule resource:
/// priority = random.RandomInteger("priority",
///     min=1,
///     max=50000,
///     keepers={
///         "listener_arn": listener_arn,
///     })
/// main = aws.index.AlbListenerRule("main",
///     listener_arn=priority.keepers.listener_arn,
///     priority=priority.result,
///     action=[{
///         type: forward,
///         targetGroupArn: target_group_arn,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The following example shows how to generate a random priority
///     // between 1 and 50000 for a aws_alb_listener_rule resource:
///     var priority = new Random.RandomInteger("priority", new()
///     {
///         Min = 1,
///         Max = 50000,
///         Keepers =
///         {
///             { "listener_arn", listenerArn },
///         },
///     });
///
///     var main = new Aws.Index.AlbListenerRule("main", new()
///     {
///         ListenerArn = priority.Keepers?.ListenerArn,
///         Priority = priority.Result,
///         Action = new[]
///         {
///
///             {
///                 { "type", "forward" },
///                 { "targetGroupArn", targetGroupArn },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The following example shows how to generate a random priority
/// 		// between 1 and 50000 for a aws_alb_listener_rule resource:
/// 		priority, err := random.NewRandomInteger(ctx, "priority", &random.RandomIntegerArgs{
/// 			Min: pulumi.Int(1),
/// 			Max: pulumi.Int(50000),
/// 			Keepers: pulumi.StringMap{
/// 				"listener_arn": pulumi.Any(listenerArn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewAlbListenerRule(ctx, "main", &aws.AlbListenerRuleArgs{
/// 			ListenerArn: priority.Keepers.ListenerArn,
/// 			Priority:    priority.Result,
/// 			Action: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type":           "forward",
/// 					"targetGroupArn": targetGroupArn,
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.random.RandomInteger;
/// import com.pulumi.random.RandomIntegerArgs;
/// import com.pulumi.aws.AlbListenerRule;
/// import com.pulumi.aws.AlbListenerRuleArgs;
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
///         // The following example shows how to generate a random priority
///         // between 1 and 50000 for a aws_alb_listener_rule resource:
///         var priority = new RandomInteger("priority", RandomIntegerArgs.builder()
///             .min(1)
///             .max(50000)
///             .keepers(Map.of("listener_arn", listenerArn))
///             .build());
///
///         var main = new AlbListenerRule("main", AlbListenerRuleArgs.builder()
///             .listenerArn(priority.keepers().listenerArn())
///             .priority(priority.result())
///             .action(List.of(Map.ofEntries(
///                 Map.entry("type", "forward"),
///                 Map.entry("targetGroupArn", targetGroupArn)
///             )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The following example shows how to generate a random priority
///   # between 1 and 50000 for a aws_alb_listener_rule resource:
///   priority:
///     type: random:RandomInteger
///     properties:
///       min: 1
///       max: 50000
///       keepers:
///         listener_arn: ${listenerArn}
///   main:
///     type: aws:AlbListenerRule
///     properties:
///       listenerArn: ${priority.keepers.listenerArn}
///       priority: ${priority.result}
///       action:
///         - type: forward
///           targetGroupArn: ${targetGroupArn}
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random integers can be imported using the result, min, and max, with an
///
/// optional seed. This can be used to replace a config value with a value
///
/// interpolated from the random provider without experiencing diffs.
///
/// Example (values are separated by a ,):
///
/// ```sh
/// $ pulumi import random:index/randomInteger:RandomInteger priority 15390,1,50000
/// ```
class RandomInteger extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// The maximum inclusive value of the range.
  late final pulumi.Output<int> max;
  /// The minimum inclusive value of the range.
  late final pulumi.Output<int> min;
  /// The random integer result.
  late final pulumi.Output<int> result;
  /// A custom seed to always produce the same value.
  late final pulumi.Output<String?> seed;

  /// Creates a new [RandomInteger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomInteger]. {@macro pulumi_index_random_integer_random_integer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomInteger(
    String name, {
    RandomIntegerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomInteger:RandomInteger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.max = registerOutput<int>('max');
    this.min = registerOutput<int>('min');
    this.result = registerOutput<int>('result');
    this.seed = registerOutput<String?>('seed');
  }

  /// Gets an existing [RandomInteger] resource's state with the given [name] and [id].
  static RandomInteger get(
    String name,
    pulumi.Input<String> id, {
    RandomIntegerState? state,
  }) {
    return RandomInteger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RandomInteger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomInteger:RandomInteger',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.max = registerOutput<int>('max');
    this.min = registerOutput<int>('min');
    this.result = registerOutput<int>('result');
    this.seed = registerOutput<String?>('seed');
  }
}
