import 'package:pulumi/pulumi.dart' as pulumi;
import 'peered_dns_domain_args.dart';
import 'peered_dns_domain_state.dart';

/// Allows management of a single peered DNS domain for an existing Google Cloud Platform project.
///
/// When using Google Cloud DNS to manage internal DNS, create peered DNS domains to make your DNS available to services like Google Cloud Build.
///
/// For more information see [the API](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services.projects.global.networks.peeredDnsDomains)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const name = new gcp.servicenetworking.PeeredDnsDomain("name", {
///     project: "10000000",
///     name: "example-com",
///     network: "default",
///     dnsSuffix: "example.com.",
///     service: "peering-service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// name = gcp.servicenetworking.PeeredDnsDomain("name",
///     project="10000000",
///     name="example-com",
///     network="default",
///     dns_suffix="example.com.",
///     service="peering-service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var name = new Gcp.ServiceNetworking.PeeredDnsDomain("name", new()
///     {
///         Project = "10000000",
///         Name = "example-com",
///         Network = "default",
///         DnsSuffix = "example.com.",
///         Service = "peering-service",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicenetworking.NewPeeredDnsDomain(ctx, "name", &servicenetworking.PeeredDnsDomainArgs{
/// 			Project:   pulumi.String("10000000"),
/// 			Name:      pulumi.String("example-com"),
/// 			Network:   pulumi.String("default"),
/// 			DnsSuffix: pulumi.String("example.com."),
/// 			Service:   pulumi.String("peering-service"),
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
/// import com.pulumi.gcp.servicenetworking.PeeredDnsDomain;
/// import com.pulumi.gcp.servicenetworking.PeeredDnsDomainArgs;
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
///         var name = new PeeredDnsDomain("name", PeeredDnsDomainArgs.builder()
///             .project("10000000")
///             .name("example-com")
///             .network("default")
///             .dnsSuffix("example.com.")
///             .service("peering-service")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   name:
///     type: gcp:servicenetworking:PeeredDnsDomain
///     properties:
///       project: 1e+07
///       name: example-com
///       network: default
///       dnsSuffix: example.com.
///       service: peering-service
/// ```
///
///
/// ## Import
///
/// Project peered DNS domains can be imported using the `service`, `project`, `network` and `name`, where:
///
/// - `service` is the service connection, defaults to `servicenetworking.googleapis.com`.
///
/// - `project` is the producer project name.
///
/// - `network` is the consumer network name.
///
/// - `name` is the name of your peered DNS domain.
///
/// * `services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}`
///
/// When using the `pulumi import` command, project peered DNS domains can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/peeredDnsDomain:PeeredDnsDomain default services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}
/// ```
class PeeredDnsDomain extends pulumi.CustomResource {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  late final pulumi.Output<String> dnsSuffix;

  /// Internal name used for the peered DNS domain.
  late final pulumi.Output<String> name;

  /// The network in the consumer project.
  late final pulumi.Output<String> network;

  /// an identifier for the resource with format `services/{{service}}/projects/{{project}}/global/networks/{{network}}`
  late final pulumi.Output<String> parent;

  /// The producer project number. If not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  late final pulumi.Output<String?> service;

  /// Creates a new [PeeredDnsDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeeredDnsDomain]. {@macro pulumi_servicenetworking_peered_dns_domain_peered_dns_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeeredDnsDomain(
    String name, {
    PeeredDnsDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:servicenetworking/peeredDnsDomain:PeeredDnsDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsSuffix = registerOutput<String>('dnsSuffix');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    parent = registerOutput<String>('parent');
    project = registerOutput<String>('project');
    service = registerOutput<String?>('service');
  }

  /// Gets an existing [PeeredDnsDomain] resource's state with the given [name] and [id].
  static PeeredDnsDomain get(
    String name,
    pulumi.Input<String> id, {
    PeeredDnsDomainState? state,
  }) {
    return PeeredDnsDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PeeredDnsDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:servicenetworking/peeredDnsDomain:PeeredDnsDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsSuffix = registerOutput<String>('dnsSuffix');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    parent = registerOutput<String>('parent');
    project = registerOutput<String>('project');
    service = registerOutput<String?>('service');
  }
}
