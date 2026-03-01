import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_edge_security_service_args.dart';
import 'network_edge_security_service_state.dart';

/// Google Cloud Armor network edge security service resource.
///
/// To get more information about NetworkEdgeSecurityService, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkEdgeSecurityServices)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/advanced-network-ddos)
///
/// ## Example Usage
///
/// ### Compute Network Edge Security Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.NetworkEdgeSecurityService("default", {
///     name: "my-edge-security-service",
///     region: "us-east1",
///     description: "My basic resource",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.NetworkEdgeSecurityService("default",
///     name="my-edge-security-service",
///     region="us-east1",
///     description="My basic resource")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.NetworkEdgeSecurityService("default", new()
///     {
///         Name = "my-edge-security-service",
///         Region = "us-east1",
///         Description = "My basic resource",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewNetworkEdgeSecurityService(ctx, "default", &compute.NetworkEdgeSecurityServiceArgs{
/// 			Name:        pulumi.String("my-edge-security-service"),
/// 			Region:      pulumi.String("us-east1"),
/// 			Description: pulumi.String("My basic resource"),
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
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityService;
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityServiceArgs;
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
///         var default_ = new NetworkEdgeSecurityService("default", NetworkEdgeSecurityServiceArgs.builder()
///             .name("my-edge-security-service")
///             .region("us-east1")
///             .description("My basic resource")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:NetworkEdgeSecurityService
///     properties:
///       name: my-edge-security-service
///       region: us-east1
///       description: My basic resource
/// ```
///
///
/// ## Import
///
/// NetworkEdgeSecurityService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkEdgeSecurityServices/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkEdgeSecurityService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService default projects/{{project}}/regions/{{region}}/networkEdgeSecurityServices/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService default {{name}}
/// ```
class NetworkEdgeSecurityService extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService.
  /// An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet.
  late final pulumi.Output<String> fingerprint;
  /// Name of the resource. Provided by the client when the resource is created.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the gateway security policy.
  late final pulumi.Output<String?> region;
  /// The resource URL for the network edge security service associated with this network edge security service.
  late final pulumi.Output<String?> securityPolicy;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithServiceId;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> serviceId;

  /// Creates a new [NetworkEdgeSecurityService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEdgeSecurityService]. {@macro pulumi_compute_network_edge_security_service_network_edge_security_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEdgeSecurityService(
    String name, {
    NetworkEdgeSecurityServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithServiceId = registerOutput<String>('selfLinkWithServiceId');
    this.serviceId = registerOutput<String>('serviceId');
  }

  /// Gets an existing [NetworkEdgeSecurityService] resource's state with the given [name] and [id].
  static NetworkEdgeSecurityService get(
    String name,
    pulumi.Input<String> id, {
    NetworkEdgeSecurityServiceState? state,
  }) {
    return NetworkEdgeSecurityService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkEdgeSecurityService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEdgeSecurityService:NetworkEdgeSecurityService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithServiceId = registerOutput<String>('selfLinkWithServiceId');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
