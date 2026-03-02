// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'free_instance_metadata_expire_behavior.dart';

/// Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.
class FreeInstanceMetadata {
  /// Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  final pulumi.Input<FreeInstanceMetadataExpireBehavior>? expireBehavior;

  /// Creates a new [FreeInstanceMetadata].
  /// [expireBehavior] Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
  FreeInstanceMetadata({
    this.expireBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireBehavior': ?pulumi.Input.mapOptionalInputValue<FreeInstanceMetadataExpireBehavior, String>(expireBehavior, (value) => value.value),
    };
  }

  factory FreeInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return FreeInstanceMetadata(
      expireBehavior: map['expireBehavior'] == null ? null : (FreeInstanceMetadataExpireBehavior.fromValue(map['expireBehavior'] as String)).input(),
    );
  }
}

