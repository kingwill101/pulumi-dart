// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_object_storage_quotas_filter.dart';
import 'get_object_storage_quotas_quota.dart';

/// Result data returned by getObjectStorageQuotas.
class GetObjectStorageQuotasResult {
  final List<GetObjectStorageQuotasFilter>? filters;
  final String id;
  final List<GetObjectStorageQuotasQuota> quotas;

  /// Creates a new [GetObjectStorageQuotasResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [quotas] Required.
  GetObjectStorageQuotasResult({
    this.filters,
    required this.id,
    required this.quotas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetObjectStorageQuotasFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'quotas': pulumi.Input.encodeList<GetObjectStorageQuotasQuota, Map<String, dynamic>>(quotas, (value) => value.toMap()),
    };
  }

  factory GetObjectStorageQuotasResult.fromMap(Map<String, dynamic> map) {
    return GetObjectStorageQuotasResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetObjectStorageQuotasFilter>(map['filters']!, (value) => GetObjectStorageQuotasFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      quotas: pulumi.Input.decodeList<GetObjectStorageQuotasQuota>(map['quotas'], (value) => GetObjectStorageQuotasQuota.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

