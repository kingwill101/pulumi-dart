// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_workload_find_one_by.dart';

/// Result data returned by getZeroTrustCwsWorkload.
class GetZeroTrustCwsWorkloadResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// Optional free-form description.
  final String? description;
  /// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  final String? filter;
  final GetZeroTrustCwsWorkloadFindOneBy? findOneBy;
  /// ID of the workload to retrieve
  final String? id;
  /// Human-readable handle; unique per account.
  final String? name;
  /// Tags attached to this workload
  final Map<String, String>? tags;
  final String? updatedAt;
  /// ID of the workload to retrieve
  final String? workloadId;

  /// Creates a new [GetZeroTrustCwsWorkloadResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [filter] Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  /// [findOneBy] Optional.
  /// [id] ID of the workload to retrieve
  /// [name] Human-readable handle; unique per account.
  /// [tags] Tags attached to this workload
  /// [updatedAt] Optional.
  /// [workloadId] ID of the workload to retrieve
  const GetZeroTrustCwsWorkloadResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.filter,
    this.findOneBy,
    this.id,
    this.name,
    this.tags,
    this.updatedAt,
    this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'filter': ?filter,
      'findOneBy': ?findOneBy?.toMap(),
      'id': ?id,
      'name': ?name,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'workloadId': ?workloadId,
    };
  }

  factory GetZeroTrustCwsWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findOneBy: (() { final guardedValue = map['findOneBy']; if (guardedValue == null) return null; return GetZeroTrustCwsWorkloadFindOneBy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
