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
      addressPrefixes: pulumi.Input.fromValue(
        (map['addressPrefixes'] as List).cast<String>(),
      ),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfReservedIPAddresses: pulumi.Input.fromValue(
        map['numberOfReservedIPAddresses'] as String,
      ),
      poolId: (() {
        final guardedValue = map['poolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservationExpiresAt: pulumi.Input.fromValue(
        map['reservationExpiresAt'] as String,
      ),
      reservedPrefixes: pulumi.Input.fromValue(
        (map['reservedPrefixes'] as List).cast<String>(),
      ),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      totalNumberOfIPAddresses: pulumi.Input.fromValue(
        map['totalNumberOfIPAddresses'] as String,
      ),
    );
  }
}
