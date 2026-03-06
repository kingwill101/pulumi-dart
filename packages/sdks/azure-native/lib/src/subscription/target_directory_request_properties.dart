// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of subscription Request for Changed Target Directory.
class TargetDirectoryRequestProperties {
  /// The destination OwnerId, can be object id or email address
  final pulumi.Input<String>? destinationOwnerId;
  /// The destination Tenant id where subscription needs to be accepted
  final pulumi.Input<String>? destinationTenantId;

  /// Creates a new [TargetDirectoryRequestProperties].
  /// [destinationOwnerId] The destination OwnerId, can be object id or email address
  /// [destinationTenantId] The destination Tenant id where subscription needs to be accepted
  const TargetDirectoryRequestProperties({
    this.destinationOwnerId,
    this.destinationTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationOwnerId': ?destinationOwnerId,
      'destinationTenantId': ?destinationTenantId,
    };
  }

  factory TargetDirectoryRequestProperties.fromMap(Map<String, dynamic> map) {
    return TargetDirectoryRequestProperties(
      destinationOwnerId: (() { final guardedValue = map['destinationOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationTenantId: (() { final guardedValue = map['destinationTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

