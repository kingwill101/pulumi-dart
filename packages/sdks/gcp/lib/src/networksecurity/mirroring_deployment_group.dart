import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_deployment_group_args.dart';
import 'mirroring_deployment_group_connected_endpoint_group.dart';
import 'mirroring_deployment_group_location.dart';
import 'mirroring_deployment_group_state.dart';

/// A deployment group aggregates many zonal mirroring backends (deployments)
/// into a single global mirroring service. Consumers can connect this service
/// using an endpoint group.
///
///
/// To get more information about MirroringDeploymentGroup, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringDeploymentGroups)
/// * How-to Guides
/// * [Mirroring deployment group overview](https://cloud.google.com/network-security-integration/docs/out-of-band/deployment-groups-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Deployment Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "example-network",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networksecurity.MirroringDeploymentGroup("default", {
///     mirroringDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
///     description: "some description",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="example-network",
///     auto_create_subnetworks=False)
/// default = gcp.networksecurity.MirroringDeploymentGroup("default",
///     mirroring_deployment_group_id="example-dg",
///     location="global",
///     network=network.id,
///     description="some description",
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "example-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.NetworkSecurity.MirroringDeploymentGroup("default", new()
///     {
///         MirroringDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///         Description = "some description",
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewMirroringDeploymentGroup(ctx, "default", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID().ToIDOutput().ToStringOutput(),
/// 			Description:                pulumi.String("some description"),
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
/// resource "gcp_compute_network" "network" {
///   name                    = "example-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "default" {
///   mirroring_deployment_group_id = "example-dg"
///   location                      = "global"
///   network                       = gcp_compute_network.network.id
///   description                   = "some description"
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
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroup;
/// import com.pulumi.gcp.networksecurity.MirroringDeploymentGroupArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("example-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new MirroringDeploymentGroup("default", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .description("some description")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     properties:
///       mirroringDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// MirroringDeploymentGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringDeploymentGroups/{{mirroring_deployment_group_id}}`
/// * `{{project}}/{{location}}/{{mirroring_deployment_group_id}}`
/// * `{{location}}/{{mirroring_deployment_group_id}}`
///
///
/// When using the `pulumi import` command, MirroringDeploymentGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default projects/{{project}}/locations/{{location}}/mirroringDeploymentGroups/{{mirroring_deployment_group_id}}
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default {{project}}/{{location}}/{{mirroring_deployment_group_id}}
/// $ pulumi import gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup default {{location}}/{{mirroring_deployment_group_id}}
/// ```
class MirroringDeploymentGroup extends pulumi.CustomResource {
  /// The list of endpoint groups that are connected to this resource.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringDeploymentGroupConnectedEndpointGroup>> connectedEndpointGroups;
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the deployment group, currently restricted to `global`.
  late final pulumi.Output<String> location;
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringDeploymentGroupLocation>> locations;
  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  late final pulumi.Output<String> mirroringDeploymentGroupId;
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> name;
  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new deployment to the group)
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MirroringDeploymentGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MirroringDeploymentGroup]. {@macro pulumi_networksecurity_mirroring_deployment_group_mirroring_deployment_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MirroringDeploymentGroup(
    String name, {
    MirroringDeploymentGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    connectedEndpointGroups = registerOutput<List<MirroringDeploymentGroupConnectedEndpointGroup>>('connectedEndpointGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupConnectedEndpointGroup>(guardedValue, (value) => MirroringDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringDeploymentGroupLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupLocation>(guardedValue, (value) => MirroringDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringDeploymentGroupId = registerOutput<String>('mirroringDeploymentGroupId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MirroringDeploymentGroup] resource's state with the given [name] and [id].
  static MirroringDeploymentGroup get(
    String name,
    pulumi.Input<String> id, {
    MirroringDeploymentGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MirroringDeploymentGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MirroringDeploymentGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectedEndpointGroups = registerOutput<List<MirroringDeploymentGroupConnectedEndpointGroup>>('connectedEndpointGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupConnectedEndpointGroup>(guardedValue, (value) => MirroringDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringDeploymentGroupLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupLocation>(guardedValue, (value) => MirroringDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringDeploymentGroupId = registerOutput<String>('mirroringDeploymentGroupId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MirroringDeploymentGroup] resource.
  MirroringDeploymentGroup.reference(String urn)
    : super(
        'gcp:networksecurity/mirroringDeploymentGroup:MirroringDeploymentGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    connectedEndpointGroups = registerOutput<List<MirroringDeploymentGroupConnectedEndpointGroup>>('connectedEndpointGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupConnectedEndpointGroup>(guardedValue, (value) => MirroringDeploymentGroupConnectedEndpointGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringDeploymentGroupLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringDeploymentGroupLocation>(guardedValue, (value) => MirroringDeploymentGroupLocation.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringDeploymentGroupId = registerOutput<String>('mirroringDeploymentGroupId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
