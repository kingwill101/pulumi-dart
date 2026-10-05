import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric_response.dart';
import 'google_cloud_apigee_v1_report_property_response.dart';
import 'report_args.dart';

/// Creates a Custom Report for an Organization. A Custom Report provides Apigee Customers to create custom dashboards in addition to the standard dashboards which are provided. The Custom Report in its simplest form contains specifications about metrics, dimensions and filters. It is important to note that the custom report by itself does not provide an executable entity. The Edge UI converts the custom report definition into an analytics query and displays the result in a chart.
class Report extends pulumi.CustomResource {
  /// This field contains the chart type for the report
  late final pulumi.Output<String> chartType;
  /// Legacy field: not used. This field contains a list of comments associated with custom report
  late final pulumi.Output<List<String>> comments;
  /// Unix time when the app was created json key: createdAt
  late final pulumi.Output<String> createdAt;
  /// This contains the list of dimensions for the report
  late final pulumi.Output<List<String>> dimensions;
  /// This is the display name for the report
  late final pulumi.Output<String> displayName;
  /// Environment name
  late final pulumi.Output<String> environment;
  /// This field contains the filter expression
  late final pulumi.Output<String> filter;
  /// Legacy field: not used. Contains the from time for the report
  late final pulumi.Output<String> fromTime;
  /// Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  late final pulumi.Output<String> lastModifiedAt;
  /// Last viewed time of this entity as milliseconds since epoch
  late final pulumi.Output<String> lastViewedAt;
  /// Legacy field: not used This field contains the limit for the result retrieved
  late final pulumi.Output<String> limit;
  /// This contains the list of metrics
  late final pulumi.Output<List<GoogleCloudApigeeV1CustomReportMetricResponse>> metrics;
  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  late final pulumi.Output<String> name;
  /// Legacy field: not used. This field contains the offset for the data
  late final pulumi.Output<String> offset;
  /// Organization name
  late final pulumi.Output<String> organization;
  late final pulumi.Output<String> organizationId;
  /// This field contains report properties such as ui metadata etc.
  late final pulumi.Output<List<GoogleCloudApigeeV1ReportPropertyResponse>> properties;
  /// Legacy field: not used much. Contains the list of sort by columns
  late final pulumi.Output<List<String>> sortByCols;
  /// Legacy field: not used much. Contains the sort order for the sort columns
  late final pulumi.Output<String> sortOrder;
  /// Legacy field: not used. This field contains a list of tags associated with custom report
  late final pulumi.Output<List<String>> tags;
  /// This field contains the time unit of aggregation for the report
  late final pulumi.Output<String> timeUnit;
  /// Legacy field: not used. Contains the end time for the report
  late final pulumi.Output<String> toTime;
  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  late final pulumi.Output<String> topk;

  /// Creates a new [Report].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Report]. {@macro pulumi_apigee_v1_report_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Report(
    String name, {
    ReportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Report',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['organizationId']).merge(options),
        ) {
    chartType = registerOutput<String>('chartType');
    comments = registerOutput<List<String>>('comments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdAt = registerOutput<String>('createdAt');
    dimensions = registerOutput<List<String>>('dimensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String>('displayName');
    environment = registerOutput<String>('environment');
    filter = registerOutput<String>('filter');
    fromTime = registerOutput<String>('fromTime');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    lastViewedAt = registerOutput<String>('lastViewedAt');
    limit = registerOutput<String>('limit');
    metrics = registerOutput<List<GoogleCloudApigeeV1CustomReportMetricResponse>>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetricResponse>(guardedValue, (value) => GoogleCloudApigeeV1CustomReportMetricResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    offset = registerOutput<String>('offset');
    organization = registerOutput<String>('organization');
    organizationId = registerOutput<String>('organizationId');
    properties = registerOutput<List<GoogleCloudApigeeV1ReportPropertyResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1ReportPropertyResponse>(guardedValue, (value) => GoogleCloudApigeeV1ReportPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sortByCols = registerOutput<List<String>>('sortByCols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sortOrder = registerOutput<String>('sortOrder');
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    timeUnit = registerOutput<String>('timeUnit');
    toTime = registerOutput<String>('toTime');
    topk = registerOutput<String>('topk');
  }

  /// Creates a typed reference to an existing [Report] resource.
  Report.reference(String urn)
    : super(
        'google-native:apigee/v1:Report',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    chartType = registerOutput<String>('chartType');
    comments = registerOutput<List<String>>('comments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdAt = registerOutput<String>('createdAt');
    dimensions = registerOutput<List<String>>('dimensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    displayName = registerOutput<String>('displayName');
    environment = registerOutput<String>('environment');
    filter = registerOutput<String>('filter');
    fromTime = registerOutput<String>('fromTime');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    lastViewedAt = registerOutput<String>('lastViewedAt');
    limit = registerOutput<String>('limit');
    metrics = registerOutput<List<GoogleCloudApigeeV1CustomReportMetricResponse>>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetricResponse>(guardedValue, (value) => GoogleCloudApigeeV1CustomReportMetricResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    offset = registerOutput<String>('offset');
    organization = registerOutput<String>('organization');
    organizationId = registerOutput<String>('organizationId');
    properties = registerOutput<List<GoogleCloudApigeeV1ReportPropertyResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1ReportPropertyResponse>(guardedValue, (value) => GoogleCloudApigeeV1ReportPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sortByCols = registerOutput<List<String>>('sortByCols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sortOrder = registerOutput<String>('sortOrder');
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    timeUnit = registerOutput<String>('timeUnit');
    toTime = registerOutput<String>('toTime');
    topk = registerOutput<String>('topk');
  }
}
