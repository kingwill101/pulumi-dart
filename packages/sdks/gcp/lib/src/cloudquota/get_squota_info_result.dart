// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_info_dimensions_info.dart';
import 'get_squota_info_quota_increase_eligibility.dart';

/// Result data returned by getSQuotaInfo.
class GetSQuotaInfoResult {
  /// (Output) The container type of the QuotaInfo.
  final String containerType;

  /// The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  final List<String> dimensions;

  /// (Output) The collection of dimensions info ordered by their dimensions from more specific ones to less specific ones.
  final List<GetSQuotaInfoDimensionsInfo> dimensionsInfos;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Output) Whether the quota is a concurrent quota. Concurrent quotas are enforced on the total number of concurrent operations in flight at any given time.
  final bool isConcurrent;

  /// (Output) Whether the quota value is fixed or adjustable.
  final bool isFixed;

  /// (Output) Whether this is a precise quota. A precise quota is tracked with absolute precision. In contrast, an imprecise quota is not tracked with precision.
  final bool isPrecise;

  /// (Output) The metric of the quota. It specifies the resources consumption the quota is defined for, for example: `compute.googleapis.com/cpus`.
  final String metric;

  /// (Output) The display name of the quota metric.
  final String metricDisplayName;

  /// (Output) The unit in which the metric value is reported, e.g., `MByte`.
  final String metricUnit;

  /// (Output) Resource name of this QuotaInfo, for example: `projects/123/locations/global/services/compute.googleapis.com/quotaInfos/CpusPerProjectPerRegion`.
  final String name;
  final String parent;

  /// (Output) The display name of the quota.
  final String quotaDisplayName;
  final String quotaId;

  /// (Output) Whether it is eligible to request a higher quota value for this quota.
  final List<GetSQuotaInfoQuotaIncreaseEligibility> quotaIncreaseEligibilities;

  /// (Output) The reset time interval for the quota. Refresh interval applies to rate quota only. Example: "minute" for per minute, "day" for per day, or "10 seconds" for every 10 seconds.
  final String refreshInterval;
  final String service;

  /// (Output) URI to the page where users can request more quota for the cloud service, for example: `https://console.cloud.google.com/iam-admin/quotas`.
  final String serviceRequestQuotaUri;

  /// Creates a new [GetSQuotaInfoResult].
  /// [containerType] (Output) The container type of the QuotaInfo.
  /// [dimensions] The map of dimensions for this dimensions info. The key of a map entry is "region", "zone" or the name of a service specific dimension, and the value of a map entry is the value of the dimension. If a dimension does not appear in the map of dimensions, the dimensions info applies to all the dimension values except for those that have another DimenisonInfo instance configured for the specific value. Example: {"provider" : "Foo Inc"} where "provider" is a service specific dimension of a quota.
  /// [dimensionsInfos] (Output) The collection of dimensions info ordered by their dimensions from more specific ones to less specific ones.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isConcurrent] (Output) Whether the quota is a concurrent quota. Concurrent quotas are enforced on the total number of concurrent operations in flight at any given time.
  /// [isFixed] (Output) Whether the quota value is fixed or adjustable.
  /// [isPrecise] (Output) Whether this is a precise quota. A precise quota is tracked with absolute precision. In contrast, an imprecise quota is not tracked with precision.
  /// [metric] (Output) The metric of the quota. It specifies the resources consumption the quota is defined for, for example: `compute.googleapis.com/cpus`.
  /// [metricDisplayName] (Output) The display name of the quota metric.
  /// [metricUnit] (Output) The unit in which the metric value is reported, e.g., `MByte`.
  /// [name] (Output) Resource name of this QuotaInfo, for example: `projects/123/locations/global/services/compute.googleapis.com/quotaInfos/CpusPerProjectPerRegion`.
  /// [parent] Required.
  /// [quotaDisplayName] (Output) The display name of the quota.
  /// [quotaId] Required.
  /// [quotaIncreaseEligibilities] (Output) Whether it is eligible to request a higher quota value for this quota.
  /// [refreshInterval] (Output) The reset time interval for the quota. Refresh interval applies to rate quota only. Example: "minute" for per minute, "day" for per day, or "10 seconds" for every 10 seconds.
  /// [service] Required.
  /// [serviceRequestQuotaUri] (Output) URI to the page where users can request more quota for the cloud service, for example: `https://console.cloud.google.com/iam-admin/quotas`.
  GetSQuotaInfoResult({
    required this.containerType,
    required this.dimensions,
    required this.dimensionsInfos,
    required this.id,
    required this.isConcurrent,
    required this.isFixed,
    required this.isPrecise,
    required this.metric,
    required this.metricDisplayName,
    required this.metricUnit,
    required this.name,
    required this.parent,
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
      'dimensionsInfos':
          pulumi.Input.encodeList<
            GetSQuotaInfoDimensionsInfo,
            Map<String, dynamic>
          >(dimensionsInfos, (value) => value.toMap()),
      'id': id,
      'isConcurrent': isConcurrent,
      'isFixed': isFixed,
      'isPrecise': isPrecise,
      'metric': metric,
      'metricDisplayName': metricDisplayName,
      'metricUnit': metricUnit,
      'name': name,
      'parent': parent,
      'quotaDisplayName': quotaDisplayName,
      'quotaId': quotaId,
      'quotaIncreaseEligibilities':
          pulumi.Input.encodeList<
            GetSQuotaInfoQuotaIncreaseEligibility,
            Map<String, dynamic>
          >(quotaIncreaseEligibilities, (value) => value.toMap()),
      'refreshInterval': refreshInterval,
      'service': service,
      'serviceRequestQuotaUri': serviceRequestQuotaUri,
    };
  }

  factory GetSQuotaInfoResult.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoResult(
      containerType: map['containerType'] as String,
      dimensions: (map['dimensions'] as List).cast<String>(),
      dimensionsInfos: pulumi.Input.decodeList<GetSQuotaInfoDimensionsInfo>(
        map['dimensionsInfos']!,
        (value) => GetSQuotaInfoDimensionsInfo.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      isConcurrent: map['isConcurrent'] as bool,
      isFixed: map['isFixed'] as bool,
      isPrecise: map['isPrecise'] as bool,
      metric: map['metric'] as String,
      metricDisplayName: map['metricDisplayName'] as String,
      metricUnit: map['metricUnit'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      quotaDisplayName: map['quotaDisplayName'] as String,
      quotaId: map['quotaId'] as String,
      quotaIncreaseEligibilities:
          pulumi.Input.decodeList<GetSQuotaInfoQuotaIncreaseEligibility>(
            map['quotaIncreaseEligibilities']!,
            (value) => GetSQuotaInfoQuotaIncreaseEligibility.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      refreshInterval: map['refreshInterval'] as String,
      service: map['service'] as String,
      serviceRequestQuotaUri: map['serviceRequestQuotaUri'] as String,
    );
  }
}
