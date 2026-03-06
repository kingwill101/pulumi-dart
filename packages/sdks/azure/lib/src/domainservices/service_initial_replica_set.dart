// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceInitialReplicaSet {
  /// A list of subnet IP addresses for the domain controllers in the initial replica set, typically two.
  final pulumi.Input<List<String>>? domainControllerIpAddresses;
  /// The publicly routable IP address for the domain controllers in the initial replica set.
  final pulumi.Input<String>? externalAccessIpAddress;
  /// A unique ID for the replica set.
  final pulumi.Input<String>? id;
  /// The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The current service status for the initial replica set.
  final pulumi.Input<String>? serviceStatus;
  /// The ID of the subnet in which to place the initial replica set. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ServiceInitialReplicaSet].
  /// [domainControllerIpAddresses] A list of subnet IP addresses for the domain controllers in the initial replica set, typically two.
  /// [externalAccessIpAddress] The publicly routable IP address for the domain controllers in the initial replica set.
  /// [id] A unique ID for the replica set.
  /// [location] The Azure location where the Domain Service exists. Changing this forces a new resource to be created.
  /// [serviceStatus] The current service status for the initial replica set.
  /// [subnetId] The ID of the subnet in which to place the initial replica set. Changing this forces a new resource to be created.
  const ServiceInitialReplicaSet({
    this.domainControllerIpAddresses,
    this.externalAccessIpAddress,
    this.id,
    this.location,
    this.serviceStatus,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllerIpAddresses': ?domainControllerIpAddresses,
      'externalAccessIpAddress': ?externalAccessIpAddress,
      'id': ?id,
      'location': ?location,
      'serviceStatus': ?serviceStatus,
      'subnetId': subnetId,
    };
  }

  factory ServiceInitialReplicaSet.fromMap(Map<String, dynamic> map) {
    return ServiceInitialReplicaSet(
      domainControllerIpAddresses: (() { final guardedValue = map['domainControllerIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      externalAccessIpAddress: (() { final guardedValue = map['externalAccessIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceStatus: (() { final guardedValue = map['serviceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

