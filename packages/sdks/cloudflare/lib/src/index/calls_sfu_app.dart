import 'package:pulumi/pulumi.dart' as pulumi;
import 'calls_sfu_app_args.dart';
import 'calls_sfu_app_state.dart';

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
/// const exampleCallsSfuApp = new cloudflare.CallsSfuApp("example_calls_sfu_app", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "production-realtime-app",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_calls_sfu_app = cloudflare.CallsSfuApp("example_calls_sfu_app",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="production-realtime-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCallsSfuApp = new Cloudflare.CallsSfuApp("example_calls_sfu_app", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "production-realtime-app",
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
/// 		_, err := cloudflare.NewCallsSfuApp(ctx, "example_calls_sfu_app", &cloudflare.CallsSfuAppArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("production-realtime-app"),
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
/// resource "cloudflare_callssfuapp" "example_calls_sfu_app" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "production-realtime-app"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.CallsSfuApp;
/// import com.pulumi.cloudflare.CallsSfuAppArgs;
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
///         var exampleCallsSfuApp = new CallsSfuApp("exampleCallsSfuApp", CallsSfuAppArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("production-realtime-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCallsSfuApp:
///     type: cloudflare:CallsSfuApp
///     name: example_calls_sfu_app
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: production-realtime-app
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class CallsSfuApp extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// A Cloudflare-generated unique identifier for a item.
  late final pulumi.Output<String?> appId;
  /// The date and time the item was created.
  late final pulumi.Output<String> created;
  /// The date and time the item was last modified.
  late final pulumi.Output<String> modified;
  /// A short description of Calls app, not shown to end users.
  late final pulumi.Output<String> name;
  /// Bearer token
  late final pulumi.Output<String> secret;
  /// A Cloudflare-generated unique identifier for a item.
  late final pulumi.Output<String> uid;

  /// Creates a new [CallsSfuApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CallsSfuApp]. {@macro pulumi_index_calls_sfu_app_calls_sfu_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CallsSfuApp(
    String name, {
    CallsSfuAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/callsSfuApp:CallsSfuApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String?>('appId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [CallsSfuApp] resource's state with the given [name] and [id].
  static CallsSfuApp get(
    String name,
    pulumi.Input<String> id, {
    CallsSfuAppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CallsSfuApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CallsSfuApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/callsSfuApp:CallsSfuApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String?>('appId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [CallsSfuApp] resource.
  CallsSfuApp.reference(String urn)
    : super(
        'cloudflare:index/callsSfuApp:CallsSfuApp',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    appId = registerOutput<String?>('appId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    secret = registerOutput<String>('secret', isSecret: true);
    uid = registerOutput<String>('uid');
  }
}
