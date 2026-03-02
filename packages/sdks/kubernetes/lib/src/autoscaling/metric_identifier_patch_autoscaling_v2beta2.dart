// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// MetricIdentifier defines the name and optionally selector for a metric
class MetricIdentifierPatchAutoscalingV2beta2 {
  /// name is the name of the given metric
  final pulumi.Input<String>? name;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelectorPatch>? selector;

  /// Creates a new [MetricIdentifierPatchAutoscalingV2beta2].
  /// [name] name is the name of the given metric
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  MetricIdentifierPatchAutoscalingV2beta2({
    this.name,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
    };
  }

  factory MetricIdentifierPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return MetricIdentifierPatchAutoscalingV2beta2(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      selector: map['selector'] == null ? null : (LabelSelectorPatch.fromMap((map['selector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

