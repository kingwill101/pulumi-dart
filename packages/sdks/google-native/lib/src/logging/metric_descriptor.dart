// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_descriptor.dart';
import 'metric_descriptor_launch_stage.dart';
import 'metric_descriptor_metadata.dart';
import 'metric_descriptor_metric_kind.dart';
import 'metric_descriptor_value_type.dart';

/// Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  final String? description;
  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.
  final String? displayName;
  /// The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com/http/server/response_latencies metric type has a label for the HTTP response code, response_code, so you can look at latencies for successful responses or just for responses that failed.
  final List<LabelDescriptor>? labels;
  /// Optional. The launch stage of the metric definition.
  final MetricDescriptorLaunchStage? launchStage;
  /// Optional. Metadata which can be used to guide usage of the metric.
  final MetricDescriptorMetadata? metadata;
  /// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric_kind and value_type might not be supported.
  final MetricDescriptorMetricKind? metricKind;
  /// Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.
  final List<String>? monitoredResourceTypes;
  /// The resource name of the metric descriptor.
  final String? name;
  /// The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: "custom.googleapis.com/invoice/paid/amount" "external.googleapis.com/prometheus/up" "appengine.googleapis.com/http/server/response_latencies"
  final String? type;
  /// The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).The supported units are a subset of The Unified Code for Units of Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: / division or ratio (as an infix operator). For examples, kBy/{email} or MiBy/10ms (although you should almost never have /s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { "." Component } { "/" Component } ; Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ] | Annotation | "1" ; Annotation = "{" NAME "}" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}/s == 1/s, By{transmitted}/s == By/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It is typically used when none of the basic units are appropriate. For example, "new users per day" can be represented as 1/d or {new-users}/d (and a metric value 5 would mean "5 new users). Alternatively, "thousands of page views per day" would be represented as 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean "5300 page views per day"). % represents dimensionless value of 1/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value 3 means "3 percent"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means "3 percent").
  final String? unit;
  /// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_kind and value_type might not be supported.
  final MetricDescriptorValueType? valueType;

  /// Creates a new [MetricDescriptor].
  /// [description] A detailed description of the metric, which can be used in documentation.
  /// [displayName] A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count". This field is optional but it is recommended to be set for any metrics associated with user-visible concepts, such as Quota.
  /// [labels] The set of labels that can be used to describe a specific instance of this metric type. For example, the appengine.googleapis.com/http/server/response_latencies metric type has a label for the HTTP response code, response_code, so you can look at latencies for successful responses or just for responses that failed.
  /// [launchStage] Optional. The launch stage of the metric definition.
  /// [metadata] Optional. Metadata which can be used to guide usage of the metric.
  /// [metricKind] Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric_kind and value_type might not be supported.
  /// [monitoredResourceTypes] Read-only. If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here.
  /// [name] The resource name of the metric descriptor.
  /// [type] The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined metric types have the DNS name custom.googleapis.com or external.googleapis.com. Metric types should use a natural hierarchical grouping. For example: "custom.googleapis.com/invoice/paid/amount" "external.googleapis.com/prometheus/up" "appengine.googleapis.com/http/server/response_latencies"
  /// [unit] The units in which the metric value is reported. It is only applicable if the value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of the stored metric values.Different systems might scale the values to be more easily displayed (so a value of 0.02kBy might be displayed as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the unit is kBy, then the value of the metric is always in thousands of bytes, no matter how it might be displayed.If you want a custom metric to record the exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if you want a custom metric to record data in a more granular way, you can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).The supported units are a subset of The Unified Code for Units of Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX) k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi pebi (2^50)GrammarThe grammar also includes these connectors: / division or ratio (as an infix operator). For examples, kBy/{email} or MiBy/10ms (although you should almost never have /s in a metric unit; rates should always be computed at query time from the underlying cumulative or delta value). . multiplication or composition (as an infix operator). For examples, GBy.d or k{watt}.h.The grammar for a unit is as follows: Expression = Component { "." Component } { "/" Component } ; Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ] | Annotation | "1" ; Annotation = "{" NAME "}" ; Notes: Annotation is just a comment if it follows a UNIT. If the annotation is used alone, then the unit is equivalent to 1. For examples, {request}/s == 1/s, By{transmitted}/s == By/s. NAME is a sequence of non-blank printable ASCII characters not containing { or }. 1 represents a unitary dimensionless unit (https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It is typically used when none of the basic units are appropriate. For example, "new users per day" can be represented as 1/d or {new-users}/d (and a metric value 5 would mean "5 new users). Alternatively, "thousands of page views per day" would be represented as 1000/d or k1/d or k{page_views}/d (and a metric value of 5.3 would mean "5300 page views per day"). % represents dimensionless value of 1/100, and annotates values giving a percentage (so the metric values are typically in the range of 0..100, and a metric value 3 means "3 percent"). 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that will be multiplied by 100 and displayed as a percentage (so a metric value 0.03 means "3 percent").
  /// [valueType] Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_kind and value_type might not be supported.
  MetricDescriptor({
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.metadata,
    this.metricKind,
    this.monitoredResourceTypes,
    this.name,
    this.type,
    this.unit,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels == null ? null : pulumi.Input.encodeList<LabelDescriptor, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'launchStage': ?launchStage == null ? null : launchStage!.value,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'metricKind': ?metricKind == null ? null : metricKind!.value,
      'monitoredResourceTypes': ?monitoredResourceTypes,
      'name': ?name,
      'type': ?type,
      'unit': ?unit,
      'valueType': ?valueType == null ? null : valueType!.value,
    };
  }

  factory MetricDescriptor.fromMap(Map<String, dynamic> map) {
    return MetricDescriptor(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<LabelDescriptor>(map['labels'], (value) => LabelDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      launchStage: map['launchStage'] == null ? null : MetricDescriptorLaunchStage.fromValue(map['launchStage'] as String),
      metadata: map['metadata'] == null ? null : MetricDescriptorMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      metricKind: map['metricKind'] == null ? null : MetricDescriptorMetricKind.fromValue(map['metricKind'] as String),
      monitoredResourceTypes: map['monitoredResourceTypes'] == null ? null : (map['monitoredResourceTypes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
      valueType: map['valueType'] == null ? null : MetricDescriptorValueType.fromValue(map['valueType'] as String),
    );
  }
}

