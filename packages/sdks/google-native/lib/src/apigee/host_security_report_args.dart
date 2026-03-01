// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_security_report_query_metric.dart';

/// {@template pulumi_apigee_v1_host_security_report_args_doc}
/// The set of arguments for HostSecurityReport.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_host_security_report_args_doc}
class HostSecurityReportArgs {
  /// Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  final pulumi.Input<String>? csvDelimiter;
  /// A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  final pulumi.Input<List<String>>? dimensions;
  /// Security Report display name which users can specify.
  final pulumi.Input<String>? displayName;
  /// Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostSecurityReport where analytics data will be grouped by organization and hostname.
  final pulumi.Input<String>? envgroupHostname;
  /// Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  final pulumi.Input<String>? filter;
  /// Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  final pulumi.Input<String>? groupByTimeUnit;
  /// Maximum number of rows that can be returned in the result.
  final pulumi.Input<int>? limit;
  /// A list of Metrics.
  final pulumi.Input<List<GoogleCloudApigeeV1SecurityReportQueryMetric>>? metrics;
  /// Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  final pulumi.Input<String>? mimeType;
  final pulumi.Input<String> organizationId;
  /// Report Definition ID.
  final pulumi.Input<String>? reportDefinitionId;
  /// Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  final pulumi.Input<dynamic> timeRange;

  /// Creates a new [HostSecurityReportArgs].
  /// [csvDelimiter] Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  /// [dimensions] A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  /// [displayName] Security Report display name which users can specify.
  /// [envgroupHostname] Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostSecurityReport where analytics data will be grouped by organization and hostname.
  /// [filter] Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  /// [groupByTimeUnit] Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  /// [limit] Maximum number of rows that can be returned in the result.
  /// [metrics] A list of Metrics.
  /// [mimeType] Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  /// [organizationId] Required.
  /// [reportDefinitionId] Report Definition ID.
  /// [timeRange] Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  HostSecurityReportArgs({
    pulumi.Output<String>? csvDelimiter,
    pulumi.Output<List<String>>? dimensions,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? envgroupHostname,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? groupByTimeUnit,
    pulumi.Output<int>? limit,
    pulumi.Output<List<GoogleCloudApigeeV1SecurityReportQueryMetric>>? metrics,
    pulumi.Output<String>? mimeType,
    required pulumi.Output<String> organizationId,
    pulumi.Output<String>? reportDefinitionId,
    required pulumi.Output<dynamic> timeRange,
  }) :
      csvDelimiter = pulumi.Input.asOptionalInput<String>(csvDelimiter),
      dimensions = pulumi.Input.asOptionalInput<List<String>>(dimensions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      envgroupHostname = pulumi.Input.asOptionalInput<String>(envgroupHostname),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      groupByTimeUnit = pulumi.Input.asOptionalInput<String>(groupByTimeUnit),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      metrics = pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1SecurityReportQueryMetric>>(metrics),
      mimeType = pulumi.Input.asOptionalInput<String>(mimeType),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      reportDefinitionId = pulumi.Input.asOptionalInput<String>(reportDefinitionId),
      timeRange = pulumi.Input.asInput<dynamic>(timeRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvDelimiter': ?csvDelimiter,
      'dimensions': ?dimensions,
      'displayName': ?displayName,
      'envgroupHostname': ?envgroupHostname,
      'filter': ?filter,
      'groupByTimeUnit': ?groupByTimeUnit,
      'limit': ?limit,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1SecurityReportQueryMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1SecurityReportQueryMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mimeType': ?mimeType,
      'organizationId': organizationId,
      'reportDefinitionId': ?reportDefinitionId,
      'timeRange': timeRange,
    };
  }

  factory HostSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return HostSecurityReportArgs(
      csvDelimiter: map['csvDelimiter'] == null ? null : pulumi.Output.create<String>(map['csvDelimiter'] as String),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<String>>((map['dimensions'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      envgroupHostname: map['envgroupHostname'] == null ? null : pulumi.Output.create<String>(map['envgroupHostname'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      groupByTimeUnit: map['groupByTimeUnit'] == null ? null : pulumi.Output.create<String>(map['groupByTimeUnit'] as String),
      limit: map['limit'] == null ? null : pulumi.Output.create<int>(map['limit'] as int),
      metrics: map['metrics'] == null ? null : pulumi.Output.create<List<GoogleCloudApigeeV1SecurityReportQueryMetric>>(pulumi.Input.decodeList<GoogleCloudApigeeV1SecurityReportQueryMetric>(map['metrics'], (value) => GoogleCloudApigeeV1SecurityReportQueryMetric.fromMap((value as Map).cast<String, dynamic>()))),
      mimeType: map['mimeType'] == null ? null : pulumi.Output.create<String>(map['mimeType'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      reportDefinitionId: map['reportDefinitionId'] == null ? null : pulumi.Output.create<String>(map['reportDefinitionId'] as String),
      timeRange: pulumi.Output.create<dynamic>(map['timeRange']),
    );
  }
}

