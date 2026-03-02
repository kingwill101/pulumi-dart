// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector_patch.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatusPatchAutoscalingV2beta1 {
  /// currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final pulumi.Input<String>? currentAverageValue;
  /// metricName is the name of the metric in question
  final pulumi.Input<String>? metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final pulumi.Input<LabelSelectorPatch>? selector;

  /// Creates a new [PodsMetricStatusPatchAutoscalingV2beta1].
  /// [currentAverageValue] currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [metricName] metricName is the name of the metric in question
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  PodsMetricStatusPatchAutoscalingV2beta1({
    this.currentAverageValue,
    this.metricName,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAverageValue': ?currentAverageValue,
      'metricName': ?metricName,
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
    };
  }

  factory PodsMetricStatusPatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatusPatchAutoscalingV2beta1(
      currentAverageValue: map['currentAverageValue'] == null ? null : (map['currentAverageValue']! as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      selector: map['selector'] == null ? null : (LabelSelectorPatch.fromMap((map['selector']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

