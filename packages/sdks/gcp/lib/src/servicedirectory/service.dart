import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_state.dart';

/// An individual service. A service contains a name and optional metadata.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/service-directory/docs/reference/rest/v1/projects.locations.namespaces.services)
/// * How-to Guides
/// * [Configuring a service](https://cloud.google.com/service-directory/docs/configuring-service-directory#configuring_a_service)
///
/// ## Example Usage
///
/// ### Service Directory Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.servicedirectory.Namespace("example", {
///     namespaceId: "example-namespace",
///     location: "us-central1",
/// });
/// const exampleService = new gcp.servicedirectory.Service("example", {
///     serviceId: "example-service",
///     namespace: example.id,
///     metadata: {
///         stage: "prod",
///         region: "us-central1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.servicedirectory.Namespace("example",
///     namespace_id="example-namespace",
///     location="us-central1")
/// example_service = gcp.servicedirectory.Service("example",
///     service_id="example-service",
///     namespace=example.id,
///     metadata={
///         "stage": "prod",
///         "region": "us-central1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.ServiceDirectory.Namespace("example", new()
///     {
///         NamespaceId = "example-namespace",
///         Location = "us-central1",
///     });
///
///     var exampleService = new Gcp.ServiceDirectory.Service("example", new()
///     {
///         ServiceId = "example-service",
///         Namespace = example.Id,
///         Metadata =
///         {
///             { "stage", "prod" },
///             { "region", "us-central1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicedirectory.NewNamespace(ctx, "example", &servicedirectory.NamespaceArgs{
/// 			NamespaceId: pulumi.String("example-namespace"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicedirectory.NewService(ctx, "example", &servicedirectory.ServiceArgs{
/// 			ServiceId: pulumi.String("example-service"),
/// 			Namespace: example.ID(),
/// 			Metadata: pulumi.StringMap{
/// 				"stage":  pulumi.String("prod"),
/// 				"region": pulumi.String("us-central1"),
/// 			},
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
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
/// import com.pulumi.gcp.servicedirectory.Service;
/// import com.pulumi.gcp.servicedirectory.ServiceArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceId("example-namespace")
///             .location("us-central1")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .serviceId("example-service")
///             .namespace(example.id())
///             .metadata(Map.ofEntries(
///                 Map.entry("stage", "prod"),
///                 Map.entry("region", "us-central1")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:servicedirectory:Namespace
///     properties:
///       namespaceId: example-namespace
///       location: us-central1
///   exampleService:
///     type: gcp:servicedirectory:Service
///     name: example
///     properties:
///       serviceId: example-service
///       namespace: ${example.id}
///       metadata:
///         stage: prod
///         region: us-central1
/// ```
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{namespace_id}}/{{service_id}}`
///
/// * `{{location}}/{{namespace_id}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default {{project}}/{{location}}/{{namespace_id}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default {{location}}/{{namespace_id}}/{{service_id}}
/// ```
class Service extends pulumi.CustomResource {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The resource name for the service in the
  /// format `projects/*/locations/*/namespaces/*/services/*`.
  late final pulumi.Output<String> name;
  /// The resource name of the namespace this service will belong to.
  late final pulumi.Output<String> namespace;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final pulumi.Output<String> serviceId;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_servicedirectory_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
