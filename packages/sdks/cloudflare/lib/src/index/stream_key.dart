import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_key_args.dart';
import 'stream_key_state.dart';

/// Accepted Permissions
///
/// - `Stream Read`
/// - `Stream Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleStreamKey = new cloudflare.StreamKey("example_stream_key", {accountId: "023e105f4ecef8ad9ca31a8372d0c353"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_key = cloudflare.StreamKey("example_stream_key", account_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamKey = new Cloudflare.StreamKey("example_stream_key", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewStreamKey(ctx, "example_stream_key", &cloudflare.StreamKeyArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_streamkey" "example_stream_key" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamKey;
/// import com.pulumi.cloudflare.StreamKeyArgs;
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
///         var exampleStreamKey = new StreamKey("exampleStreamKey", StreamKeyArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamKey:
///     type: cloudflare:StreamKey
///     name: example_stream_key
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/streamKey:StreamKey example '<account_id>'
/// ```
class StreamKey extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The date and time a signing key was created.
  late final pulumi.Output<String> created;
  /// The signing key in JWK format.
  late final pulumi.Output<String> jwk;
  /// The unique identifier for the signing key.
  late final pulumi.Output<String> keyId;
  /// The signing key in PEM format.
  late final pulumi.Output<String> pem;

  /// Creates a new [StreamKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamKey]. {@macro pulumi_index_stream_key_stream_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamKey(
    String name, {
    StreamKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamKey:StreamKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['jwk', 'pem'],
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    jwk = registerOutput<String>('jwk', isSecret: true);
    keyId = registerOutput<String>('keyId');
    pem = registerOutput<String>('pem', isSecret: true);
  }

  /// Gets an existing [StreamKey] resource's state with the given [name] and [id].
  static StreamKey get(
    String name,
    pulumi.Input<String> id, {
    StreamKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamKey:StreamKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    jwk = registerOutput<String>('jwk', isSecret: true);
    keyId = registerOutput<String>('keyId');
    pem = registerOutput<String>('pem', isSecret: true);
  }

  /// Creates a typed reference to an existing [StreamKey] resource.
  StreamKey.reference(String urn)
    : super(
        'cloudflare:index/streamKey:StreamKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['jwk', 'pem'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    jwk = registerOutput<String>('jwk', isSecret: true);
    keyId = registerOutput<String>('keyId');
    pem = registerOutput<String>('pem', isSecret: true);
  }
}
