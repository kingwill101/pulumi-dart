// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database level key used for encryption at rest.
class DatabaseKeyResponse {
  /// The database key creation date.
  final pulumi.Input<String> creationDate;

  /// Subregion of the server key.
  final pulumi.Input<String> subregion;

  /// Thumbprint of the database key.
  final pulumi.Input<String> thumbprint;

  /// The database key type. Only supported value is 'AzureKeyVault'.
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseKeyResponse].
  /// [creationDate] The database key creation date.
  /// [subregion] Subregion of the server key.
  /// [thumbprint] Thumbprint of the database key.
  /// [type] The database key type. Only supported value is 'AzureKeyVault'.
  DatabaseKeyResponse({
    required this.creationDate,
    required this.subregion,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDate': creationDate,
      'subregion': subregion,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory DatabaseKeyResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseKeyResponse(
      creationDate: pulumi.Input.fromValue(map['creationDate'] as String),
      subregion: pulumi.Input.fromValue(map['subregion'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
