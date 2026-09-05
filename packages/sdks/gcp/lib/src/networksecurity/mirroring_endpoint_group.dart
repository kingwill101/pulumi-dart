import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_group_args.dart';
import 'mirroring_endpoint_group_association.dart';
import 'mirroring_endpoint_group_connected_deployment_group.dart';
import 'mirroring_endpoint_group_state.dart';

/// An endpoint group is a consumer frontend for a deployment group (backend).
/// In order to configure mirroring for a network, consumers must create:
/// - An association between their network and the endpoint group.
/// - A security profile that points to the endpoint group.
/// - A mirroring rule that references the security profile (group).
///
///
/// To get more information about MirroringEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/network-security-integration/docs/reference/rest/v1/projects.locations.mirroringEndpointGroups)
/// * How-to Guides
/// * [Mirroring endpoint group overview](https://cloud.google.com/network-security-integration/docs/out-of-band/endpoint-groups-overview)
///
/// ## Example Usage
///
/// ### Network Security Mirroring Endpoint Group Basic
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
/// const deploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("deployment_group", {
///     mirroringDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
/// });
/// const _default = new gcp.networksecurity.MirroringEndpointGroup("default", {
///     mirroringEndpointGroupId: "example-eg",
///     location: "global",
///     mirroringDeploymentGroup: deploymentGroup.id,
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
/// deployment_group = gcp.networksecurity.MirroringDeploymentGroup("deployment_group",
///     mirroring_deployment_group_id="example-dg",
///     location="global",
///     network=network.id)
/// default = gcp.networksecurity.MirroringEndpointGroup("default",
///     mirroring_endpoint_group_id="example-eg",
///     location="global",
///     mirroring_deployment_group=deployment_group.id,
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
///     var deploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("deployment_group", new()
///     {
///         MirroringDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
///     {
///         MirroringEndpointGroupId = "example-eg",
///         Location = "global",
///         MirroringDeploymentGroup = deploymentGroup.Id,
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
/// 		deploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "deployment_group", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("example-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			MirroringDeploymentGroup: deploymentGroup.ID().ToIDOutput().ToStringOutput(),
/// 			Description:              pulumi.String("some description"),
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
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "deployment_group" {
///   mirroring_deployment_group_id = "example-dg"
///   location                      = "global"
///   network                       = gcp_compute_network.network.id
/// }
/// resource "gcp_networksecurity_mirroringendpointgroup" "default" {
///   mirroring_endpoint_group_id = "example-eg"
///   location                    = "global"
///   mirroring_deployment_group  = gcp_networksecurity_mirroringdeploymentgroup.deployment_group.id
///   description                 = "some description"
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
///         var deploymentGroup = new MirroringDeploymentGroup("deploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .build());
///
///         var default_ = new MirroringEndpointGroup("default", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("example-eg")
///             .location("global")
///             .mirroringDeploymentGroup(deploymentGroup.id())
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
///   deploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: deployment_group
///     properties:
///       mirroringDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///   default:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     properties:
///       mirroringEndpointGroupId: example-eg
///       location: global
///       mirroringDeploymentGroup: ${deploymentGroup.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
/// ### Network Security Mirroring Endpoint Group Broker Basic
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
/// const deploymentGroup = new gcp.networksecurity.MirroringDeploymentGroup("deployment_group", {
///     mirroringDeploymentGroupId: "example-dg",
///     location: "global",
///     network: network.id,
/// });
/// const _default = new gcp.networksecurity.MirroringEndpointGroup("default", {
///     mirroringEndpointGroupId: "example-eg",
///     location: "global",
///     type: "BROKER",
///     mirroringDeploymentGroups: [deploymentGroup.id],
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
/// deployment_group = gcp.networksecurity.MirroringDeploymentGroup("deployment_group",
///     mirroring_deployment_group_id="example-dg",
///     location="global",
///     network=network.id)
/// default = gcp.networksecurity.MirroringEndpointGroup("default",
///     mirroring_endpoint_group_id="example-eg",
///     location="global",
///     type="BROKER",
///     mirroring_deployment_groups=[deployment_group.id],
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
///     var deploymentGroup = new Gcp.NetworkSecurity.MirroringDeploymentGroup("deployment_group", new()
///     {
///         MirroringDeploymentGroupId = "example-dg",
///         Location = "global",
///         Network = network.Id,
///     });
///
///     var @default = new Gcp.NetworkSecurity.MirroringEndpointGroup("default", new()
///     {
///         MirroringEndpointGroupId = "example-eg",
///         Location = "global",
///         Type = "BROKER",
///         MirroringDeploymentGroups = new[]
///         {
///             deploymentGroup.Id,
///         },
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
/// 		deploymentGroup, err := networksecurity.NewMirroringDeploymentGroup(ctx, "deployment_group", &networksecurity.MirroringDeploymentGroupArgs{
/// 			MirroringDeploymentGroupId: pulumi.String("example-dg"),
/// 			Location:                   pulumi.String("global"),
/// 			Network:                    network.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewMirroringEndpointGroup(ctx, "default", &networksecurity.MirroringEndpointGroupArgs{
/// 			MirroringEndpointGroupId: pulumi.String("example-eg"),
/// 			Location:                 pulumi.String("global"),
/// 			Type:                     pulumi.String("BROKER"),
/// 			MirroringDeploymentGroups: pulumi.StringArray{
/// 				deploymentGroup.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Description: pulumi.String("some description"),
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
/// resource "gcp_networksecurity_mirroringdeploymentgroup" "deployment_group" {
///   mirroring_deployment_group_id = "example-dg"
///   location                      = "global"
///   network                       = gcp_compute_network.network.id
/// }
/// resource "gcp_networksecurity_mirroringendpointgroup" "default" {
///   mirroring_endpoint_group_id = "example-eg"
///   location                    = "global"
///   type                        = "BROKER"
///   mirroring_deployment_groups = [gcp_networksecurity_mirroringdeploymentgroup.deployment_group.id]
///   description                 = "some description"
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
///         var deploymentGroup = new MirroringDeploymentGroup("deploymentGroup", MirroringDeploymentGroupArgs.builder()
///             .mirroringDeploymentGroupId("example-dg")
///             .location("global")
///             .network(network.id())
///             .build());
///
///         var default_ = new MirroringEndpointGroup("default", MirroringEndpointGroupArgs.builder()
///             .mirroringEndpointGroupId("example-eg")
///             .location("global")
///             .type("BROKER")
///             .mirroringDeploymentGroups(deploymentGroup.id())
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
///   deploymentGroup:
///     type: gcp:networksecurity:MirroringDeploymentGroup
///     name: deployment_group
///     properties:
///       mirroringDeploymentGroupId: example-dg
///       location: global
///       network: ${network.id}
///   default:
///     type: gcp:networksecurity:MirroringEndpointGroup
///     properties:
///       mirroringEndpointGroupId: example-eg
///       location: global
///       type: BROKER
///       mirroringDeploymentGroups:
///         - ${deploymentGroup.id}
///       description: some description
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// MirroringEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/mirroringEndpointGroups/{{mirroring_endpoint_group_id}}`
/// * `{{project}}/{{location}}/{{mirroring_endpoint_group_id}}`
/// * `{{location}}/{{mirroring_endpoint_group_id}}`
///
///
/// When using the `pulumi import` command, MirroringEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default projects/{{project}}/locations/{{location}}/mirroringEndpointGroups/{{mirroring_endpoint_group_id}}
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default {{project}}/{{location}}/{{mirroring_endpoint_group_id}}
/// $ pulumi import gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup default {{location}}/{{mirroring_endpoint_group_id}}
/// ```
class MirroringEndpointGroup extends pulumi.CustomResource {
  /// List of associations to this endpoint group.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupAssociation>> associations;
  /// List of details about the connected deployment groups to this endpoint
  /// group.
  /// Structure is documented below.
  late final pulumi.Output<List<MirroringEndpointGroupConnectedDeploymentGroup>> connectedDeploymentGroups;
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
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  late final pulumi.Output<String> location;
  /// The deployment group that this DIRECT endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String?> mirroringDeploymentGroup;
  /// A list of the deployment groups that this BROKER endpoint group is
  /// connected to, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<List<String>?> mirroringDeploymentGroups;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  late final pulumi.Output<String> mirroringEndpointGroupId;
  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation (e.g. adding a new association to the group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  late final pulumi.Output<String> state;
  /// The type of the endpoint group.
  /// If left unspecified, defaults to DIRECT.
  /// Possible values:
  /// DIRECT
  /// BROKER
  late final pulumi.Output<String?> type;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MirroringEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MirroringEndpointGroup]. {@macro pulumi_networksecurity_mirroring_endpoint_group_mirroring_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MirroringEndpointGroup(
    String name, {
    MirroringEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    associations = registerOutput<List<MirroringEndpointGroupAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociation>(guardedValue, (value) => MirroringEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    connectedDeploymentGroups = registerOutput<List<MirroringEndpointGroupConnectedDeploymentGroup>>('connectedDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroup>(guardedValue, (value) => MirroringEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String?>('mirroringDeploymentGroup');
    mirroringDeploymentGroups = registerOutput<List<String>?>('mirroringDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mirroringEndpointGroupId = registerOutput<String>('mirroringEndpointGroupId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MirroringEndpointGroup] resource's state with the given [name] and [id].
  static MirroringEndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    MirroringEndpointGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MirroringEndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MirroringEndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associations = registerOutput<List<MirroringEndpointGroupAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociation>(guardedValue, (value) => MirroringEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    connectedDeploymentGroups = registerOutput<List<MirroringEndpointGroupConnectedDeploymentGroup>>('connectedDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroup>(guardedValue, (value) => MirroringEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String?>('mirroringDeploymentGroup');
    mirroringDeploymentGroups = registerOutput<List<String>?>('mirroringDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mirroringEndpointGroupId = registerOutput<String>('mirroringEndpointGroupId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MirroringEndpointGroup] resource.
  MirroringEndpointGroup.reference(String urn)
    : super(
        'gcp:networksecurity/mirroringEndpointGroup:MirroringEndpointGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    associations = registerOutput<List<MirroringEndpointGroupAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupAssociation>(guardedValue, (value) => MirroringEndpointGroupAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    connectedDeploymentGroups = registerOutput<List<MirroringEndpointGroupConnectedDeploymentGroup>>('connectedDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MirroringEndpointGroupConnectedDeploymentGroup>(guardedValue, (value) => MirroringEndpointGroupConnectedDeploymentGroup.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    mirroringDeploymentGroup = registerOutput<String?>('mirroringDeploymentGroup');
    mirroringDeploymentGroups = registerOutput<List<String>?>('mirroringDeploymentGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    mirroringEndpointGroupId = registerOutput<String>('mirroringEndpointGroupId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
