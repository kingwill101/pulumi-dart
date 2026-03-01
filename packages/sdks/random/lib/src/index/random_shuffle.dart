import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_shuffle_args.dart';
import 'random_shuffle_state.dart';

/// The resource `random.RandomShuffle` generates a random permutation of a list of strings given as an argument.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// const az = new random.RandomShuffle("az", {
///     inputs: [
///         "us-west-1a",
///         "us-west-1c",
///         "us-west-1d",
///         "us-west-1e",
///     ],
///     resultCount: 2,
/// });
/// const example = new aws.index.Elb("example", {availabilityZones: az.results});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// az = random.RandomShuffle("az",
///     inputs=[
///         "us-west-1a",
///         "us-west-1c",
///         "us-west-1d",
///         "us-west-1e",
///     ],
///     result_count=2)
/// example = aws.index.Elb("example", availability_zones=az.results)
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
///     var az = new Random.RandomShuffle("az", new()
///     {
///         Inputs = new[]
///         {
///             "us-west-1a",
///             "us-west-1c",
///             "us-west-1d",
///             "us-west-1e",
///         },
///         ResultCount = 2,
///     });
///
///     var example = new Aws.Index.Elb("example", new()
///     {
///         AvailabilityZones = az.Results,
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
/// 		az, err := random.NewRandomShuffle(ctx, "az", &random.RandomShuffleArgs{
/// 			Inputs: pulumi.StringArray{
/// 				pulumi.String("us-west-1a"),
/// 				pulumi.String("us-west-1c"),
/// 				pulumi.String("us-west-1d"),
/// 				pulumi.String("us-west-1e"),
/// 			},
/// 			ResultCount: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewElb(ctx, "example", &aws.ElbArgs{
/// 			AvailabilityZones: az.Results,
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
/// import com.pulumi.random.RandomShuffle;
/// import com.pulumi.random.RandomShuffleArgs;
/// import com.pulumi.aws.Elb;
/// import com.pulumi.aws.ElbArgs;
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
///         var az = new RandomShuffle("az", RandomShuffleArgs.builder()
///             .inputs(
///                 "us-west-1a",
///                 "us-west-1c",
///                 "us-west-1d",
///                 "us-west-1e")
///             .resultCount(2)
///             .build());
///
///         var example = new Elb("example", ElbArgs.builder()
///             .availabilityZones(az.results())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   az:
///     type: random:RandomShuffle
///     properties:
///       inputs:
///         - us-west-1a
///         - us-west-1c
///         - us-west-1d
///         - us-west-1e
///       resultCount: 2
///   example:
///     type: aws:Elb
///     properties:
///       availabilityZones: ${az.results}
/// ```
class RandomShuffle extends pulumi.CustomResource {
  /// The list of strings to shuffle.
  late final pulumi.Output<List<String>> inputs;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  late final pulumi.Output<int?> resultCount;
  /// Random permutation of the list of strings given in `input`. The number of elements is determined by `result_count` if set, or the number of elements in `input`.
  late final pulumi.Output<List<String>> results;
  /// Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  late final pulumi.Output<String?> seed;

  /// Creates a new [RandomShuffle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomShuffle]. {@macro pulumi_index_random_shuffle_random_shuffle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomShuffle(
    String name, {
    RandomShuffleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomShuffle:RandomShuffle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inputs = registerOutput<List<String>>('inputs');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.resultCount = registerOutput<int?>('resultCount');
    this.results = registerOutput<List<String>>('results');
    this.seed = registerOutput<String?>('seed');
  }

  /// Gets an existing [RandomShuffle] resource's state with the given [name] and [id].
  static RandomShuffle get(
    String name,
    pulumi.Input<String> id, {
    RandomShuffleState? state,
  }) {
    return RandomShuffle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RandomShuffle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomShuffle:RandomShuffle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inputs = registerOutput<List<String>>('inputs');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.resultCount = registerOutput<int?>('resultCount');
    this.results = registerOutput<List<String>>('results');
    this.seed = registerOutput<String?>('seed');
  }
}
