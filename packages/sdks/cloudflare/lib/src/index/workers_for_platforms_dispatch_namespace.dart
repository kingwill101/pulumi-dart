import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_for_platforms_dispatch_namespace_args.dart';
import 'workers_for_platforms_dispatch_namespace_state.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkersForPlatformsDispatchNamespace = new cloudflare.WorkersForPlatformsDispatchNamespace("example_workers_for_platforms_dispatch_namespace", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "my-dispatch-namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workers_for_platforms_dispatch_namespace = cloudflare.WorkersForPlatformsDispatchNamespace("example_workers_for_platforms_dispatch_namespace",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="my-dispatch-namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkersForPlatformsDispatchNamespace = new Cloudflare.WorkersForPlatformsDispatchNamespace("example_workers_for_platforms_dispatch_namespace", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "my-dispatch-namespace",
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
/// 		_, err := cloudflare.NewWorkersForPlatformsDispatchNamespace(ctx, "example_workers_for_platforms_dispatch_namespace", &cloudflare.WorkersForPlatformsDispatchNamespaceArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("my-dispatch-namespace"),
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
/// resource "cloudflare_workersforplatformsdispatchnamespace" "example_workers_for_platforms_dispatch_namespace" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "my-dispatch-namespace"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WorkersForPlatformsDispatchNamespace;
/// import com.pulumi.cloudflare.WorkersForPlatformsDispatchNamespaceArgs;
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
///         var exampleWorkersForPlatformsDispatchNamespace = new WorkersForPlatformsDispatchNamespace("exampleWorkersForPlatformsDispatchNamespace", WorkersForPlatformsDispatchNamespaceArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("my-dispatch-namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkersForPlatformsDispatchNamespace:
///     type: cloudflare:WorkersForPlatformsDispatchNamespace
///     name: example_workers_for_platforms_dispatch_namespace
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: my-dispatch-namespace
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workersForPlatformsDispatchNamespace:WorkersForPlatformsDispatchNamespace example '<account_id>/<dispatch_namespace>'
/// ```
class WorkersForPlatformsDispatchNamespace extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Identifier.
  late final pulumi.Output<String> createdBy;
  /// When the script was created.
  late final pulumi.Output<String> createdOn;
  /// Identifier.
  late final pulumi.Output<String> modifiedBy;
  /// When the script was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The name of the dispatch namespace.
  late final pulumi.Output<String?> name;
  /// API Resource UUID tag.
  late final pulumi.Output<String> namespaceId;
  /// Name of the Workers for Platforms dispatch namespace.
  late final pulumi.Output<String> namespaceName;
  /// The current number of scripts in this Dispatch Namespace.
  late final pulumi.Output<int> scriptCount;
  /// Whether the Workers in the namespace are executed in a "trusted" manner. When a Worker is trusted, it has access to the shared caches for the zone in the Cache API, and has access to the `request.cf` object on incoming Requests. When a Worker is untrusted, caches are not shared across the zone, and `request.cf` is undefined. By default, Workers in a namespace are "untrusted".
  late final pulumi.Output<bool> trustedWorkers;

  /// Creates a new [WorkersForPlatformsDispatchNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkersForPlatformsDispatchNamespace]. {@macro pulumi_index_workers_for_platforms_dispatch_namespace_workers_for_platforms_dispatch_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkersForPlatformsDispatchNamespace(
    String name, {
    WorkersForPlatformsDispatchNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersForPlatformsDispatchNamespace:WorkersForPlatformsDispatchNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdBy = registerOutput<String>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    modifiedBy = registerOutput<String>('modifiedBy');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    scriptCount = registerOutput<int>('scriptCount');
    trustedWorkers = registerOutput<bool>('trustedWorkers');
  }

  /// Gets an existing [WorkersForPlatformsDispatchNamespace] resource's state with the given [name] and [id].
  static WorkersForPlatformsDispatchNamespace get(
    String name,
    pulumi.Input<String> id, {
    WorkersForPlatformsDispatchNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkersForPlatformsDispatchNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkersForPlatformsDispatchNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workersForPlatformsDispatchNamespace:WorkersForPlatformsDispatchNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdBy = registerOutput<String>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    modifiedBy = registerOutput<String>('modifiedBy');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    scriptCount = registerOutput<int>('scriptCount');
    trustedWorkers = registerOutput<bool>('trustedWorkers');
  }

  /// Creates a typed reference to an existing [WorkersForPlatformsDispatchNamespace] resource.
  WorkersForPlatformsDispatchNamespace.reference(String urn)
    : super(
        'cloudflare:index/workersForPlatformsDispatchNamespace:WorkersForPlatformsDispatchNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdBy = registerOutput<String>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    modifiedBy = registerOutput<String>('modifiedBy');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    scriptCount = registerOutput<int>('scriptCount');
    trustedWorkers = registerOutput<bool>('trustedWorkers');
  }
}
