// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_markdown_properties.dart';

class DashboardChartDashboardChartVisualizationMarkdown {
  /// (Required)
  final pulumi.Input<String> content;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardChartVisualizationMarkdownProperties?>? properties;

  /// Creates a new [DashboardChartDashboardChartVisualizationMarkdown].
  /// [content] (Required)
  /// [properties] A nested object resource.
  const DashboardChartDashboardChartVisualizationMarkdown({
    required this.content,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'properties': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardChartVisualizationMarkdownProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DashboardChartDashboardChartVisualizationMarkdown.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationMarkdown(
      content: pulumi.Input.fromValue(map['content'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardChartVisualizationMarkdownProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
