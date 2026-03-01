import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_pet_args.dart';
import 'random_pet_state.dart';

/// The resource `random.RandomPet` generates random pet names that are intended to be used as unique identifiers for other resources.
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
/// // The following example shows how to generate a unique pet name
/// // for an AWS EC2 instance that changes each time a new AMI id is
/// // selected.
/// const server = new random.RandomPet("server", {keepers: {
///     ami_id: amiId,
/// }});
/// const serverInstance = new aws.index.Instance("server", {
///     tags: {
///         name: `web-server-${server.id}`,
///     },
///     ami: server.keepers?.amiId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// # The following example shows how to generate a unique pet name
/// # for an AWS EC2 instance that changes each time a new AMI id is
/// # selected.
/// server = random.RandomPet("server", keepers={
///     "ami_id": ami_id,
/// })
/// server_instance = aws.index.Instance("server",
///     tags={
///         name: fweb-server-{server.id},
///     },
///     ami=server.keepers.ami_id)
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
///     // The following example shows how to generate a unique pet name
///     // for an AWS EC2 instance that changes each time a new AMI id is
///     // selected.
///     var server = new Random.RandomPet("server", new()
///     {
///         Keepers =
///         {
///             { "ami_id", amiId },
///         },
///     });
///
///     var serverInstance = new Aws.Index.Instance("server", new()
///     {
///         Tags =
///         {
///             { "name", $"web-server-{server.Id}" },
///         },
///         Ami = server.Keepers?.AmiId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The following example shows how to generate a unique pet name
/// 		// for an AWS EC2 instance that changes each time a new AMI id is
/// 		// selected.
/// 		server, err := random.NewRandomPet(ctx, "server", &random.RandomPetArgs{
/// 			Keepers: pulumi.StringMap{
/// 				"ami_id": pulumi.Any(amiId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewInstance(ctx, "server", &aws.InstanceArgs{
/// 			Tags: map[string]interface{}{
/// 				"name": pulumi.Sprintf("web-server-%v", server.ID()),
/// 			},
/// 			Ami: server.Keepers.AmiId,
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
/// import com.pulumi.random.RandomPet;
/// import com.pulumi.random.RandomPetArgs;
/// import com.pulumi.aws.Instance;
/// import com.pulumi.aws.InstanceArgs;
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
///         // The following example shows how to generate a unique pet name
///         // for an AWS EC2 instance that changes each time a new AMI id is
///         // selected.
///         var server = new RandomPet("server", RandomPetArgs.builder()
///             .keepers(Map.of("ami_id", amiId))
///             .build());
///
///         var serverInstance = new Instance("serverInstance", InstanceArgs.builder()
///             .tags(Map.of("name", String.format("web-server-%s", server.id())))
///             .ami(server.keepers().amiId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The following example shows how to generate a unique pet name
///   # for an AWS EC2 instance that changes each time a new AMI id is
///   # selected.
///   server:
///     type: random:RandomPet
///     properties:
///       keepers:
///         ami_id: ${amiId}
///   serverInstance:
///     type: aws:Instance
///     name: server
///     properties:
///       tags:
///         name: web-server-${server.id}
///       ami: ${server.keepers.amiId}
/// ```
class RandomPet extends pulumi.CustomResource {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// The length (in words) of the pet name. Defaults to 2
  late final pulumi.Output<int> length;
  /// A string to prefix the name with.
  late final pulumi.Output<String?> prefix;
  /// The character to separate words in the pet name. Defaults to "-"
  late final pulumi.Output<String> separator;

  /// Creates a new [RandomPet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomPet]. {@macro pulumi_index_random_pet_random_pet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomPet(
    String name, {
    RandomPetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomPet:RandomPet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.prefix = registerOutput<String?>('prefix');
    this.separator = registerOutput<String>('separator');
  }

  /// Gets an existing [RandomPet] resource's state with the given [name] and [id].
  static RandomPet get(
    String name,
    pulumi.Input<String> id, {
    RandomPetState? state,
  }) {
    return RandomPet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RandomPet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomPet:RandomPet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.prefix = registerOutput<String?>('prefix');
    this.separator = registerOutput<String>('separator');
  }
}
