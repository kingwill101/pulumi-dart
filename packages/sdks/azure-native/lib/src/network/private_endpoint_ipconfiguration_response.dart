// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IP Configuration of the private endpoint.
class PrivateEndpointIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// The ID of a group obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<String>? groupId;

  /// The member name of a group obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<String>? memberName;

  /// The name of the resource that is unique within a resource group.
  final pulumi.Input<String>? name;

  /// A private ip address obtained from the private endpoint's subnet.
  final pulumi.Input<String>? privateIPAddress;

  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [groupId] The ID of a group obtained from the remote resource that this private endpoint should connect to.
  /// [memberName] The member name of a group obtained from the remote resource that this private endpoint should connect to.
  /// [name] The name of the resource that is unique within a resource group.
  /// [privateIPAddress] A private ip address obtained from the private endpoint's subnet.
  /// [type] The resource type.
  PrivateEndpointIPConfigurationResponse({
    required this.etag,
    this.groupId,
    this.memberName,
    this.name,
    this.privateIPAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'groupId': ?groupId,
      'memberName': ?memberName,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'type': type,
    };
  }

  factory PrivateEndpointIPConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointIPConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberName: (() {
        final guardedValue = map['memberName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPAddress: (() {
        final guardedValue = map['privateIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
