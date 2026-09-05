import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_kv_namespace_args.dart';
import 'workers_kv_namespace_state.dart';

/// Accepted Permissions
///
/// - `Workers KV Storage Read`
/// - `Workers KV Storage Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersKvNamespace = new cloudflare.WorkersKvNamespace("example_workers_kv_namespace", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     title: "My Own Namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_kv_namespace = cloudflare.WorkersKvNamespace("example_workers_kv_namespace",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     title="My Own Namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersKvNamespace = new Cloudflare.WorkersKvNamespace("example_workers_kv_namespace", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Title = "My Own Namespace",
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
/// 		_, err := cloudflare.NewWorkersKvNamespace(ctx, "example_workers_kv_namespace", &cloudflare.WorkersKvNamespaceArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Title:     pulumi.String("My Own Namespace"),
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
/// resource "cloudflare_workerskvnamespace" "example_workers_kv_namespace" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   title      = "My Own Namespace"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersKvNamespace;
/// import com.pulumi.cloudflare.WorkersKvNamespaceArgs;
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
///         var exampleWorkersKvNamespace = new WorkersKvNamespace("exampleWorkersKvNamespace", WorkersKvNamespaceArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .title("My Own Namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersKvNamespace:
///     type: cloudflare:WorkersKvNamespace
///     name: example_workers_kv_namespace
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       title: My Own Namespace
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersKvNamespace:WorkersKvNamespace example '<account_id>/<namespace_id>'
/// ```
class WorkersKvNamespace extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  late final pulumi.Output<bool> supportsUrlEncoding;
  /// A human-readable string name for a Namespace.
  late final pulumi.Output<String> title;

  /// Creates a new [WorkersKvNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersKvNamespace]. {@macro pulumi_index_workers_kv_namespace_workers_kv_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersKvNamespace(
    String name, {
    WorkersKvNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersKvNamespace:WorkersKvNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    supportsUrlEncoding = registerOutput<bool>('supportsUrlEncoding');
    title = registerOutput<String>('title');
  }

  /// Gets an existing [WorkersKvNamespace] resource's state with the given [name] and [id].
  static WorkersKvNamespace get(
    String name,
    pulumi.Input<String> id, {
    WorkersKvNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersKvNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersKvNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersKvNamespace:WorkersKvNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    supportsUrlEncoding = registerOutput<bool>('supportsUrlEncoding');
    title = registerOutput<String>('title');
  }

  /// Creates a typed reference to an existing [WorkersKvNamespace] resource.
  WorkersKvNamespace.reference(String urn)
    : super(
        'cloudflare:index/workersKvNamespace:WorkersKvNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    supportsUrlEncoding = registerOutput<bool>('supportsUrlEncoding');
    title = registerOutput<String>('title');
  }
}
