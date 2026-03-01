// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_appliance_instance_networkconnectivity_v1alpha1.dart';

/// {@template pulumi_networkconnectivity_v1alpha1_spoke_networkconnectivity_v1alpha1_args_doc}
/// The set of arguments for Spoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_spoke_networkconnectivity_v1alpha1_args_doc}
class SpokeNetworkconnectivityV1alpha1Args {
  /// The time when the Spoke was created.
  final pulumi.Input<String>? createTime;
  /// Short description of the spoke resource
  final pulumi.Input<String>? description;
  /// The resource URL of the hub resource that the spoke is attached to
  final pulumi.Input<String>? hub;
  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// The URIs of linked interconnect attachment resources
  final pulumi.Input<List<String>>? linkedInterconnectAttachments;
  /// The URIs of linked Router appliance resources
  final pulumi.Input<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>>? linkedRouterApplianceInstances;
  /// The URIs of linked VPN tunnel resources
  final pulumi.Input<List<String>>? linkedVpnTunnels;
  final pulumi.Input<String>? location;
  /// Immutable. The name of a Spoke resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Unique id for the Spoke to create.
  final pulumi.Input<String>? spokeId;
  /// The time when the Spoke was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SpokeNetworkconnectivityV1alpha1Args].
  /// [createTime] The time when the Spoke was created.
  /// [description] Short description of the spoke resource
  /// [hub] The resource URL of the hub resource that the spoke is attached to
  /// [labels] User-defined labels.
  /// [linkedInterconnectAttachments] The URIs of linked interconnect attachment resources
  /// [linkedRouterApplianceInstances] The URIs of linked Router appliance resources
  /// [linkedVpnTunnels] The URIs of linked VPN tunnel resources
  /// [location] Optional.
  /// [name] Immutable. The name of a Spoke resource.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [spokeId] Optional. Unique id for the Spoke to create.
  /// [updateTime] The time when the Spoke was updated.
  SpokeNetworkconnectivityV1alpha1Args({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hub,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? linkedInterconnectAttachments,
    pulumi.Output<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>>? linkedRouterApplianceInstances,
    pulumi.Output<List<String>>? linkedVpnTunnels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? spokeId,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      hub = pulumi.Input.asOptionalInput<String>(hub),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      linkedInterconnectAttachments = pulumi.Input.asOptionalInput<List<String>>(linkedInterconnectAttachments),
      linkedRouterApplianceInstances = pulumi.Input.asOptionalInput<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>>(linkedRouterApplianceInstances),
      linkedVpnTunnels = pulumi.Input.asOptionalInput<List<String>>(linkedVpnTunnels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      spokeId = pulumi.Input.asOptionalInput<String>(spokeId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'hub': ?hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?linkedInterconnectAttachments,
      'linkedRouterApplianceInstances': ?pulumi.Input.mapOptionalInputValue<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>, List<Map<String, dynamic>>>(linkedRouterApplianceInstances, (value) => pulumi.Input.encodeList<RouterApplianceInstanceNetworkconnectivityV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedVpnTunnels': ?linkedVpnTunnels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'spokeId': ?spokeId,
      'updateTime': ?updateTime,
    };
  }

  factory SpokeNetworkconnectivityV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return SpokeNetworkconnectivityV1alpha1Args(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hub: map['hub'] == null ? null : pulumi.Output.create<String>(map['hub'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      linkedInterconnectAttachments: map['linkedInterconnectAttachments'] == null ? null : pulumi.Output.create<List<String>>((map['linkedInterconnectAttachments'] as List).cast<String>()),
      linkedRouterApplianceInstances: map['linkedRouterApplianceInstances'] == null ? null : pulumi.Output.create<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>>(pulumi.Input.decodeList<RouterApplianceInstanceNetworkconnectivityV1alpha1>(map['linkedRouterApplianceInstances'], (value) => RouterApplianceInstanceNetworkconnectivityV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      linkedVpnTunnels: map['linkedVpnTunnels'] == null ? null : pulumi.Output.create<List<String>>((map['linkedVpnTunnels'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      spokeId: map['spokeId'] == null ? null : pulumi.Output.create<String>(map['spokeId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

