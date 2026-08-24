import 'package:pulumi/pulumi.dart' as pulumi;
import 'flagship_app_args.dart';
import 'flagship_app_state.dart';

/// Accepted Permissions
///
/// - `Flagship Read`
/// - `Flagship Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleFlagshipApp = new cloudflare.FlagshipApp("example_flagship_app", {
///     accountId: "account_id",
///     name: "x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_flagship_app = cloudflare.FlagshipApp("example_flagship_app",
///     account_id="account_id",
///     name="x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleFlagshipApp = new Cloudflare.FlagshipApp("example_flagship_app", new()
///     {
///         AccountId = "account_id",
///         Name = "x",
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
/// 		_, err := cloudflare.NewFlagshipApp(ctx, "example_flagship_app", &cloudflare.FlagshipAppArgs{
/// 			AccountId: pulumi.String("account_id"),
/// 			Name:      pulumi.String("x"),
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
/// resource "cloudflare_flagshipapp" "example_flagship_app" {
///   account_id = "account_id"
///   name       = "x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.FlagshipApp;
/// import com.pulumi.cloudflare.FlagshipAppArgs;
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
///         var exampleFlagshipApp = new FlagshipApp("exampleFlagshipApp", FlagshipAppArgs.builder()
///             .accountId("account_id")
///             .name("x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFlagshipApp:
///     type: cloudflare:FlagshipApp
///     name: example_flagship_app
///     properties:
///       accountId: account_id
///       name: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/flagshipApp:FlagshipApp example '<account_id>/<app_id>'
/// ```
class FlagshipApp extends pulumi.CustomResource {
  /// Cloudflare account ID.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> updatedAt;
  /// Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  late final pulumi.Output<String> updatedBy;

  /// Creates a new [FlagshipApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlagshipApp]. {@macro pulumi_index_flagship_app_flagship_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlagshipApp(
    String name, {
    FlagshipAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/flagshipApp:FlagshipApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
  }

  /// Gets an existing [FlagshipApp] resource's state with the given [name] and [id].
  static FlagshipApp get(
    String name,
    pulumi.Input<String> id, {
    FlagshipAppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FlagshipApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FlagshipApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/flagshipApp:FlagshipApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
  }

  /// Creates a typed reference to an existing [FlagshipApp] resource.
  FlagshipApp.reference(String urn)
    : super(
        'cloudflare:index/flagshipApp:FlagshipApp',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    updatedBy = registerOutput<String>('updatedBy');
  }
}
