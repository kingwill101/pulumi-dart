import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_group_association_args.dart';
import 'mirroring_endpoint_group_association_location.dart';
import 'mirroring_endpoint_group_association_locations_detail.dart';
import 'mirroring_endpoint_group_association_state.dart';

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable mirroring by itself.
/// To enable mirroring, the user must also create a network firewall policy
/// containing mirroring rules and associate it with the network.
///
///
/// To get more information about MirroringEndpointGroupAssociation, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringEndpointGroupAssociations)
/// * How-to Guides
/// * [Mirroring endpoint group association overview](https://cloud.google.com/network-security-integration/docs/out-of-band/endpoint-groups-overview#mirroring-endpoint-group-association)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Group Association Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNetwork = new gcp.compute.Network("producer_network", {
///     name: "example-prod-network",
///     autoCreateSubnetworks: false,
/// });
/// const consumerNetwork = new gcp.compute.Network("consumer_network", {
///     name: "example-cons-network",
///     autoCreateSubnetworks: false,
/// });
/// const deploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("deployment_group", {
///     mirroringDeploymentGroupId: "example-dg",
///     location: "global",
///     network: producerNetwork.id,
/// });
/// const endpointGroup = new gcp.networksecurity.MirroringEndpointGroup("endpoint_group", {
///     mirroringEndpointGroupId: "example-eg",
///     location: "global",
///     mirroringDeploymentGroup: deploymentGroup.id,
/// });
/// const _default = new gcp.networksecurity.MirroringEndpointGroupAssociation("default", {
///     mirroringEndpointGroupAssociationId: "example-ega",
///     location: "global",
///     network: consumerNetwork.id,
///     mirroringEndpointGroup: endpointGroup.id,
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_network = gcp.compute.Network("producer_network",
///     name="example-prod-network",
///     auto_create_subnetworks=False)
/// consumer_network = gcp.compute.Network("consumer_network",
///     name="example-cons-network",
///     auto_create_subnetworks=False)
/// deployment_group = gcp.networksecurity.MirroringDeploymentGroup("deployment_group",
///     mirroring_deployment_group_id="example-dg",
///     location="global",
///     network=producer_network.id)
/// endpoint_group = gcp.networksecurity.MirroringEndpointGroup("endpoint_group",
///     mirroring_endpoint_group_id="example-eg",
///     location="global",
///     mirroring_deployment_group=deployment_group.id)
/// default = gcp.networksecurity.MirroringEndpointGroupAssociation("default",
///     mirroring_endpoint_group_association_id="example-ega",
///     location="global",
///     network=consumer_network.id,
///     mirroring_endpoint_group=endpoint_group.id,
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
///     var producerNetwork = new Gcp.Compute.Network("producer_network", new()
///     {
///         Name = "example-prod-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerNetwork = new Gcp.Compute.Network("consumer_network", new()
///     {
///         Name = "example-cons-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var deploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("deployment_group", new()
///     {
///         MirroringDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = producerNetwork.Id,
///     });
///
///     var endpointGroup = new Gcp.NetworkSecurity.MirroringEndpointGroup("endpoint_group", new()
///     {
///         MirroringEndpointGroupId = "example-eg",
///         Location = "global",
///         MirroringDeploymentGroup = deploymentGroup.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.MirroringEndpointGroupAssociation("default", new()
///     {
///         MirroringEndpointGroupAssociationId = "example-ega",
///         Location = "global",
///         Network = consumerNetwork.Id,
///         MirroringEndpointGroup = endpointGroup.Id,
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
/// 		producerNetwork, err := compute.NewNetwork(ctx, "producer_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-prod-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerNetwork, err := compute.NewNetwork(ctx, "consumer_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("example-cons-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "deployment_group", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    producerNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpointGroup, err := networksecurity.NewMirroringEndpointGroup(ctx, "endpoint_group", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("example-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			MirroringDeploymentGroup: deploymentGroup.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewMirroringEndpointGroupAssociation(ctx, "default", &networksecurity.MirroringEndpointGroupAssociationArgs{
/// 			MirroringEndpointGroupAssociationId: pulumi.String("example-ega"),
/// 			Location:                            pulumi.String("global"),
/// 			Network:                             consumerNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			MirroringEndpointGroup:              endpointGroup.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "producer_network" {
///   name                    = "example-prod-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "consumer_network" {
///   name                    = "example-cons-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "deployment_group" {
///   mirroring_deployment_group_id = "example-dg"
///   location                      = "global"
///   network                       = gcp_compute_network.producer_network.id
/// }
/// resource "gcp_networksecurity_mirroringendpointgroup" "endpoint_group" {
///   mirroring_endpoint_group_id = "example-eg"
///   location                    = "global"
///   mirroring_deployment_group  = gcp_networksecurity_mirroringdeploymentgroup.deployment_group.id
/// }
/// resource "gcp_networksecurity_mirroringendpointgroupassociation" "default" {
///   mirroring_endpoint_group_association_id = "example-ega"
///   location                                = "global"
///   network                                 = gcp_compute_network.consumer_network.id
///   mirroring_endpoint_group                = gcp_networksecurity_mirroringendpointgroup.endpoint_group.id
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
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroup;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupArgs;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupAssociation;
/// import com.pulumi.gcp.networksecurity.MirroringEndpointGroupAssociationArgs;
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
///         var producerNetwork = new Network("producerNetwork", NetworkArgs.builder()
///             .name("example-prod-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerNetwork = new Network("consumerNetwork", NetworkArgs.builder()
///             .name("example-cons-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var deploymentGroup = new MirroringDeploymentGroup("deploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("example-dg")
///             .location("global")
///             .network(producerNetwork.id())
///             .build());
///
///         var endpointGroup = new MirroringEndpointGroup("endpointGroup", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("example-eg")
///             .location("global")
///             .mirroringDeploymentGroup(deploymentGroup.id())
///             .build());
///
///         var default_ = new MirroringEndpointGroupAssociation("default", MirroringEndpointGroupAssociationArgs.builder()
///             .mirroringEndpointGroupAssociationId("example-ega")
///             .location("global")
///             .network(consumerNetwork.id())
///             .mirroringEndpointGroup(endpointGroup.id())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   producerNetwork:
///     type: gcp:compute:Network
///     name: producer_network
///     properties:
///       name: example-prod-network
///       autoCreateSubnetworks: false
///   consumerNetwork:
///     type: gcp:compute:Network
///     name: consumer_network
///     properties:
///       name: example-cons-network
///       autoCreateSubnetworks: false
///   deploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: deployment_group
///     properties:
///       mirroringDeploymentGroupId: example-dg
///       location: global
///       network: ${producerNetwork.id}
///   endpointGroup:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     name: endpoint_group
///     properties:
///       mirroringEndpointGroupId: example-eg
///       location: global
///       mirroringDeploymentGroup: ${deploymentGroup.id}
///   default:
///     type: gcp:networksecurity:MirroringEndpointGroupAssociation
///     properties:
///       mirroringEndpointGroupAssociationId: example-ega
///       location: global
///       network: ${consumerNetwork.id}
///       mirroringEndpointGroup: ${endpointGroup.id}
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// MirroringEndpointGroupAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpointGroupAssociations/{{mirroring_endpoint_group_association_id}}`
/// * `{{project}}/{{location}}/{{mirroring_endpoint_group_association_id}}`
/// * `{{location}}/{{mirroring_endpoint_group_association_id}}`
///
///
/// When using the `pulumi import` command, MirroringEndpointGroupAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default projects/{{project}}/locations/{{location}}/mirroringEndpointGroupAssociations/{{mirroring_endpoint_group_association_id}}
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default {{project}}/{{location}}/{{mirroring_endpoint_group_association_id}}
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation default {{location}}/{{mirroring_endpoint_group_association_id}}
/// ```
class MirroringEndpointGroupAssociationNetworksecurity extends pulumi.CustomResource {
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the association, currently restricted to `global`.
  late final pulumi.Output<String> location;
  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupAssociationLocation>> locations;
  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupAssociationLocationsDetail>> locationsDetails;
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> mirroringEndpointGroup;
  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  late final pulumi.Output<String?> mirroringEndpointGroupAssociationId;
  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;
  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. adding a new location to the target deployment group).
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

  /// Creates a new [MirroringEndpointGroupAssociationNetworksecurity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MirroringEndpointGroupAssociationNetworksecurity]. {@macro pulumi_networksecurity_mirroring_endpoint_group_association_mirroring_endpoint_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MirroringEndpointGroupAssociationNetworksecurity(
    String name, {
    MirroringEndpointGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringEndpointGroupAssociationLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocation>(guardedValue, (value) => MirroringEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>())); });
    locationsDetails = registerOutput<List<MirroringEndpointGroupAssociationLocationsDetail>>('locationsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocationsDetail>(guardedValue, (value) => MirroringEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringEndpointGroup = registerOutput<String>('mirroringEndpointGroup');
    mirroringEndpointGroupAssociationId = registerOutput<String?>('mirroringEndpointGroupAssociationId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MirroringEndpointGroupAssociationNetworksecurity] resource's state with the given [name] and [id].
  static MirroringEndpointGroupAssociationNetworksecurity get(
    String name,
    pulumi.Input<String> id, {
    MirroringEndpointGroupAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MirroringEndpointGroupAssociationNetworksecurity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MirroringEndpointGroupAssociationNetworksecurity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringEndpointGroupAssociationLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocation>(guardedValue, (value) => MirroringEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>())); });
    locationsDetails = registerOutput<List<MirroringEndpointGroupAssociationLocationsDetail>>('locationsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocationsDetail>(guardedValue, (value) => MirroringEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringEndpointGroup = registerOutput<String>('mirroringEndpointGroup');
    mirroringEndpointGroupAssociationId = registerOutput<String?>('mirroringEndpointGroupAssociationId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MirroringEndpointGroupAssociationNetworksecurity] resource.
  MirroringEndpointGroupAssociationNetworksecurity.reference(String urn)
    : super(
        'gcp:networksecurity/mirroringEndpointGroupAssociation:MirroringEndpointGroupAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    locations = registerOutput<List<MirroringEndpointGroupAssociationLocation>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocation>(guardedValue, (value) => MirroringEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>())); });
    locationsDetails = registerOutput<List<MirroringEndpointGroupAssociationLocationsDetail>>('locationsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocationsDetail>(guardedValue, (value) => MirroringEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    mirroringEndpointGroup = registerOutput<String>('mirroringEndpointGroup');
    mirroringEndpointGroupAssociationId = registerOutput<String?>('mirroringEndpointGroupAssociationId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
