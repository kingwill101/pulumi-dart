// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IpamPool association information.
class PoolAssociationResponse {
  /// List of assigned IP address prefixes in the IpamPool of the associated resource.
  final pulumi.Input<List<String>> addressPrefixes;
  /// Creation time of the association.
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String>? description;
  /// Total number of reserved IP addresses of the association.
  final pulumi.Input<String> numberOfReservedIPAddresses;
  /// IpamPool id for which the resource is associated to.
  final pulumi.Input<String>? poolId;
  /// Expire time for IP addresses reserved.
  final pulumi.Input<String> reservationExpiresAt;
  /// List of reserved IP address prefixes in the IpamPool of the associated resource.
  final pulumi.Input<List<String>> reservedPrefixes;
  /// Resource id of the associated Azure resource.
  final pulumi.Input<String> resourceId;
  /// Total number of assigned IP addresses of the association.
  final pulumi.Input<String> totalNumberOfIPAddresses;

  /// Creates a new [PoolAssociationResponse].
  /// [addressPrefixes] List of assigned IP address prefixes in the IpamPool of the associated resource.
  /// [createdAt] Creation time of the association.
  /// [description] Optional.
  /// [numberOfReservedIPAddresses] Total number of reserved IP addresses of the association.
  /// [poolId] IpamPool id for which the resource is associated to.
  /// [reservationExpiresAt] Expire time for IP addresses reserved.
  /// [reservedPrefixes] List of reserved IP address prefixes in the IpamPool of the associated resource.
  /// [resourceId] Resource id of the associated Azure resource.
  /// [totalNumberOfIPAddresses] Total number of assigned IP addresses of the association.
  PoolAssociationResponse({
    required this.addressPrefixes,
    required this.createdAt,
    this.description,
    required this.numberOfReservedIPAddresses,
    this.poolId,
    required this.reservationExpiresAt,
    required this.reservedPrefixes,
    required this.resourceId,
    required this.totalNumberOfIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'createdAt': createdAt,
      'description': ?description,
      'numberOfReservedIPAddresses': numberOfReservedIPAddresses,
      'poolId': ?poolId,
      'reservationExpiresAt': reservationExpiresAt,
      'reservedPrefixes': reservedPrefixes,
      'resourceId': resourceId,
      'totalNumberOfIPAddresses': totalNumberOfIPAddresses,
    };
  }

  factory PoolAssociationResponse.fromMap(Map<String, dynamic> map) {
    return PoolAssociationResponse(
      addressPrefixes: ((map['addressPrefixes'] as List).cast<String>()).input(),
      createdAt: (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      numberOfReservedIPAddresses: (map['numberOfReservedIPAddresses'] as String).input(),
      poolId: map['poolId'] == null ? null : (map['poolId']! as String).input(),
      reservationExpiresAt: (map['reservationExpiresAt'] as String).input(),
      reservedPrefixes: ((map['reservedPrefixes'] as List).cast<String>()).input(),
      resourceId: (map['resourceId'] as String).input(),
      totalNumberOfIPAddresses: (map['totalNumberOfIPAddresses'] as String).input(),
    );
  }
}

