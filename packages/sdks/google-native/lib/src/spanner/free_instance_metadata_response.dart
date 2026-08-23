// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.
class FreeInstanceMetadataResponse {
  /// Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  final pulumi.Input<String> expireBehavior;
  /// Timestamp after which the instance will either be upgraded or scheduled for deletion after a grace period. ExpireBehavior is used to choose between upgrading or scheduling the free instance for deletion. This timestamp is set during the creation of a free instance.
  final pulumi.Input<String> expireTime;
  /// If present, the timestamp at which the free instance was upgraded to a provisioned instance.
  final pulumi.Input<String> upgradeTime;

  /// Creates a new [FreeInstanceMetadataResponse].
  /// [expireBehavior] Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  /// [expireTime] Timestamp after which the instance will either be upgraded or scheduled for deletion after a grace period. ExpireBehavior is used to choose between upgrading or scheduling the free instance for deletion. This timestamp is set during the creation of a free instance.
  /// [upgradeTime] If present, the timestamp at which the free instance was upgraded to a provisioned instance.
  const FreeInstanceMetadataResponse({
    required this.expireBehavior,
    required this.expireTime,
    required this.upgradeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireBehavior': expireBehavior,
      'expireTime': expireTime,
      'upgradeTime': upgradeTime,
    };
  }

  factory FreeInstanceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return FreeInstanceMetadataResponse(
      expireBehavior: pulumi.Input.fromValue(map['expireBehavior'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      upgradeTime: pulumi.Input.fromValue(map['upgradeTime'] as String),
    );
  }
}
