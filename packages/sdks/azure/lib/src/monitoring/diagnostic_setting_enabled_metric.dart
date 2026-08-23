// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticSettingEnabledMetric {
  /// The name of a Diagnostic Metric Category for this Resource.
  ///
  /// &gt; **NOTE:** The Metric Categories available vary depending on the Resource being used. You may wish to use the `azure.monitoring.getDiagnosticCategories` Data Source to identify which categories are available for a given Resource.
  final pulumi.Input<String> category;

  /// Creates a new [DiagnosticSettingEnabledMetric].
  /// [category] The name of a Diagnostic Metric Category for this Resource.
  const DiagnosticSettingEnabledMetric({
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
    };
  }

  factory DiagnosticSettingEnabledMetric.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingEnabledMetric(
      category: pulumi.Input.fromValue(map['category'] as String),
    );
  }
}
