// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';

/// MetricIdentifier defines the name and optionally selector for a metric
class MetricIdentifierPatch {
  /// name is the name of the given metric
  final String? name;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelectorPatch? selector;

  /// Creates a new [MetricIdentifierPatch].
  /// [name] name is the name of the given metric
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  MetricIdentifierPatch({
    this.name,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selector': ?selector == null ? null : selector!.toMap(),
    };
  }

  factory MetricIdentifierPatch.fromMap(Map<String, dynamic> map) {
    return MetricIdentifierPatch(
      name: map['name'] == null ? null : map['name'] as String,
      selector: map['selector'] == null ? null : LabelSelectorPatch.fromMap((map['selector'] as Map).cast<String, dynamic>()),
    );
  }
}

