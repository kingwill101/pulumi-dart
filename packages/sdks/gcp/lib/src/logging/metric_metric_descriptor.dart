// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_metric_descriptor_label.dart';

class MetricMetricDescriptor {
  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case
  /// without an ending period, for example "Request count". This field is optional but it is
  /// recommended to be set for any metrics associated with user-visible concepts, such as Quota.
  final pulumi.Input<String>? displayName;
  /// The set of labels that can be used to describe a specific instance of this metric type. For
  /// example, the appengine.googleapis.com/http/server/response_latencies metric type has a label
  /// for the HTTP response code, response_code, so you can look at latencies for successful responses
  /// or just for responses that failed.
  /// Structure is documented below.
  final pulumi.Input<List<MetricMetricDescriptorLabel>>? labels;
  /// Whether the metric records instantaneous values, changes to a value, etc.
  /// Some combinations of metricKind and valueType might not be supported.
  /// For counter metrics, set this to DELTA.
  /// Possible values are: `DELTA`, `GAUGE`, `CUMULATIVE`.
  final pulumi.Input<String> metricKind;
  /// The unit in which the metric value is reported. It is only applicable if the valueType is
  /// `INT64`, `DOUBLE`, or `DISTRIBUTION`. The supported units are a subset of
  /// [The Unified Code for Units of Measure](http://unitsofmeasure.org/ucum.html) standard
  final pulumi.Input<String>? unit;
  /// Whether the measurement is an integer, a floating-point number, etc.
  /// Some combinations of metricKind and valueType might not be supported.
  /// For counter metrics, set this to INT64.
  /// Possible values are: `BOOL`, `INT64`, `DOUBLE`, `STRING`, `DISTRIBUTION`, `MONEY`.
  final pulumi.Input<String> valueType;

  /// Creates a new [MetricMetricDescriptor].
  /// [displayName] A concise name for the metric, which can be displayed in user interfaces. Use sentence case
  /// [labels] The set of labels that can be used to describe a specific instance of this metric type. For
  /// [metricKind] Whether the metric records instantaneous values, changes to a value, etc.
  /// [unit] The unit in which the metric value is reported. It is only applicable if the valueType is
  /// [valueType] Whether the measurement is an integer, a floating-point number, etc.
  MetricMetricDescriptor({
    this.displayName,
    this.labels,
    required this.metricKind,
    this.unit,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<MetricMetricDescriptorLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<MetricMetricDescriptorLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricKind': metricKind,
      'unit': ?unit,
      'valueType': valueType,
    };
  }

  factory MetricMetricDescriptor.fromMap(Map<String, dynamic> map) {
    return MetricMetricDescriptor(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<MetricMetricDescriptorLabel>(map['labels'], (value) => MetricMetricDescriptorLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricKind: (map['metricKind'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
      valueType: (map['valueType'] as String).input(),
    );
  }
}

