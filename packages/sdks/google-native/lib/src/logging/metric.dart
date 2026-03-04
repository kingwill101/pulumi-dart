import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_options_response.dart';
import 'metric_args.dart';
import 'metric_descriptor_response.dart';

/// Creates a logs-based metric.
class Metric extends pulumi.CustomResource {
  /// Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects are supported. The bucket has to be in the same project as the metric.For example:projects/my-project/locations/global/buckets/my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.
  late final pulumi.Output<String> bucketName;

  /// Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
  late final pulumi.Output<BucketOptionsResponse> bucketOptions;

  /// The creation timestamp of the metric.This field may not be present for older metrics.
  late final pulumi.Output<String> createTime;

  /// Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String> description;

  /// Optional. If set to True, then this metric is disabled and it does not generate any points.
  late final pulumi.Output<bool> disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: "resource.type=gae_app AND severity&gt;=ERROR" The maximum length of the filter is 20000 characters.
  late final pulumi.Output<String> filter;

  /// Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
  late final pulumi.Output<Map<String, String>> labelExtractors;

  /// Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of "1". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
  late final pulumi.Output<MetricDescriptorResponse> metricDescriptor;

  /// The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC_ID] part of a metric resource name in the format "projects/PROJECT_ID/metrics/METRIC_ID". Example: If the resource name of a metric is "projects/my-project/metrics/nginx%2Frequests", this field's value is "nginx/requests".
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The last update timestamp of the metric.This field may not be present for older metrics.
  late final pulumi.Output<String> updateTime;

  /// Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The arguments are: field: The name of the log entry field from which the value is to be extracted. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")
  late final pulumi.Output<String> valueExtractor;

  /// Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
  late final pulumi.Output<String> version;

  /// Creates a new [Metric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Metric]. {@macro pulumi_logging_v2_metric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Metric(String name, {MetricArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:logging/v2:Metric',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    bucketName = registerOutput<String>('bucketName');
    bucketOptions = registerOutput<BucketOptionsResponse>('bucketOptions');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    filter = registerOutput<String>('filter');
    labelExtractors = registerOutput<Map<String, String>>('labelExtractors');
    metricDescriptor = registerOutput<MetricDescriptorResponse>(
      'metricDescriptor',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    valueExtractor = registerOutput<String>('valueExtractor');
    version = registerOutput<String>('version');
  }
}
