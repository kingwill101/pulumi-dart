// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A chart that displays alert policy data.
class AlertChart {
  /// The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  final pulumi.Input<String> name;

  /// Creates a new [AlertChart].
  /// [name] The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  AlertChart({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory AlertChart.fromMap(Map<String, dynamic> map) {
    return AlertChart(name: pulumi.Input.fromValue(map['name'] as String));
  }
}
