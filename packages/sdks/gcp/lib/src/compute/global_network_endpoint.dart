import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_args.dart';
import 'global_network_endpoint_state.dart';

/// A Global Network endpoint represents a IP address and port combination that exists outside of GCP.
/// **NOTE**: Global network endpoints cannot be created outside of a
/// global network endpoint group.
///
///
/// To get more information about GlobalNetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Global Network Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg = new gcp.compute.GlobalNetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     defaultPort: 90,
///     networkEndpointType: "INTERNET_FQDN_PORT",
/// });
/// const default_endpoint = new gcp.compute.GlobalNetworkEndpoint("default-endpoint", {
///     globalNetworkEndpointGroup: neg.name,
///     fqdn: "www.example.com",
///     port: 90,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg = gcp.compute.GlobalNetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     default_port=90,
///     network_endpoint_type="INTERNET_FQDN_PORT")
/// default_endpoint = gcp.compute.GlobalNetworkEndpoint("default-endpoint",
///     global_network_endpoint_group=neg.name,
///     fqdn="www.example.com",
///     port=90)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var neg = new Gcp.Compute.GlobalNetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         DefaultPort = 90,
///         NetworkEndpointType = "INTERNET_FQDN_PORT",
///     });
///
///     var default_endpoint = new Gcp.Compute.GlobalNetworkEndpoint("default-endpoint", new()
///     {
///         GlobalNetworkEndpointGroup = neg.Name,
///         Fqdn = "www.example.com",
///         Port = 90,
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
/// 		neg, err := compute.NewGlobalNetworkEndpointGroup(ctx, "neg", &compute.GlobalNetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("my-lb-neg"),
/// 			DefaultPort:         pulumi.Int(90),
/// 			NetworkEndpointType: pulumi.String("INTERNET_FQDN_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewGlobalNetworkEndpoint(ctx, "default-endpoint", &compute.GlobalNetworkEndpointArgs{
/// 			GlobalNetworkEndpointGroup: neg.Name,
/// 			Fqdn:                       pulumi.String("www.example.com"),
/// 			Port:                       pulumi.Int(90),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_globalnetworkendpoint" "default-endpoint" {
///   global_network_endpoint_group = gcp_compute_globalnetworkendpointgroup.neg.name
///   fqdn                          = "www.example.com"
///   port                          = 90
/// }
/// resource "gcp_compute_globalnetworkendpointgroup" "neg" {
///   name                  = "my-lb-neg"
///   default_port          = "90"
///   network_endpoint_type = "INTERNET_FQDN_PORT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroup;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpoint;
/// import com.pulumi.gcp.compute.GlobalNetworkEndpointArgs;
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
///         var neg = new GlobalNetworkEndpointGroup("neg", GlobalNetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .defaultPort(90)
///             .networkEndpointType("INTERNET_FQDN_PORT")
///             .build());
///
///         var default_endpoint = new GlobalNetworkEndpoint("default-endpoint", GlobalNetworkEndpointArgs.builder()
///             .globalNetworkEndpointGroup(neg.name())
///             .fqdn("www.example.com")
///             .port(90)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-endpoint:
///     type: gcp:compute:GlobalNetworkEndpoint
///     properties:
///       globalNetworkEndpointGroup: ${neg.name}
///       fqdn: www.example.com
///       port: 90
///   neg:
///     type: gcp:compute:GlobalNetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       defaultPort: '90'
///       networkEndpointType: INTERNET_FQDN_PORT
/// ```
///
///
/// ## Import
///
/// GlobalNetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
/// * `{{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
/// * `{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
///
/// When using the `pulumi import` command, GlobalNetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
class GlobalNetworkEndpoint extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when networkEndpointType of the NEG is INTERNET_FQDN_PORT.
  late final pulumi.Output<String?> fqdn;
  /// The global network endpoint group this endpoint is part of.
  late final pulumi.Output<String> globalNetworkEndpointGroup;
  /// IPv4 address external endpoint.
  late final pulumi.Output<String?> ipAddress;
  /// Port number of the external endpoint.
  late final pulumi.Output<int> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [GlobalNetworkEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalNetworkEndpoint]. {@macro pulumi_compute_global_network_endpoint_global_network_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalNetworkEndpoint(
    String name, {
    GlobalNetworkEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fqdn = registerOutput<String?>('fqdn');
    globalNetworkEndpointGroup = registerOutput<String>('globalNetworkEndpointGroup');
    ipAddress = registerOutput<String?>('ipAddress');
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [GlobalNetworkEndpoint] resource's state with the given [name] and [id].
  static GlobalNetworkEndpoint get(
    String name,
    pulumi.Input<String> id, {
    GlobalNetworkEndpointState? state,
  }) {
    return GlobalNetworkEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalNetworkEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    fqdn = registerOutput<String?>('fqdn');
    globalNetworkEndpointGroup = registerOutput<String>('globalNetworkEndpointGroup');
    ipAddress = registerOutput<String?>('ipAddress');
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
  }
}
