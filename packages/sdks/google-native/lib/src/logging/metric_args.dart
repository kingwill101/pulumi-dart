// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_options.dart';
import 'metric_descriptor.dart';
import 'metric_version.dart';

/// {@template pulumi_logging_v2_metric_args_doc}
/// The set of arguments for Metric.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_metric_args_doc}
class MetricArgs {
  /// Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects are supported. The bucket has to be in the same project as the metric.For example:projects/my-project/locations/global/buckets/my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.
  final pulumi.Input<String>? bucketName;
  /// Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
  final pulumi.Input<BucketOptions>? bucketOptions;
  /// Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// Optional. If set to True, then this metric is disabled and it does not generate any points.
  final pulumi.Input<bool>? disabled;
  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: "resource.type=gae_app AND severity>=ERROR" The maximum length of the filter is 20000 characters.
  final pulumi.Input<String> filter;
  /// Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
  final pulumi.Input<Map<String, String>>? labelExtractors;
  /// Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of "1". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
  final pulumi.Input<MetricDescriptor>? metricDescriptor;
  /// The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC_ID] part of a metric resource name in the format "projects/PROJECT_ID/metrics/METRIC_ID". Example: If the resource name of a metric is "projects/my-project/metrics/nginx%2Frequests", this field's value is "nginx/requests".
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The arguments are: field: The name of the log entry field from which the value is to be extracted. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")
  final pulumi.Input<String>? valueExtractor;
  /// Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
  final pulumi.Input<MetricVersion>? version;

  /// Creates a new [MetricArgs].
  /// [bucketName] Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects are supported. The bucket has to be in the same project as the metric.For example:projects/my-project/locations/global/buckets/my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.
  /// [bucketOptions] Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
  /// [description] Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
  /// [disabled] Optional. If set to True, then this metric is disabled and it does not generate any points.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: "resource.type=gae_app AND severity>=ERROR" The maximum length of the filter is 20000 characters.
  /// [labelExtractors] Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
  /// [metricDescriptor] Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of "1". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
  /// [name] The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.This field is the [METRIC_ID] part of a metric resource name in the format "projects/PROJECT_ID/metrics/METRIC_ID". Example: If the resource name of a metric is "projects/my-project/metrics/nginx%2Frequests", this field's value is "nginx/requests".
  /// [project] Optional.
  /// [valueExtractor] Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The arguments are: field: The name of the log entry field from which the value is to be extracted. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")
  /// [version] Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
  MetricArgs({
    this.bucketName,
    this.bucketOptions,
    this.description,
    this.disabled,
    required this.filter,
    this.labelExtractors,
    this.metricDescriptor,
    this.name,
    this.project,
    this.valueExtractor,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketOptions': ?pulumi.Input.mapOptionalInputValue<BucketOptions, Map<String, dynamic>>(bucketOptions, (value) => value.toMap()),
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'labelExtractors': ?labelExtractors,
      'metricDescriptor': ?pulumi.Input.mapOptionalInputValue<MetricDescriptor, Map<String, dynamic>>(metricDescriptor, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'valueExtractor': ?valueExtractor,
      'version': ?pulumi.Input.mapOptionalInputValue<MetricVersion, String>(version, (value) => value.value),
    };
  }

  factory MetricArgs.fromMap(Map<String, dynamic> map) {
    return MetricArgs(
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      bucketOptions: map['bucketOptions'] == null ? null : (BucketOptions.fromMap((map['bucketOptions'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      filter: (map['filter'] as String).input(),
      labelExtractors: map['labelExtractors'] == null ? null : ((map['labelExtractors'] as Map).cast<String, String>()).input(),
      metricDescriptor: map['metricDescriptor'] == null ? null : (MetricDescriptor.fromMap((map['metricDescriptor'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      valueExtractor: map['valueExtractor'] == null ? null : (map['valueExtractor'] as String).input(),
      version: map['version'] == null ? null : (MetricVersion.fromValue(map['version'] as String)).input(),
    );
  }
}

