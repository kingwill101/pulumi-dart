// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceReplicaSet {
  /// A list of subnet IP addresses for the domain controllers in the replica set, typically two.
  final pulumi.Input<List<String>> domainControllerIpAddresses;
  /// The publicly routable IP address for the domain controllers in the replica set.
  final pulumi.Input<String> externalAccessIpAddress;
  /// The ID of the Domain Service.
  final pulumi.Input<String> id;
  /// The Azure location in which the replica set resides.
  final pulumi.Input<String> location;
  /// The current service status for the replica set.
  final pulumi.Input<String> serviceStatus;
  /// The ID of the subnet in which the replica set resides.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetServiceReplicaSet].
  /// [domainControllerIpAddresses] A list of subnet IP addresses for the domain controllers in the replica set, typically two.
  /// [externalAccessIpAddress] The publicly routable IP address for the domain controllers in the replica set.
  /// [id] The ID of the Domain Service.
  /// [location] The Azure location in which the replica set resides.
  /// [serviceStatus] The current service status for the replica set.
  /// [subnetId] The ID of the subnet in which the replica set resides.
  GetServiceReplicaSet({
    required this.domainControllerIpAddresses,
    required this.externalAccessIpAddress,
    required this.id,
    required this.location,
    required this.serviceStatus,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllerIpAddresses': domainControllerIpAddresses,
      'externalAccessIpAddress': externalAccessIpAddress,
      'id': id,
      'location': location,
      'serviceStatus': serviceStatus,
      'subnetId': subnetId,
    };
  }

  factory GetServiceReplicaSet.fromMap(Map<String, dynamic> map) {
    return GetServiceReplicaSet(
      domainControllerIpAddresses: pulumi.Input.fromValue((map['domainControllerIpAddresses'] as List).cast<String>()),
      externalAccessIpAddress: pulumi.Input.fromValue(map['externalAccessIpAddress'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      serviceStatus: pulumi.Input.fromValue(map['serviceStatus'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

