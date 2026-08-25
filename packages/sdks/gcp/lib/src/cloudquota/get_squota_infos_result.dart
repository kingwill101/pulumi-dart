// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_infos_quota_info.dart';

/// Result data returned by getSQuotaInfos.
class GetSQuotaInfosResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parent;
  /// (Output) The list of QuotaInfo.
  final List<GetSQuotaInfosQuotaInfo>? quotaInfos;
  final String? service;

  /// Creates a new [GetSQuotaInfosResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Optional.
  /// [quotaInfos] (Output) The list of QuotaInfo.
  /// [service] Optional.
  const GetSQuotaInfosResult({
    this.id,
    this.parent,
    this.quotaInfos,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'parent': ?parent,
      'quotaInfos': ?(() { final guardedValue = quotaInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSQuotaInfosQuotaInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'service': ?service,
    };
  }

  factory GetSQuotaInfosResult.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaInfos: (() { final guardedValue = map['quotaInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSQuotaInfosQuotaInfo>(guardedValue, (value) => GetSQuotaInfosQuotaInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
