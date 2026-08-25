// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_chart_visualization_visual_map_piece.dart';

class DashboardChartDashboardChartVisualizationVisualMap {
  /// Structure is documented below.
  final pulumi.Input<List<DashboardChartDashboardChartVisualizationVisualMapPiece>?>? pieces;
  /// Possible values are: `VISUAL_MAP_TYPE_UNSPECIFIED`, `CONTINUOUS`, `PIECEWISE`.
  final pulumi.Input<String?>? visualMapType;

  /// Creates a new [DashboardChartDashboardChartVisualizationVisualMap].
  /// [pieces] Structure is documented below.
  /// [visualMapType] Possible values are: `VISUAL_MAP_TYPE_UNSPECIFIED`, `CONTINUOUS`, `PIECEWISE`.
  const DashboardChartDashboardChartVisualizationVisualMap({
    this.pieces,
    this.visualMapType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pieces': ?pulumi.Input.mapOptionalInputValue<List<DashboardChartDashboardChartVisualizationVisualMapPiece>, List<Map<String, dynamic>>>(pieces, (value) => pulumi.Input.encodeList<DashboardChartDashboardChartVisualizationVisualMapPiece, Map<String, dynamic>>(value, (value) => value.toMap())),
      'visualMapType': ?visualMapType,
    };
  }

  factory DashboardChartDashboardChartVisualizationVisualMap.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationVisualMap(
      pieces: (() { final guardedValue = map['pieces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardChartDashboardChartVisualizationVisualMapPiece>(guardedValue, (value) => DashboardChartDashboardChartVisualizationVisualMapPiece.fromMap((value as Map).cast<String, dynamic>()))); })(),
      visualMapType: (() { final guardedValue = map['visualMapType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
