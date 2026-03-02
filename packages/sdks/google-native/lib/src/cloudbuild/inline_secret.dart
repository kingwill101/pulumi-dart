// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
class InlineSecret {
  /// Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  final pulumi.Input<Map<String, String>>? envMap;
  /// Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [InlineSecret].
  /// [envMap] Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  /// [kmsKeyName] Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  InlineSecret({
    this.envMap,
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envMap': ?envMap,
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory InlineSecret.fromMap(Map<String, dynamic> map) {
    return InlineSecret(
      envMap: map['envMap'] == null ? null : ((map['envMap'] as Map).cast<String, String>()).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
    );
  }
}

