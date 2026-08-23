// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of subscription Response for Changed Target Directory.
class TargetDirectoryResultPropertiesResponse {
  /// Destination Owner Id where Subscription will be accepted.
  final pulumi.Input<String> destinationOwnerId;
  /// Destination Tenant Id where Subscription will be accepted.
  final pulumi.Input<String> destinationTenantId;
  /// Subscription Initiate Request Expiry time
  final pulumi.Input<String> expiresOn;
  /// Subscription Status.
  final pulumi.Input<String> status;

  /// Creates a new [TargetDirectoryResultPropertiesResponse].
  /// [destinationOwnerId] Destination Owner Id where Subscription will be accepted.
  /// [destinationTenantId] Destination Tenant Id where Subscription will be accepted.
  /// [expiresOn] Subscription Initiate Request Expiry time
  /// [status] Subscription Status.
  const TargetDirectoryResultPropertiesResponse({
    required this.destinationOwnerId,
    required this.destinationTenantId,
    required this.expiresOn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationOwnerId': destinationOwnerId,
      'destinationTenantId': destinationTenantId,
      'expiresOn': expiresOn,
      'status': status,
    };
  }

  factory TargetDirectoryResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetDirectoryResultPropertiesResponse(
      destinationOwnerId: pulumi.Input.fromValue(map['destinationOwnerId'] as String),
      destinationTenantId: pulumi.Input.fromValue(map['destinationTenantId'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
