// ignore_for_file: unused_element, unnecessary_cast


class GetServiceReplicaSet {
  /// A list of subnet IP addresses for the domain controllers in the replica set, typically two.
  final List<String> domainControllerIpAddresses;
  /// The publicly routable IP address for the domain controllers in the replica set.
  final String externalAccessIpAddress;
  /// The ID of the Domain Service.
  final String id;
  /// The Azure location in which the replica set resides.
  final String location;
  /// The current service status for the replica set.
  final String serviceStatus;
  /// The ID of the subnet in which the replica set resides.
  final String subnetId;

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
      domainControllerIpAddresses: (map['domainControllerIpAddresses'] as List).cast<String>(),
      externalAccessIpAddress: map['externalAccessIpAddress'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      serviceStatus: map['serviceStatus'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

