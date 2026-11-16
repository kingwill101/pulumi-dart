// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_policy_find_one_by.dart';

/// Result data returned by getZeroTrustCwsPolicy.
class GetZeroTrustCwsPolicyResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// Optional free-form description.
  final String? description;
  /// Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  final String? entrypoint;
  /// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  final String? filter;
  final GetZeroTrustCwsPolicyFindOneBy? findOneBy;
  /// ID of the policy to retrieve
  final String? id;
  /// Human-readable name; unique per account
  final String? name;
  /// Dotted path derived from rego_source. Begins with policy. and is unique per account.
  final String? packagePath;
  /// ID of the policy to retrieve
  final String? policyId;
  /// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  final String? regoSource;
  /// Tags attached to this policy
  final Map<String, String>? tags;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsPolicyResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [entrypoint] Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  /// [filter] Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  /// [findOneBy] Optional.
  /// [id] ID of the policy to retrieve
  /// [name] Human-readable name; unique per account
  /// [packagePath] Dotted path derived from rego_source. Begins with policy. and is unique per account.
  /// [policyId] ID of the policy to retrieve
  /// [regoSource] Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  /// [tags] Tags attached to this policy
  /// [updatedAt] Optional.
  const GetZeroTrustCwsPolicyResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.entrypoint,
    this.filter,
    this.findOneBy,
    this.id,
    this.name,
    this.packagePath,
    this.policyId,
    this.regoSource,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'entrypoint': ?entrypoint,
      'filter': ?filter,
      'findOneBy': ?findOneBy?.toMap(),
      'id': ?id,
      'name': ?name,
      'packagePath': ?packagePath,
      'policyId': ?policyId,
      'regoSource': ?regoSource,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entrypoint: (() { final guardedValue = map['entrypoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findOneBy: (() { final guardedValue = map['findOneBy']; if (guardedValue == null) return null; return GetZeroTrustCwsPolicyFindOneBy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regoSource: (() { final guardedValue = map['regoSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
