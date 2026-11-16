// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsRegoMetadata resources.
class ZeroTrustCwsRegoMetadataState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? data;
  /// Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  final pulumi.Input<String?>? importPath;
  /// Name of the rego metadata document (unique per account)
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsRegoMetadataState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [data] Optional.
  /// [importPath] Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  /// [name] Name of the rego metadata document (unique per account)
  /// [updatedAt] Optional.
  const ZeroTrustCwsRegoMetadataState({
    this.accountId,
    this.createdAt,
    this.data,
    this.importPath,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'data': ?data,
      'importPath': ?importPath,
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsRegoMetadataState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsRegoMetadataState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
