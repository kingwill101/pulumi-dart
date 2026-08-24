import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_subdomain_args.dart';
import 'workers_script_subdomain_state.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// &gt; This resource is redundant with `cloudflare.Worker` and should not be used together. When using the `cloudflare.Worker` resource, use the nested `subdomain` attribute to control subdomain settings instead.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersScriptSubdomain = new cloudflare.WorkersScriptSubdomain("example_workers_script_subdomain", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     scriptName: "this-is_my_script-01",
///     enabled: true,
///     previewsEnabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_script_subdomain = cloudflare.WorkersScriptSubdomain("example_workers_script_subdomain",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     script_name="this-is_my_script-01",
///     enabled=True,
///     previews_enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersScriptSubdomain = new Cloudflare.WorkersScriptSubdomain("example_workers_script_subdomain", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ScriptName = "this-is_my_script-01",
///         Enabled = true,
///         PreviewsEnabled = false,
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
/// 		_, err := cloudflare.NewWorkersScriptSubdomain(ctx, "example_workers_script_subdomain", &cloudflare.WorkersScriptSubdomainArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ScriptName:      pulumi.String("this-is_my_script-01"),
/// 			Enabled:         pulumi.Bool(true),
/// 			PreviewsEnabled: pulumi.Bool(false),
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
/// resource "cloudflare_workersscriptsubdomain" "example_workers_script_subdomain" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   script_name      = "this-is_my_script-01"
///   enabled          = true
///   previews_enabled = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersScriptSubdomain;
/// import com.pulumi.cloudflare.WorkersScriptSubdomainArgs;
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
///         var exampleWorkersScriptSubdomain = new WorkersScriptSubdomain("exampleWorkersScriptSubdomain", WorkersScriptSubdomainArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .scriptName("this-is_my_script-01")
///             .enabled(true)
///             .previewsEnabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersScriptSubdomain:
///     type: cloudflare:WorkersScriptSubdomain
///     name: example_workers_script_subdomain
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       scriptName: this-is_my_script-01
///       enabled: true
///       previewsEnabled: false
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersScriptSubdomain:WorkersScriptSubdomain example '<account_id>/<script_name>'
/// ```
class WorkersScriptSubdomain extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Whether the Worker should be available on the workers.dev subdomain.
  late final pulumi.Output<bool> enabled;
  /// Whether the Worker's Preview URLs should be available on the workers.dev subdomain.
  late final pulumi.Output<bool> previewsEnabled;
  /// Name of the script, used in URLs and route configuration.
  late final pulumi.Output<String> scriptName;

  /// Creates a new [WorkersScriptSubdomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersScriptSubdomain]. {@macro pulumi_index_workers_script_subdomain_workers_script_subdomain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersScriptSubdomain(
    String name, {
    WorkersScriptSubdomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersScriptSubdomain:WorkersScriptSubdomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    enabled = registerOutput<bool>('enabled');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    scriptName = registerOutput<String>('scriptName');
  }

  /// Gets an existing [WorkersScriptSubdomain] resource's state with the given [name] and [id].
  static WorkersScriptSubdomain get(
    String name,
    pulumi.Input<String> id, {
    WorkersScriptSubdomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersScriptSubdomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersScriptSubdomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersScriptSubdomain:WorkersScriptSubdomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    enabled = registerOutput<bool>('enabled');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    scriptName = registerOutput<String>('scriptName');
  }

  /// Creates a typed reference to an existing [WorkersScriptSubdomain] resource.
  WorkersScriptSubdomain.reference(String urn)
    : super(
        'cloudflare:index/workersScriptSubdomain:WorkersScriptSubdomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    enabled = registerOutput<bool>('enabled');
    previewsEnabled = registerOutput<bool>('previewsEnabled');
    scriptName = registerOutput<String>('scriptName');
  }
}
