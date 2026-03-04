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
  final pulumi.Input<List<RouterApplianceInstanceNetworkconnectivityV1alpha1>>?
  linkedRouterApplianceInstances;

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
    this.createTime,
    this.description,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpnTunnels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.spokeId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'hub': ?hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?linkedInterconnectAttachments,
      'linkedRouterApplianceInstances':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouterApplianceInstanceNetworkconnectivityV1alpha1>,
            List<Map<String, dynamic>>
          >(
            linkedRouterApplianceInstances,
            (value) =>
                pulumi.Input.encodeList<
                  RouterApplianceInstanceNetworkconnectivityV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'linkedVpnTunnels': ?linkedVpnTunnels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'spokeId': ?spokeId,
      'updateTime': ?updateTime,
    };
  }

  factory SpokeNetworkconnectivityV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpokeNetworkconnectivityV1alpha1Args(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hub: (() {
        final guardedValue = map['hub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      linkedInterconnectAttachments: (() {
        final guardedValue = map['linkedInterconnectAttachments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      linkedRouterApplianceInstances: (() {
        final guardedValue = map['linkedRouterApplianceInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RouterApplianceInstanceNetworkconnectivityV1alpha1
          >(
            guardedValue,
            (value) =>
                RouterApplianceInstanceNetworkconnectivityV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      linkedVpnTunnels: (() {
        final guardedValue = map['linkedVpnTunnels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spokeId: (() {
        final guardedValue = map['spokeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
