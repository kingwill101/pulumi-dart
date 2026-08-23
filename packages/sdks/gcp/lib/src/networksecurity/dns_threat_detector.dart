import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_threat_detector_args.dart';
import 'dns_threat_detector_state.dart';

/// DNS Armor is a fully-managed service that provides DNS-layer security for your Google Cloud workloads.
///
///
/// To get more information about DnsThreatDetector, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/create-threat-detector)
/// * How-to Guides
/// * [DNS Threat Detector](https://cloud.google.com/dns/docs/threat-detection)
///
/// ## Example Usage
///
/// ### Network Security Dns Threat Detector Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.Network("foobar", {
///     name: "my-vpc",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networksecurity.DnsThreatDetector("default", {
///     name: "my-threat-detector",
///     location: "global",
///     threatDetectorProvider: "INFOBLOX",
///     excludedNetworks: [foobar.id],
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.Network("foobar",
///     name="my-vpc",
///     auto_create_subnetworks=False)
/// default = gcp.networksecurity.DnsThreatDetector("default",
///     name="my-threat-detector",
///     location="global",
///     threat_detector_provider="INFOBLOX",
///     excluded_networks=[foobar.id],
///     labels={
///         "foo": "bar",
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
///     var foobar = new Gcp.Compute.Network("foobar", new()
///     {
///         Name = "my-vpc",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkSecurity.DnsThreatDetector("default", new()
///     {
///         Name = "my-threat-detector",
///         Location = "global",
///         ThreatDetectorProvider = "INFOBLOX",
///         ExcludedNetworks = new[]
///         {
///             foobar.Id,
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := compute.NewNetwork(ctx, "foobar", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-vpc"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewDnsThreatDetector(ctx, "default", &networksecurity.DnsThreatDetectorArgs{
/// 			Name:                   pulumi.String("my-threat-detector"),
/// 			Location:               pulumi.String("global"),
/// 			ThreatDetectorProvider: pulumi.String("INFOBLOX"),
/// 			ExcludedNetworks: pulumi.StringArray{
/// 				foobar.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// resource "gcp_compute_network" "foobar" {
///   name                    = "my-vpc"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networksecurity_dnsthreatdetector" "default" {
///   name                     = "my-threat-detector"
///   location                 = "global"
///   threat_detector_provider = "INFOBLOX"
///   excluded_networks        = [gcp_compute_network.foobar.id]
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.DnsThreatDetector;
/// import com.pulumi.gcp.networksecurity.DnsThreatDetectorArgs;
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
///         var foobar = new Network("foobar", NetworkArgs.builder()
///             .name("my-vpc")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new DnsThreatDetector("default", DnsThreatDetectorArgs.builder()
///             .name("my-threat-detector")
///             .location("global")
///             .threatDetectorProvider("INFOBLOX")
///             .excludedNetworks(foobar.id())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:Network
///     properties:
///       name: my-vpc
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:networksecurity:DnsThreatDetector
///     properties:
///       name: my-threat-detector
///       location: global
///       threatDetectorProvider: INFOBLOX
///       excludedNetworks:
///         - ${foobar.id}
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// DnsThreatDetector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, DnsThreatDetector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{name}}
/// ```
class DnsThreatDetector extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  late final pulumi.Output<List<String>?> excludedNetworks;
  /// Set of label tags associated with the DNS Threat Detector resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the DNS Threat Detector. The only supported value is `global`.
  late final pulumi.Output<String?> location;
  /// Name of the DnsThreatDetector resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  late final pulumi.Output<String?> threatDetectorProvider;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DnsThreatDetector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsThreatDetector]. {@macro pulumi_networksecurity_dns_threat_detector_dns_threat_detector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsThreatDetector(
    String name, {
    DnsThreatDetectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/dnsThreatDetector:DnsThreatDetector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    excludedNetworks = registerOutput<List<String>?>('excludedNetworks');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    threatDetectorProvider = registerOutput<String?>('threatDetectorProvider');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DnsThreatDetector] resource's state with the given [name] and [id].
  static DnsThreatDetector get(
    String name,
    pulumi.Input<String> id, {
    DnsThreatDetectorState? state,
  }) {
    return DnsThreatDetector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DnsThreatDetector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/dnsThreatDetector:DnsThreatDetector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    excludedNetworks = registerOutput<List<String>?>('excludedNetworks');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    threatDetectorProvider = registerOutput<String?>('threatDetectorProvider');
    updateTime = registerOutput<String>('updateTime');
  }
}
