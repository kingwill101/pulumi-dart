// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTargetEncryptionSecret {
  /// Defines the type of the secret used for encryption purposes.
  final pulumi.Input<String> type;
  /// Sets the universally unique identifier (UUID) for the encryption secret.
  final pulumi.Input<String>? uuid;

  /// Creates a new [PoolTargetEncryptionSecret].
  /// [type] Defines the type of the secret used for encryption purposes.
  /// [uuid] Sets the universally unique identifier (UUID) for the encryption secret.
  PoolTargetEncryptionSecret({
    required this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'uuid': ?uuid,
    };
  }

  factory PoolTargetEncryptionSecret.fromMap(Map<String, dynamic> map) {
    return PoolTargetEncryptionSecret(
      type: (map['type'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

