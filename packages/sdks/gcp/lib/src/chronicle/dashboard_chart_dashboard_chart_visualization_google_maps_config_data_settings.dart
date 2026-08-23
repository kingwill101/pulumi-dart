// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings {
  /// (Optional)
  final pulumi.Input<String>? countColumn;
  /// (Optional)
  final pulumi.Input<String>? latitudeColumn;
  /// (Optional)
  final pulumi.Input<String>? longitudeColumn;

  /// Creates a new [DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings].
  /// [countColumn] (Optional)
  /// [latitudeColumn] (Optional)
  /// [longitudeColumn] (Optional)
  const DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings({
    this.countColumn,
    this.latitudeColumn,
    this.longitudeColumn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countColumn': ?countColumn,
      'latitudeColumn': ?latitudeColumn,
      'longitudeColumn': ?longitudeColumn,
    };
  }

  factory DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationGoogleMapsConfigDataSettings(
      countColumn: (() { final guardedValue = map['countColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latitudeColumn: (() { final guardedValue = map['latitudeColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longitudeColumn: (() { final guardedValue = map['longitudeColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
