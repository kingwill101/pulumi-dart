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
    pulumi.Output<String>? chartType,
    pulumi.Output<List<String>>? comments,
    pulumi.Output<List<String>>? dimensions,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? fromTime,
    pulumi.Output<String>? limit,
    required pulumi.Output<List<GoogleCloudApigeeV1CustomReportMetric>> metrics,
    pulumi.Output<String>? name,
    pulumi.Output<String>? offset,
    required pulumi.Output<String> organizationId,
    pulumi.Output<List<GoogleCloudApigeeV1ReportProperty>>? properties,
    pulumi.Output<List<String>>? sortByCols,
    pulumi.Output<String>? sortOrder,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? timeUnit,
    pulumi.Output<String>? toTime,
    pulumi.Output<String>? topk,
  }) :
      chartType = pulumi.Input.asOptionalInput<String>(chartType),
      comments = pulumi.Input.asOptionalInput<List<String>>(comments),
      dimensions = pulumi.Input.asOptionalInput<List<String>>(dimensions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      fromTime = pulumi.Input.asOptionalInput<String>(fromTime),
      limit = pulumi.Input.asOptionalInput<String>(limit),
      metrics = pulumi.Input.asInput<List<GoogleCloudApigeeV1CustomReportMetric>>(metrics),
      name = pulumi.Input.asOptionalInput<String>(name),
      offset = pulumi.Input.asOptionalInput<String>(offset),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      properties = pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1ReportProperty>>(properties),
      sortByCols = pulumi.Input.asOptionalInput<List<String>>(sortByCols),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      timeUnit = pulumi.Input.asOptionalInput<String>(timeUnit),
      toTime = pulumi.Input.asOptionalInput<String>(toTime),
      topk = pulumi.Input.asOptionalInput<String>(topk);

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
      chartType: map['chartType'] == null ? null : pulumi.Output.create<String>(map['chartType'] as String),
      comments: map['comments'] == null ? null : pulumi.Output.create<List<String>>((map['comments'] as List).cast<String>()),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<String>>((map['dimensions'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      fromTime: map['fromTime'] == null ? null : pulumi.Output.create<String>(map['fromTime'] as String),
      limit: map['limit'] == null ? null : pulumi.Output.create<String>(map['limit'] as String),
      metrics: pulumi.Output.create<List<GoogleCloudApigeeV1CustomReportMetric>>(pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetric>(map['metrics'], (value) => GoogleCloudApigeeV1CustomReportMetric.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      offset: map['offset'] == null ? null : pulumi.Output.create<String>(map['offset'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<List<GoogleCloudApigeeV1ReportProperty>>(pulumi.Input.decodeList<GoogleCloudApigeeV1ReportProperty>(map['properties'], (value) => GoogleCloudApigeeV1ReportProperty.fromMap((value as Map).cast<String, dynamic>()))),
      sortByCols: map['sortByCols'] == null ? null : pulumi.Output.create<List<String>>((map['sortByCols'] as List).cast<String>()),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      timeUnit: map['timeUnit'] == null ? null : pulumi.Output.create<String>(map['timeUnit'] as String),
      toTime: map['toTime'] == null ? null : pulumi.Output.create<String>(map['toTime'] as String),
      topk: map['topk'] == null ? null : pulumi.Output.create<String>(map['topk'] as String),
    );
  }
}

