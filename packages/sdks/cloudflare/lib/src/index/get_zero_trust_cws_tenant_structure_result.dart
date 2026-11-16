// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_tenant_structure_filter.dart';

/// Result data returned by getZeroTrustCwsTenantStructure.
class GetZeroTrustCwsTenantStructureResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Platform this structure models. Immutable after creation; determines valid node kinds and identifier formats.
  /// Available values: "aws", "cloudflare".
  final String? application;
  final String? createdAt;
  final GetZeroTrustCwsTenantStructureFilter? filter;
  /// ID of the tenant structure to retrieve
  final String? id;
  /// Optional unique Rego mount path in the form tenant.\n\n.\n\n. The application segment must match application; omitted when unmounted.
  final String? importPath;
  /// Human-readable name; unique per account
  final String? name;
  /// ID of the tenant structure to retrieve
  final String? structureId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsTenantStructureResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [application] Platform this structure models. Immutable after creation; determines valid node kinds and identifier formats.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] ID of the tenant structure to retrieve
  /// [importPath] Optional unique Rego mount path in the form tenant.\n\n.\n\n. The application segment must match application; omitted when unmounted.
  /// [name] Human-readable name; unique per account
  /// [structureId] ID of the tenant structure to retrieve
  /// [updatedAt] Optional.
  const GetZeroTrustCwsTenantStructureResult({
    this.accountId,
    this.application,
    this.createdAt,
    this.filter,
    this.id,
    this.importPath,
    this.name,
    this.structureId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'application': ?application,
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'importPath': ?importPath,
      'name': ?name,
      'structureId': ?structureId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsTenantStructureResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsTenantStructureResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsTenantStructureFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      structureId: (() { final guardedValue = map['structureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
