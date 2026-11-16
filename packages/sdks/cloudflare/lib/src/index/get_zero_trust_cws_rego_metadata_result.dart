// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_rego_metadata_filter.dart';

/// Result data returned by getZeroTrustCwsRegoMetadata.
class GetZeroTrustCwsRegoMetadataResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  final String? data;
  final GetZeroTrustCwsRegoMetadataFilter? filter;
  /// ID of the rego metadata document to retrieve
  final String? id;
  /// Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  final String? importPath;
  /// Human-readable name; unique per account
  final String? name;
  /// ID of the rego metadata document to retrieve
  final String? regoMetadataId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsRegoMetadataResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [data] Optional.
  /// [filter] Optional.
  /// [id] ID of the rego metadata document to retrieve
  /// [importPath] Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  /// [name] Human-readable name; unique per account
  /// [regoMetadataId] ID of the rego metadata document to retrieve
  /// [updatedAt] Optional.
  const GetZeroTrustCwsRegoMetadataResult({
    this.accountId,
    this.createdAt,
    this.data,
    this.filter,
    this.id,
    this.importPath,
    this.name,
    this.regoMetadataId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'data': ?data,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'importPath': ?importPath,
      'name': ?name,
      'regoMetadataId': ?regoMetadataId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsRegoMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsRegoMetadataFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regoMetadataId: (() { final guardedValue = map['regoMetadataId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
