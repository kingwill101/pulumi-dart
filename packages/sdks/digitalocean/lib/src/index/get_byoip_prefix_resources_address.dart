// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetByoipPrefixResourcesAddress {
  /// The timestamp when the IP was assigned.
  final pulumi.Input<String> assignedAt;
  /// The unique identifier of the IP address allocation.
  final pulumi.Input<int> id;
  /// The IP address.
  final pulumi.Input<String> ipAddress;
  /// The region where the IP is allocated.
  final pulumi.Input<String> region;

  /// Creates a new [GetByoipPrefixResourcesAddress].
  /// [assignedAt] The timestamp when the IP was assigned.
  /// [id] The unique identifier of the IP address allocation.
  /// [ipAddress] The IP address.
  /// [region] The region where the IP is allocated.
  const GetByoipPrefixResourcesAddress({
    required this.assignedAt,
    required this.id,
    required this.ipAddress,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAt': assignedAt,
      'id': id,
      'ipAddress': ipAddress,
      'region': region,
    };
  }

  factory GetByoipPrefixResourcesAddress.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResourcesAddress(
      assignedAt: pulumi.Input.fromValue(map['assignedAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
