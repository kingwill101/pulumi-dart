// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric_response.dart';
import 'google_cloud_apigee_v1_report_property_response.dart';

/// Result data returned by getReport.
class GetReportResult {
  /// This field contains the chart type for the report
  final String? chartType;
  /// Legacy field: not used. This field contains a list of comments associated with custom report
  final List<String>? comments;
  /// Unix time when the app was created json key: createdAt
  final String? createdAt;
  /// This contains the list of dimensions for the report
  final List<String>? dimensions;
  /// This is the display name for the report
  final String? displayName;
  /// Environment name
  final String? environment;
  /// This field contains the filter expression
  final String? filter;
  /// Legacy field: not used. Contains the from time for the report
  final String? fromTime;
  /// Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  final String? lastModifiedAt;
  /// Last viewed time of this entity as milliseconds since epoch
  final String? lastViewedAt;
  /// Legacy field: not used This field contains the limit for the result retrieved
  final String? limit;
  /// This contains the list of metrics
  final List<GoogleCloudApigeeV1CustomReportMetricResponse>? metrics;
  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  final String? name;
  /// Legacy field: not used. This field contains the offset for the data
  final String? offset;
  /// Organization name
  final String? organization;
  /// This field contains report properties such as ui metadata etc.
  final List<GoogleCloudApigeeV1ReportPropertyResponse>? properties;
  /// Legacy field: not used much. Contains the list of sort by columns
  final List<String>? sortByCols;
  /// Legacy field: not used much. Contains the sort order for the sort columns
  final String? sortOrder;
  /// Legacy field: not used. This field contains a list of tags associated with custom report
  final List<String>? tags;
  /// This field contains the time unit of aggregation for the report
  final String? timeUnit;
  /// Legacy field: not used. Contains the end time for the report
  final String? toTime;
  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  final String? topk;

  /// Creates a new [GetReportResult].
  /// [chartType] This field contains the chart type for the report
  /// [comments] Legacy field: not used. This field contains a list of comments associated with custom report
  /// [createdAt] Unix time when the app was created json key: createdAt
  /// [dimensions] This contains the list of dimensions for the report
  /// [displayName] This is the display name for the report
  /// [environment] Environment name
  /// [filter] This field contains the filter expression
  /// [fromTime] Legacy field: not used. Contains the from time for the report
  /// [lastModifiedAt] Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  /// [lastViewedAt] Last viewed time of this entity as milliseconds since epoch
  /// [limit] Legacy field: not used This field contains the limit for the result retrieved
  /// [metrics] This contains the list of metrics
  /// [name] Unique identifier for the report T his is a legacy field used to encode custom report unique id
  /// [offset] Legacy field: not used. This field contains the offset for the data
  /// [organization] Organization name
  /// [properties] This field contains report properties such as ui metadata etc.
  /// [sortByCols] Legacy field: not used much. Contains the list of sort by columns
  /// [sortOrder] Legacy field: not used much. Contains the sort order for the sort columns
  /// [tags] Legacy field: not used. This field contains a list of tags associated with custom report
  /// [timeUnit] This field contains the time unit of aggregation for the report
  /// [toTime] Legacy field: not used. Contains the end time for the report
  /// [topk] Legacy field: not used. This field contains the top k parameter value for restricting the result
  const GetReportResult({
    this.chartType,
    this.comments,
    this.createdAt,
    this.dimensions,
    this.displayName,
    this.environment,
    this.filter,
    this.fromTime,
    this.lastModifiedAt,
    this.lastViewedAt,
    this.limit,
    this.metrics,
    this.name,
    this.offset,
    this.organization,
    this.properties,
    this.sortByCols,
    this.sortOrder,
    this.tags,
    this.timeUnit,
    this.toTime,
    this.topk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartType': ?chartType,
      'comments': ?comments,
      'createdAt': ?createdAt,
      'dimensions': ?dimensions,
      'displayName': ?displayName,
      'environment': ?environment,
      'filter': ?filter,
      'fromTime': ?fromTime,
      'lastModifiedAt': ?lastModifiedAt,
      'lastViewedAt': ?lastViewedAt,
      'limit': ?limit,
      'metrics': ?(() { final guardedValue = metrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1CustomReportMetricResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'offset': ?offset,
      'organization': ?organization,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1ReportPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sortByCols': ?sortByCols,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'timeUnit': ?timeUnit,
      'toTime': ?toTime,
      'topk': ?topk,
    };
  }

  factory GetReportResult.fromMap(Map<String, dynamic> map) {
    return GetReportResult(
      chartType: (() { final guardedValue = map['chartType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fromTime: (() { final guardedValue = map['fromTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastViewedAt: (() { final guardedValue = map['lastViewedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetricResponse>(guardedValue, (value) => GoogleCloudApigeeV1CustomReportMetricResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1ReportPropertyResponse>(guardedValue, (value) => GoogleCloudApigeeV1ReportPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sortByCols: (() { final guardedValue = map['sortByCols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      timeUnit: (() { final guardedValue = map['timeUnit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toTime: (() { final guardedValue = map['toTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topk: (() { final guardedValue = map['topk']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
