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
    pulumi.Output<List<String>>? domainControllerIpAddresses,
    pulumi.Output<String>? domainServiceId,
    pulumi.Output<String>? externalAccessIpAddress,
    pulumi.Output<String>? location,
    pulumi.Output<String>? serviceStatus,
    pulumi.Output<String>? subnetId,
  }) :
      domainControllerIpAddresses = pulumi.Input.asOptionalInput<List<String>>(domainControllerIpAddresses),
      domainServiceId = pulumi.Input.asOptionalInput<String>(domainServiceId),
      externalAccessIpAddress = pulumi.Input.asOptionalInput<String>(externalAccessIpAddress),
      location = pulumi.Input.asOptionalInput<String>(location),
      serviceStatus = pulumi.Input.asOptionalInput<String>(serviceStatus),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

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
      domainControllerIpAddresses: map['domainControllerIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['domainControllerIpAddresses'] as List).cast<String>()),
      domainServiceId: map['domainServiceId'] == null ? null : pulumi.Output.create<String>(map['domainServiceId'] as String),
      externalAccessIpAddress: map['externalAccessIpAddress'] == null ? null : pulumi.Output.create<String>(map['externalAccessIpAddress'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      serviceStatus: map['serviceStatus'] == null ? null : pulumi.Output.create<String>(map['serviceStatus'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

