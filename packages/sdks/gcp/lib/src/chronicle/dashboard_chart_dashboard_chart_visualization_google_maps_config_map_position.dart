// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition {
  /// (Optional)
  final pulumi.Input<bool?>? fitData;
  /// (Optional)
  final pulumi.Input<double?>? latitudeValue;
  /// (Optional)
  final pulumi.Input<double?>? longitudeValue;
  /// (Optional)
  final pulumi.Input<double?>? zoomScaleValue;

  /// Creates a new [DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition].
  /// [fitData] (Optional)
  /// [latitudeValue] (Optional)
  /// [longitudeValue] (Optional)
  /// [zoomScaleValue] (Optional)
  const DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition({
    this.fitData,
    this.latitudeValue,
    this.longitudeValue,
    this.zoomScaleValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fitData': ?fitData,
      'latitudeValue': ?latitudeValue,
      'longitudeValue': ?longitudeValue,
      'zoomScaleValue': ?zoomScaleValue,
    };
  }

  factory DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationGoogleMapsConfigMapPosition(
      fitData: (() { final guardedValue = map['fitData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latitudeValue: (() { final guardedValue = map['latitudeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      longitudeValue: (() { final guardedValue = map['longitudeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoomScaleValue: (() { final guardedValue = map['zoomScaleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
