import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_interconnect_attachments_response.dart';
import 'linked_router_appliance_instances_response.dart';
import 'linked_vpc_network_response.dart';
import 'linked_vpn_tunnels_response.dart';
import 'spoke_args.dart';
import 'state_reason_response.dart';

/// Creates a Network Connectivity Center spoke.
class Spoke extends pulumi.CustomResource {
  /// The time the spoke was created.
  late final pulumi.Output<String> createTime;
  /// An optional description of the spoke.
  late final pulumi.Output<String> description;
  /// Optional. The name of the group that this spoke is associated with.
  late final pulumi.Output<String> group;
  /// Immutable. The name of the hub that this spoke is attached to.
  late final pulumi.Output<String> hub;
  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  late final pulumi.Output<Map<String, String>> labels;
  /// VLAN attachments that are associated with the spoke.
  late final pulumi.Output<LinkedInterconnectAttachmentsResponse> linkedInterconnectAttachments;
  /// Router appliance instances that are associated with the spoke.
  late final pulumi.Output<LinkedRouterApplianceInstancesResponse> linkedRouterApplianceInstances;
  /// Optional. VPC network that is associated with the spoke.
  late final pulumi.Output<LinkedVpcNetworkResponse> linkedVpcNetwork;
  /// VPN tunnels that are associated with the spoke.
  late final pulumi.Output<LinkedVpnTunnelsResponse> linkedVpnTunnels;
  late final pulumi.Output<String> location;
  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  late final pulumi.Output<List<StateReasonResponse>> reasons;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Required. Unique id for the spoke to create.
  late final pulumi.Output<String> spokeId;
  /// The type of resource associated with the spoke.
  late final pulumi.Output<String> spokeType;
  /// The current lifecycle state of this spoke.
  late final pulumi.Output<String> state;
  /// The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  late final pulumi.Output<String> uniqueId;
  /// The time the spoke was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Spoke].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Spoke]. {@macro pulumi_networkconnectivity_v1_spoke_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Spoke(
    String name, {
    SpokeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:Spoke',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.group = registerOutput<String>('group');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.linkedInterconnectAttachments = registerOutput<LinkedInterconnectAttachmentsResponse>('linkedInterconnectAttachments');
    this.linkedRouterApplianceInstances = registerOutput<LinkedRouterApplianceInstancesResponse>('linkedRouterApplianceInstances');
    this.linkedVpcNetwork = registerOutput<LinkedVpcNetworkResponse>('linkedVpcNetwork');
    this.linkedVpnTunnels = registerOutput<LinkedVpnTunnelsResponse>('linkedVpnTunnels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reasons = registerOutput<List<StateReasonResponse>>('reasons');
    this.requestId = registerOutput<String?>('requestId');
    this.spokeId = registerOutput<String>('spokeId');
    this.spokeType = registerOutput<String>('spokeType');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
