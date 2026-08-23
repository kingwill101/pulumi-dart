// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
class InlineSecretResponse {
  /// Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  final pulumi.Input<Map<String, String>> envMap;
  /// Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [InlineSecretResponse].
  /// [envMap] Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  /// [kmsKeyName] Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  const InlineSecretResponse({
    required this.envMap,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envMap': envMap,
      'kmsKeyName': kmsKeyName,
    };
  }

  factory InlineSecretResponse.fromMap(Map<String, dynamic> map) {
    return InlineSecretResponse(
      envMap: pulumi.Input.fromValue((map['envMap'] as Map).cast<String, String>()),
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
