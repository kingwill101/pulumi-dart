// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeInstanceAssignToUser {
  /// User’s AAD Object Id.
  final pulumi.Input<String>? objectId;
  /// User’s AAD Tenant Id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ComputeInstanceAssignToUser].
  /// [objectId] User’s AAD Object Id.
  /// [tenantId] User’s AAD Tenant Id.
  const ComputeInstanceAssignToUser({
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ComputeInstanceAssignToUser.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceAssignToUser(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

