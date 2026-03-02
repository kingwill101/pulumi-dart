// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric.dart';
import 'google_cloud_apigee_v1_report_property.dart';

/// {@template pulumi_apigee_v1_report_args_doc}
/// The set of arguments for Report.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_report_args_doc}
class ReportArgs {
  /// This field contains the chart type for the report
  final pulumi.Input<String>? chartType;
  /// Legacy field: not used. This field contains a list of comments associated with custom report
  final pulumi.Input<List<String>>? comments;
  /// This contains the list of dimensions for the report
  final pulumi.Input<List<String>>? dimensions;
  /// This is the display name for the report
  final pulumi.Input<String>? displayName;
  /// This field contains the filter expression
  final pulumi.Input<String>? filter;
  /// Legacy field: not used. Contains the from time for the report
  final pulumi.Input<String>? fromTime;
  /// Legacy field: not used This field contains the limit for the result retrieved
  final pulumi.Input<String>? limit;
  /// This contains the list of metrics
  final pulumi.Input<List<GoogleCloudApigeeV1CustomReportMetric>> metrics;
  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  final pulumi.Input<String>? name;
  /// Legacy field: not used. This field contains the offset for the data
  final pulumi.Input<String>? offset;
  final pulumi.Input<String> organizationId;
  /// This field contains report properties such as ui metadata etc.
  final pulumi.Input<List<GoogleCloudApigeeV1ReportProperty>>? properties;
  /// Legacy field: not used much. Contains the list of sort by columns
  final pulumi.Input<List<String>>? sortByCols;
  /// Legacy field: not used much. Contains the sort order for the sort columns
  final pulumi.Input<String>? sortOrder;
  /// Legacy field: not used. This field contains a list of tags associated with custom report
  final pulumi.Input<List<String>>? tags;
  /// This field contains the time unit of aggregation for the report
  final pulumi.Input<String>? timeUnit;
  /// Legacy field: not used. Contains the end time for the report
  final pulumi.Input<String>? toTime;
  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  final pulumi.Input<String>? topk;

  /// Creates a new [ReportArgs].
  /// [chartType] This field contains the chart type for the report
  /// [comments] Legacy field: not used. This field contains a list of comments associated with custom report
  /// [dimensions] This contains the list of dimensions for the report
  /// [displayName] This is the display name for the report
  /// [filter] This field contains the filter expression
  /// [fromTime] Legacy field: not used. Contains the from time for the report
  /// [limit] Legacy field: not used This field contains the limit for the result retrieved
  /// [metrics] This contains the list of metrics
  /// [name] Unique identifier for the report T his is a legacy field used to encode custom report unique id
  /// [offset] Legacy field: not used. This field contains the offset for the data
  /// [organizationId] Required.
  /// [properties] This field contains report properties such as ui metadata etc.
  /// [sortByCols] Legacy field: not used much. Contains the list of sort by columns
  /// [sortOrder] Legacy field: not used much. Contains the sort order for the sort columns
  /// [tags] Legacy field: not used. This field contains a list of tags associated with custom report
  /// [timeUnit] This field contains the time unit of aggregation for the report
  /// [toTime] Legacy field: not used. Contains the end time for the report
  /// [topk] Legacy field: not used. This field contains the top k parameter value for restricting the result
  ReportArgs({
    this.chartType,
    this.comments,
    this.dimensions,
    this.displayName,
    this.filter,
    this.fromTime,
    this.limit,
    required this.metrics,
    this.name,
    this.offset,
    required this.organizationId,
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
      'dimensions': ?dimensions,
      'displayName': ?displayName,
      'filter': ?filter,
      'fromTime': ?fromTime,
      'limit': ?limit,
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1CustomReportMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1CustomReportMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'offset': ?offset,
      'organizationId': organizationId,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1ReportProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1ReportProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sortByCols': ?sortByCols,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'timeUnit': ?timeUnit,
      'toTime': ?toTime,
      'topk': ?topk,
    };
  }

  factory ReportArgs.fromMap(Map<String, dynamic> map) {
    return ReportArgs(
      chartType: map['chartType'] == null ? null : (map['chartType'] as String).input(),
      comments: map['comments'] == null ? null : ((map['comments'] as List).cast<String>()).input(),
      dimensions: map['dimensions'] == null ? null : ((map['dimensions'] as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      fromTime: map['fromTime'] == null ? null : (map['fromTime'] as String).input(),
      limit: map['limit'] == null ? null : (map['limit'] as String).input(),
      metrics: (pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetric>(map['metrics'], (value) => GoogleCloudApigeeV1CustomReportMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      offset: map['offset'] == null ? null : (map['offset'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1ReportProperty>(map['properties'], (value) => GoogleCloudApigeeV1ReportProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sortByCols: map['sortByCols'] == null ? null : ((map['sortByCols'] as List).cast<String>()).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      timeUnit: map['timeUnit'] == null ? null : (map['timeUnit'] as String).input(),
      toTime: map['toTime'] == null ? null : (map['toTime'] as String).input(),
      topk: map['topk'] == null ? null : (map['topk'] as String).input(),
    );
  }
}

