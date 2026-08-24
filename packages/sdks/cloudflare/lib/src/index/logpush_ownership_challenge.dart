import 'package:pulumi/pulumi.dart' as pulumi;
import 'logpush_ownership_challenge_args.dart';
import 'logpush_ownership_challenge_state.dart';

/// Accepted Permissions
///
/// - `Logs Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLogpushOwnershipChallenge = new cloudflare.LogpushOwnershipChallenge("example_logpush_ownership_challenge", {
///     destinationConf: "s3://mybucket/logs?region=us-west-2",
///     zoneId: "zone_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_logpush_ownership_challenge = cloudflare.LogpushOwnershipChallenge("example_logpush_ownership_challenge",
///     destination_conf="s3://mybucket/logs?region=us-west-2",
///     zone_id="zone_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogpushOwnershipChallenge = new Cloudflare.LogpushOwnershipChallenge("example_logpush_ownership_challenge", new()
///     {
///         DestinationConf = "s3://mybucket/logs?region=us-west-2",
///         ZoneId = "zone_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewLogpushOwnershipChallenge(ctx, "example_logpush_ownership_challenge", &cloudflare.LogpushOwnershipChallengeArgs{
/// 			DestinationConf: pulumi.String("s3://mybucket/logs?region=us-west-2"),
/// 			ZoneId:          pulumi.String("zone_id"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_logpushownershipchallenge" "example_logpush_ownership_challenge" {
///   destination_conf = "s3://mybucket/logs?region=us-west-2"
///   zone_id          = "zone_id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LogpushOwnershipChallenge;
/// import com.pulumi.cloudflare.LogpushOwnershipChallengeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleLogpushOwnershipChallenge = new LogpushOwnershipChallenge("exampleLogpushOwnershipChallenge", LogpushOwnershipChallengeArgs.builder()
///             .destinationConf("s3://mybucket/logs?region=us-west-2")
///             .zoneId("zone_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogpushOwnershipChallenge:
///     type: cloudflare:LogpushOwnershipChallenge
///     name: example_logpush_ownership_challenge
///     properties:
///       destinationConf: s3://mybucket/logs?region=us-west-2
///       zoneId: zone_id
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class LogpushOwnershipChallenge extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
  late final pulumi.Output<String> destinationConf;
  late final pulumi.Output<String> filename;
  late final pulumi.Output<String> message;
  late final pulumi.Output<bool> valid;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [LogpushOwnershipChallenge].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogpushOwnershipChallenge]. {@macro pulumi_index_logpush_ownership_challenge_logpush_ownership_challenge_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogpushOwnershipChallenge(
    String name, {
    LogpushOwnershipChallengeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpushOwnershipChallenge:LogpushOwnershipChallenge',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
          additionalSecretOutputs: const ['destinationConf'],
        ) {
    accountId = registerOutput<String?>('accountId');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    filename = registerOutput<String>('filename');
    message = registerOutput<String>('message');
    valid = registerOutput<bool>('valid');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [LogpushOwnershipChallenge] resource's state with the given [name] and [id].
  static LogpushOwnershipChallenge get(
    String name,
    pulumi.Input<String> id, {
    LogpushOwnershipChallengeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogpushOwnershipChallenge._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogpushOwnershipChallenge._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpushOwnershipChallenge:LogpushOwnershipChallenge',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    filename = registerOutput<String>('filename');
    message = registerOutput<String>('message');
    valid = registerOutput<bool>('valid');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [LogpushOwnershipChallenge] resource.
  LogpushOwnershipChallenge.reference(String urn)
    : super(
        'cloudflare:index/logpushOwnershipChallenge:LogpushOwnershipChallenge',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['destinationConf'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    destinationConf = registerOutput<String>('destinationConf', isSecret: true);
    filename = registerOutput<String>('filename');
    message = registerOutput<String>('message');
    valid = registerOutput<bool>('valid');
    zoneId = registerOutput<String?>('zoneId');
  }
}
