// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IP Configuration of the private endpoint.
class PrivateEndpointIPConfiguration {
  /// The ID of a group obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<String>? groupId;
  /// The member name of a group obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<String>? memberName;
  /// The name of the resource that is unique within a resource group.
  final pulumi.Input<String>? name;
  /// A private ip address obtained from the private endpoint's subnet.
  final pulumi.Input<String>? privateIPAddress;

  /// Creates a new [PrivateEndpointIPConfiguration].
  /// [groupId] The ID of a group obtained from the remote resource that this private endpoint should connect to.
  /// [memberName] The member name of a group obtained from the remote resource that this private endpoint should connect to.
  /// [name] The name of the resource that is unique within a resource group.
  /// [privateIPAddress] A private ip address obtained from the private endpoint's subnet.
  const PrivateEndpointIPConfiguration({
    this.groupId,
    this.memberName,
    this.name,
    this.privateIPAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'memberName': ?memberName,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
    };
  }

  factory PrivateEndpointIPConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointIPConfiguration(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberName: (() { final guardedValue = map['memberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

