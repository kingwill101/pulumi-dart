// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsRegoModule resources.
class ZeroTrustCwsRegoModuleState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Name of the Rego module (unique per account)
  final pulumi.Input<String?>? name;
  /// Dotted path derived from rego_source. Begins with lib. and is unique per account.
  final pulumi.Input<String?>? packagePath;
  /// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String?>? regoSource;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsRegoModuleState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [name] Name of the Rego module (unique per account)
  /// [packagePath] Dotted path derived from rego_source. Begins with lib. and is unique per account.
  /// [regoSource] Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  /// [updatedAt] Optional.
  const ZeroTrustCwsRegoModuleState({
    this.accountId,
    this.createdAt,
    this.name,
    this.packagePath,
    this.regoSource,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'name': ?name,
      'packagePath': ?packagePath,
      'regoSource': ?regoSource,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsRegoModuleState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsRegoModuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regoSource: (() { final guardedValue = map['regoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
