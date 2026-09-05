import 'package:pulumi/pulumi.dart' as pulumi;
import 'calls_turn_app_args.dart';
import 'calls_turn_app_state.dart';

/// Accepted Permissions
///
/// - `Calls Read`
/// - `Calls Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleCallsTurnApp = new cloudflare.CallsTurnApp("example_calls_turn_app", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my-turn-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_calls_turn_app = cloudflare.CallsTurnApp("example_calls_turn_app",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my-turn-key")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCallsTurnApp = new Cloudflare.CallsTurnApp("example_calls_turn_app", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my-turn-key",
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
/// 		_, err := cloudflare.NewCallsTurnApp(ctx, "example_calls_turn_app", &cloudflare.CallsTurnAppArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my-turn-key"),
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
/// resource "cloudflare_callsturnapp" "example_calls_turn_app" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "my-turn-key"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CallsTurnApp;
/// import com.pulumi.cloudflare.CallsTurnAppArgs;
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
///         var exampleCallsTurnApp = new CallsTurnApp("exampleCallsTurnApp", CallsTurnAppArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my-turn-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCallsTurnApp:
///     type: cloudflare:CallsTurnApp
///     name: example_calls_turn_app
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my-turn-key
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class CallsTurnApp extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The date and time the item was created.
  late final pulumi.Output<String> created;
  /// Bearer token
  late final pulumi.Output<String> key;
  /// A Cloudflare-generated unique identifier for a item.
  late final pulumi.Output<String?> keyId;
  /// The date and time the item was last modified.
  late final pulumi.Output<String> modified;
  /// A short description of a TURN key, not shown to end users.
  late final pulumi.Output<String> name;
  /// A Cloudflare-generated unique identifier for a item.
  late final pulumi.Output<String> uid;

  /// Creates a new [CallsTurnApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CallsTurnApp]. {@macro pulumi_index_calls_turn_app_calls_turn_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CallsTurnApp(
    String name, {
    CallsTurnAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/callsTurnApp:CallsTurnApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['key'],
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    key = registerOutput<String>('key', isSecret: true);
    keyId = registerOutput<String?>('keyId');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [CallsTurnApp] resource's state with the given [name] and [id].
  static CallsTurnApp get(
    String name,
    pulumi.Input<String> id, {
    CallsTurnAppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CallsTurnApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CallsTurnApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/callsTurnApp:CallsTurnApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    key = registerOutput<String>('key', isSecret: true);
    keyId = registerOutput<String?>('keyId');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [CallsTurnApp] resource.
  CallsTurnApp.reference(String urn)
    : super(
        'cloudflare:index/callsTurnApp:CallsTurnApp',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['key'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    key = registerOutput<String>('key', isSecret: true);
    keyId = registerOutput<String?>('keyId');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
  }
}
