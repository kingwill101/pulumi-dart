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
      domainControllerIpAddresses: map['domainControllerIpAddresses'] == null ? null : ((map['domainControllerIpAddresses'] as List).cast<String>()).input(),
      domainServiceId: map['domainServiceId'] == null ? null : (map['domainServiceId'] as String).input(),
      externalAccessIpAddress: map['externalAccessIpAddress'] == null ? null : (map['externalAccessIpAddress'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      serviceStatus: map['serviceStatus'] == null ? null : (map['serviceStatus'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

