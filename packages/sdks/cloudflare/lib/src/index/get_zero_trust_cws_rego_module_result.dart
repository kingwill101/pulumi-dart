// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_rego_module_filter.dart';

/// Result data returned by getZeroTrustCwsRegoModule.
class GetZeroTrustCwsRegoModuleResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  final GetZeroTrustCwsRegoModuleFilter? filter;
  /// ID of the Rego module to retrieve
  final String? id;
  /// Human-readable name; unique per account
  final String? name;
  /// Dotted path derived from rego_source. Begins with lib. and is unique per account.
  final String? packagePath;
  /// ID of the Rego module to retrieve
  final String? regoModuleId;
  /// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  final String? regoSource;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsRegoModuleResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] ID of the Rego module to retrieve
  /// [name] Human-readable name; unique per account
  /// [packagePath] Dotted path derived from rego_source. Begins with lib. and is unique per account.
  /// [regoModuleId] ID of the Rego module to retrieve
  /// [regoSource] Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  /// [updatedAt] Optional.
  const GetZeroTrustCwsRegoModuleResult({
    this.accountId,
    this.createdAt,
    this.filter,
    this.id,
    this.name,
    this.packagePath,
    this.regoModuleId,
    this.regoSource,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'packagePath': ?packagePath,
      'regoModuleId': ?regoModuleId,
      'regoSource': ?regoSource,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsRegoModuleResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoModuleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsRegoModuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regoModuleId: (() { final guardedValue = map['regoModuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regoSource: (() { final guardedValue = map['regoSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
