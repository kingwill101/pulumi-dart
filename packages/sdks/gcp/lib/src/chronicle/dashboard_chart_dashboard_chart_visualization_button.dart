// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_button_properties.dart';

class DashboardChartDashboardChartVisualizationButton {
  /// (Optional)
  final pulumi.Input<String>? description;
  /// (Required)
  final pulumi.Input<String> hyperlink;
  /// (Required)
  final pulumi.Input<String> label;
  /// (Optional)
  final pulumi.Input<bool>? newTab;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationButtonProperties>? properties;

  /// Creates a new [DashboardChartDashboardChartVisualizationButton].
  /// [description] (Optional)
  /// [hyperlink] (Required)
  /// [label] (Required)
  /// [newTab] (Optional)
  /// [properties] A nested object resource.
  const DashboardChartDashboardChartVisualizationButton({
    this.description,
    required this.hyperlink,
    required this.label,
    this.newTab,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hyperlink': hyperlink,
      'label': label,
      'newTab': ?newTab,
      'properties': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationButtonProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartVisualizationButton.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationButton(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hyperlink: pulumi.Input.fromValue(map['hyperlink'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      newTab: (() { final guardedValue = map['newTab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationButtonProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
