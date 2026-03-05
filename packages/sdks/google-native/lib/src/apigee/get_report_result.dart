// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric_response.dart';
import 'google_cloud_apigee_v1_report_property_response.dart';

/// Result data returned by getReport.
class GetReportResult {
  /// This field contains the chart type for the report
  final String chartType;
  /// Legacy field: not used. This field contains a list of comments associated with custom report
  final List<String> comments;
  /// Unix time when the app was created json key: createdAt
  final String createdAt;
  /// This contains the list of dimensions for the report
  final List<String> dimensions;
  /// This is the display name for the report
  final String displayName;
  /// Environment name
  final String environment;
  /// This field contains the filter expression
  final String filter;
  /// Legacy field: not used. Contains the from time for the report
  final String fromTime;
  /// Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  final String lastModifiedAt;
  /// Last viewed time of this entity as milliseconds since epoch
  final String lastViewedAt;
  /// Legacy field: not used This field contains the limit for the result retrieved
  final String limit;
  /// This contains the list of metrics
  final List<GoogleCloudApigeeV1CustomReportMetricResponse> metrics;
  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  final String name;
  /// Legacy field: not used. This field contains the offset for the data
  final String offset;
  /// Organization name
  final String organization;
  /// This field contains report properties such as ui metadata etc.
  final List<GoogleCloudApigeeV1ReportPropertyResponse> properties;
  /// Legacy field: not used much. Contains the list of sort by columns
  final List<String> sortByCols;
  /// Legacy field: not used much. Contains the sort order for the sort columns
  final String sortOrder;
  /// Legacy field: not used. This field contains a list of tags associated with custom report
  final List<String> tags;
  /// This field contains the time unit of aggregation for the report
  final String timeUnit;
  /// Legacy field: not used. Contains the end time for the report
  final String toTime;
  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  final String topk;

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
  GetReportResult({
    required this.chartType,
    required this.comments,
    required this.createdAt,
    required this.dimensions,
    required this.displayName,
    required this.environment,
    required this.filter,
    required this.fromTime,
    required this.lastModifiedAt,
    required this.lastViewedAt,
    required this.limit,
    required this.metrics,
    required this.name,
    required this.offset,
    required this.organization,
    required this.properties,
    required this.sortByCols,
    required this.sortOrder,
    required this.tags,
    required this.timeUnit,
    required this.toTime,
    required this.topk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartType': chartType,
      'comments': comments,
      'createdAt': createdAt,
      'dimensions': dimensions,
      'displayName': displayName,
      'environment': environment,
      'filter': filter,
      'fromTime': fromTime,
      'lastModifiedAt': lastModifiedAt,
      'lastViewedAt': lastViewedAt,
      'limit': limit,
      'metrics': pulumi.Input.encodeList<GoogleCloudApigeeV1CustomReportMetricResponse, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'name': name,
      'offset': offset,
      'organization': organization,
      'properties': pulumi.Input.encodeList<GoogleCloudApigeeV1ReportPropertyResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sortByCols': sortByCols,
      'sortOrder': sortOrder,
      'tags': tags,
      'timeUnit': timeUnit,
      'toTime': toTime,
      'topk': topk,
    };
  }

  factory GetReportResult.fromMap(Map<String, dynamic> map) {
    return GetReportResult(
      chartType: map['chartType'] as String,
      comments: (map['comments'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      dimensions: (map['dimensions'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      environment: map['environment'] as String,
      filter: map['filter'] as String,
      fromTime: map['fromTime'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      lastViewedAt: map['lastViewedAt'] as String,
      limit: map['limit'] as String,
      metrics: pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetricResponse>(map['metrics']!, (value) => GoogleCloudApigeeV1CustomReportMetricResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      offset: map['offset'] as String,
      organization: map['organization'] as String,
      properties: pulumi.Input.decodeList<GoogleCloudApigeeV1ReportPropertyResponse>(map['properties']!, (value) => GoogleCloudApigeeV1ReportPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
      sortByCols: (map['sortByCols'] as List).cast<String>(),
      sortOrder: map['sortOrder'] as String,
      tags: (map['tags'] as List).cast<String>(),
      timeUnit: map['timeUnit'] as String,
      toTime: map['toTime'] as String,
      topk: map['topk'] as String,
    );
  }
}

