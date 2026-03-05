// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaSet resources.
class ReplicaSetState {
  /// A list of subnet IP addresses for the domain controllers in this Replica Set, typically two.
  final pulumi.Input<List<String>>? domainControllerIpAddresses;
  /// The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? domainServiceId;
  /// The publicly routable IP address for the domain controllers in this Replica Set.
  final pulumi.Input<String>? externalAccessIpAddress;
  /// The Azure location where this Replica Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The current service status for the replica set.
  final pulumi.Input<String>? serviceStatus;
  /// The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ReplicaSetState].
  /// [domainControllerIpAddresses] A list of subnet IP addresses for the domain controllers in this Replica Set, typically two.
  /// [domainServiceId] The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created.
  /// [externalAccessIpAddress] The publicly routable IP address for the domain controllers in this Replica Set.
  /// [location] The Azure location where this Replica Set should exist. Changing this forces a new resource to be created.
  /// [serviceStatus] The current service status for the replica set.
  /// [subnetId] The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created.
  ReplicaSetState({
    this.domainControllerIpAddresses,
    this.domainServiceId,
    this.externalAccessIpAddress,
    this.location,
    this.serviceStatus,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllerIpAddresses': ?domainControllerIpAddresses,
      'domainServiceId': ?domainServiceId,
      'externalAccessIpAddress': ?externalAccessIpAddress,
      'location': ?location,
      'serviceStatus': ?serviceStatus,
      'subnetId': ?subnetId,
    };
  }

  factory ReplicaSetState.fromMap(Map<String, dynamic> map) {
    return ReplicaSetState(
      domainControllerIpAddresses: (() { final guardedValue = map['domainControllerIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domainServiceId: (() { final guardedValue = map['domainServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalAccessIpAddress: (() { final guardedValue = map['externalAccessIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceStatus: (() { final guardedValue = map['serviceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

