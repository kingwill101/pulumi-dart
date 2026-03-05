// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_infos_quota_info_dimensions_info.dart';
import 'get_squota_infos_quota_info_quota_increase_eligibility.dart';

class GetSQuotaInfosQuotaInfo {
  /// (Output) The container type of the QuotaInfo.
  final pulumi.Input<String> containerType;
  /// The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  final pulumi.Input<List<String>> dimensions;
  /// (Output) The collection of dimensions info ordered by their dimensions from more specific ones to less specific ones.
  final pulumi.Input<List<GetSQuotaInfosQuotaInfoDimensionsInfo>> dimensionsInfos;
  /// (Output) Whether the quota is a concurrent quota. Concurrent quotas are enforced on the total number of concurrent operations in flight at any given time.
  final pulumi.Input<bool> isConcurrent;
  /// (Output) Whether the quota value is fixed or adjustable.
  final pulumi.Input<bool> isFixed;
  /// (Output) Whether this is a precise quota. A precise quota is tracked with absolute precision. In contrast, an imprecise quota is not tracked with precision.
  final pulumi.Input<bool> isPrecise;
  /// (Output) The metric of the quota. It specifies the resources consumption the quota is defined for, for example: `compute.googleapis.com/cpus`.
  final pulumi.Input<String> metric;
  /// (Output) The display name of the quota metric.
  final pulumi.Input<String> metricDisplayName;
  /// (Output) The unit in which the metric value is reported, e.g., `MByte`.
  final pulumi.Input<String> metricUnit;
  /// (Output) Resource name of this QuotaInfo, for example: `projects/123/locations/global/services/compute.googleapis.com/quotaInfos/CpusPerProjectPerRegion`.
  final pulumi.Input<String> name;
  /// (Output) The display name of the quota.
  final pulumi.Input<String> quotaDisplayName;
  final pulumi.Input<String> quotaId;
  /// (Output) Whether it is eligible to request a higher quota value for this quota.
  final pulumi.Input<List<GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility>> quotaIncreaseEligibilities;
  /// (Output) The reset time interval for the quota. Refresh interval applies to rate quota only. Example: "minute" for per minute, "day" for per day, or "10 seconds" for every 10 seconds.
  final pulumi.Input<String> refreshInterval;
  /// The name of the service in which the quotas are defined.
  final pulumi.Input<String> service;
  /// (Output) URI to the page where users can request more quota for the cloud service, for example: `https://console.cloud.google.com/iam-admin/quotas`.
  final pulumi.Input<String> serviceRequestQuotaUri;

  /// Creates a new [GetSQuotaInfosQuotaInfo].
  /// [containerType] (Output) The container type of the QuotaInfo.
  /// [dimensions] The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  /// [dimensionsInfos] (Output) The collection of dimensions info ordered by their dimensions from more specific ones to less specific ones.
  /// [isConcurrent] (Output) Whether the quota is a concurrent quota. Concurrent quotas are enforced on the total number of concurrent operations in flight at any given time.
  /// [isFixed] (Output) Whether the quota value is fixed or adjustable.
  /// [isPrecise] (Output) Whether this is a precise quota. A precise quota is tracked with absolute precision. In contrast, an imprecise quota is not tracked with precision.
  /// [metric] (Output) The metric of the quota. It specifies the resources consumption the quota is defined for, for example: `compute.googleapis.com/cpus`.
  /// [metricDisplayName] (Output) The display name of the quota metric.
  /// [metricUnit] (Output) The unit in which the metric value is reported, e.g., `MByte`.
  /// [name] (Output) Resource name of this QuotaInfo, for example: `projects/123/locations/global/services/compute.googleapis.com/quotaInfos/CpusPerProjectPerRegion`.
  /// [quotaDisplayName] (Output) The display name of the quota.
  /// [quotaId] Required.
  /// [quotaIncreaseEligibilities] (Output) Whether it is eligible to request a higher quota value for this quota.
  /// [refreshInterval] (Output) The reset time interval for the quota. Refresh interval applies to rate quota only. Example: "minute" for per minute, "day" for per day, or "10 seconds" for every 10 seconds.
  /// [service] The name of the service in which the quotas are defined.
  /// [serviceRequestQuotaUri] (Output) URI to the page where users can request more quota for the cloud service, for example: `https://console.cloud.google.com/iam-admin/quotas`.
  GetSQuotaInfosQuotaInfo({
    required this.containerType,
    required this.dimensions,
    required this.dimensionsInfos,
    required this.isConcurrent,
    required this.isFixed,
    required this.isPrecise,
    required this.metric,
    required this.metricDisplayName,
    required this.metricUnit,
    required this.name,
    required this.quotaDisplayName,
    required this.quotaId,
    required this.quotaIncreaseEligibilities,
    required this.refreshInterval,
    required this.service,
    required this.serviceRequestQuotaUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerType': containerType,
      'dimensions': dimensions,
      'dimensionsInfos': pulumi.Input.mapInputValue<List<GetSQuotaInfosQuotaInfoDimensionsInfo>, List<Map<String, dynamic>>>(dimensionsInfos, (value) => pulumi.Input.encodeList<GetSQuotaInfosQuotaInfoDimensionsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isConcurrent': isConcurrent,
      'isFixed': isFixed,
      'isPrecise': isPrecise,
      'metric': metric,
      'metricDisplayName': metricDisplayName,
      'metricUnit': metricUnit,
      'name': name,
      'quotaDisplayName': quotaDisplayName,
      'quotaId': quotaId,
      'quotaIncreaseEligibilities': pulumi.Input.mapInputValue<List<GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility>, List<Map<String, dynamic>>>(quotaIncreaseEligibilities, (value) => pulumi.Input.encodeList<GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshInterval': refreshInterval,
      'service': service,
      'serviceRequestQuotaUri': serviceRequestQuotaUri,
    };
  }

  factory GetSQuotaInfosQuotaInfo.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosQuotaInfo(
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      dimensions: pulumi.Input.fromValue((map['dimensions'] as List).cast<String>()),
      dimensionsInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSQuotaInfosQuotaInfoDimensionsInfo>(map['dimensionsInfos']!, (value) => GetSQuotaInfosQuotaInfoDimensionsInfo.fromMap((value as Map).cast<String, dynamic>()))),
      isConcurrent: pulumi.Input.fromValue(map['isConcurrent'] as bool),
      isFixed: pulumi.Input.fromValue(map['isFixed'] as bool),
      isPrecise: pulumi.Input.fromValue(map['isPrecise'] as bool),
      metric: pulumi.Input.fromValue(map['metric'] as String),
      metricDisplayName: pulumi.Input.fromValue(map['metricDisplayName'] as String),
      metricUnit: pulumi.Input.fromValue(map['metricUnit'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      quotaDisplayName: pulumi.Input.fromValue(map['quotaDisplayName'] as String),
      quotaId: pulumi.Input.fromValue(map['quotaId'] as String),
      quotaIncreaseEligibilities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility>(map['quotaIncreaseEligibilities']!, (value) => GetSQuotaInfosQuotaInfoQuotaIncreaseEligibility.fromMap((value as Map).cast<String, dynamic>()))),
      refreshInterval: pulumi.Input.fromValue(map['refreshInterval'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceRequestQuotaUri: pulumi.Input.fromValue(map['serviceRequestQuotaUri'] as String),
    );
  }
}

