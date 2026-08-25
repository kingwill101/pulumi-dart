import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_args.dart';
import 'interconnect_attachment_state.dart';

/// A Distributed Cloud Edge interconnect attachment, which connects routers to the northbound network.
///
///
/// To get more information about InterconnectAttachment, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/network/rest/v1/projects.locations.zones.interconnectAttachments)
/// * How-to Guides
/// * [Create and manage interconnect attachments](https://cloud.google.com/distributed-cloud/edge/latest/docs/attachments#api)
///
/// ## Example Usage
///
/// ### Edgenetwork Interconnect Attachment
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleNetwork = new gcp.edgenetwork.Network("example_network", {
///     networkId: "example-network",
///     location: "us-west1",
///     zone: "",
///     description: "Example network.",
///     mtu: 9000,
/// });
/// const exampleInterconnectAttachment = new gcp.edgenetwork.InterconnectAttachment("example_interconnect_attachment", {
///     interconnectAttachmentId: "example-interconnect-attachment",
///     location: "us-west1",
///     zone: "",
///     description: "Example interconnect attachment.",
///     network: exampleNetwork.id,
///     interconnect: "11111111-2222-3333-4444-555555555555",
///     vlanId: 55,
///     mtu: 9000,
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_network = gcp.edgenetwork.Network("example_network",
///     network_id="example-network",
///     location="us-west1",
///     zone="",
///     description="Example network.",
///     mtu=9000)
/// example_interconnect_attachment = gcp.edgenetwork.InterconnectAttachment("example_interconnect_attachment",
///     interconnect_attachment_id="example-interconnect-attachment",
///     location="us-west1",
///     zone="",
///     description="Example interconnect attachment.",
///     network=example_network.id,
///     interconnect="11111111-2222-3333-4444-555555555555",
///     vlan_id=55,
///     mtu=9000,
///     labels={
///         "environment": "dev",
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
///     var exampleNetwork = new Gcp.EdgeNetwork.Network("example_network", new()
///     {
///         NetworkId = "example-network",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example network.",
///         Mtu = 9000,
///     });
///
///     var exampleInterconnectAttachment = new Gcp.EdgeNetwork.InterconnectAttachment("example_interconnect_attachment", new()
///     {
///         InterconnectAttachmentId = "example-interconnect-attachment",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example interconnect attachment.",
///         Network = exampleNetwork.Id,
///         Interconnect = "11111111-2222-3333-4444-555555555555",
///         VlanId = 55,
///         Mtu = 9000,
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgenetwork"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleNetwork, err := edgenetwork.NewNetwork(ctx, "example_network", &edgenetwork.NetworkArgs{
/// 			NetworkId:   pulumi.String("example-network"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Zone:        pulumi.String(""),
/// 			Description: pulumi.String("Example network."),
/// 			Mtu:         pulumi.Int(9000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgenetwork.NewInterconnectAttachment(ctx, "example_interconnect_attachment", &edgenetwork.InterconnectAttachmentArgs{
/// 			InterconnectAttachmentId: pulumi.String("example-interconnect-attachment"),
/// 			Location:                 pulumi.String("us-west1"),
/// 			Zone:                     pulumi.String(""),
/// 			Description:              pulumi.String("Example interconnect attachment."),
/// 			Network:                  exampleNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Interconnect:             pulumi.String("11111111-2222-3333-4444-555555555555"),
/// 			VlanId:                   pulumi.Int(55),
/// 			Mtu:                      pulumi.Int(9000),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_edgenetwork_interconnectattachment" "example_interconnect_attachment" {
///   interconnect_attachment_id = "example-interconnect-attachment"
///   location                   = "us-west1"
///   zone                       = ""
///   description                = "Example interconnect attachment."
///   network                    = gcp_edgenetwork_network.example_network.id
///   interconnect               = "11111111-2222-3333-4444-555555555555"
///   vlan_id                    = 55
///   mtu                        = 9000
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// resource "gcp_edgenetwork_network" "example_network" {
///   network_id  = "example-network"
///   location    = "us-west1"
///   zone        = ""
///   description = "Example network."
///   mtu         = 9000
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.edgenetwork.Network;
/// import com.pulumi.gcp.edgenetwork.NetworkArgs;
/// import com.pulumi.gcp.edgenetwork.InterconnectAttachment;
/// import com.pulumi.gcp.edgenetwork.InterconnectAttachmentArgs;
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
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .networkId("example-network")
///             .location("us-west1")
///             .zone("")
///             .description("Example network.")
///             .mtu(9000)
///             .build());
///
///         var exampleInterconnectAttachment = new InterconnectAttachment("exampleInterconnectAttachment", InterconnectAttachmentArgs.builder()
///             .interconnectAttachmentId("example-interconnect-attachment")
///             .location("us-west1")
///             .zone("")
///             .description("Example interconnect attachment.")
///             .network(exampleNetwork.id())
///             .interconnect("11111111-2222-3333-4444-555555555555")
///             .vlanId(55)
///             .mtu(9000)
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleInterconnectAttachment:
///     type: gcp:edgenetwork:InterconnectAttachment
///     name: example_interconnect_attachment
///     properties:
///       interconnectAttachmentId: example-interconnect-attachment
///       location: us-west1
///       zone: ""
///       description: Example interconnect attachment.
///       network: ${exampleNetwork.id}
///       interconnect: 11111111-2222-3333-4444-555555555555
///       vlanId: 55
///       mtu: 9000
///       labels:
///         environment: dev
///   exampleNetwork:
///     type: gcp:edgenetwork:Network
///     name: example_network
///     properties:
///       networkId: example-network
///       location: us-west1
///       zone: ""
///       description: Example network.
///       mtu: 9000
/// ```
///
///
/// ## Import
///
/// InterconnectAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/zones/{{zone}}/interconnectAttachment/{{interconnect_attachment_id}}`
/// * `{{project}}/{{location}}/{{zone}}/{{interconnect_attachment_id}}`
/// * `{{location}}/{{zone}}/{{interconnect_attachment_id}}`
/// * `{{location}}/{{interconnect_attachment_id}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, InterconnectAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/interconnectAttachment:InterconnectAttachment default projects/{{project}}/locations/{{location}}/zones/{{zone}}/interconnectAttachment/{{interconnect_attachment_id}}
/// $ pulumi import gcp:edgenetwork/interconnectAttachment:InterconnectAttachment default {{project}}/{{location}}/{{zone}}/{{interconnect_attachment_id}}
/// $ pulumi import gcp:edgenetwork/interconnectAttachment:InterconnectAttachment default {{location}}/{{zone}}/{{interconnect_attachment_id}}
/// $ pulumi import gcp:edgenetwork/interconnectAttachment:InterconnectAttachment default {{location}}/{{interconnect_attachment_id}}
/// $ pulumi import gcp:edgenetwork/interconnectAttachment:InterconnectAttachment default {{name}}
/// ```
class InterconnectAttachment extends pulumi.CustomResource {
  /// The time when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ID of the underlying interconnect that this attachment's traffic will traverse through.
  late final pulumi.Output<String> interconnect;
  /// A unique ID that identifies this interconnect attachment.
  late final pulumi.Output<String> interconnectAttachmentId;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  late final pulumi.Output<String> location;
  /// IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  late final pulumi.Output<int?> mtu;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/interconnectAttachments/{{interconnect_attachment_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the network to which this interconnect attachment belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The time when the resource was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> updateTime;
  /// VLAN ID provided by user. Must be site-wise unique.
  late final pulumi.Output<int> vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  late final pulumi.Output<String> zone;

  /// Creates a new [InterconnectAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterconnectAttachment]. {@macro pulumi_edgenetwork_interconnect_attachment_interconnect_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterconnectAttachment(
    String name, {
    InterconnectAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/interconnectAttachment:InterconnectAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    interconnect = registerOutput<String>('interconnect');
    interconnectAttachmentId = registerOutput<String>('interconnectAttachmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InterconnectAttachment] resource's state with the given [name] and [id].
  static InterconnectAttachment get(
    String name,
    pulumi.Input<String> id, {
    InterconnectAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InterconnectAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InterconnectAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/interconnectAttachment:InterconnectAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    interconnect = registerOutput<String>('interconnect');
    interconnectAttachmentId = registerOutput<String>('interconnectAttachmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [InterconnectAttachment] resource.
  InterconnectAttachment.reference(String urn)
    : super(
        'gcp:edgenetwork/interconnectAttachment:InterconnectAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    interconnect = registerOutput<String>('interconnect');
    interconnectAttachmentId = registerOutput<String>('interconnectAttachmentId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }
}
