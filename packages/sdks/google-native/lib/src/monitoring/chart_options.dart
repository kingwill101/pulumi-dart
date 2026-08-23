// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'chart_options_mode.dart';

/// Options to control visual rendering of a chart.
class ChartOptions {
  /// Preview: Configures whether the charted values are shown on the horizontal or vertical axis. By default, values are represented the vertical axis. This is a preview feature and may be subject to change before final release.
  final pulumi.Input<bool>? displayHorizontal;
  /// The chart mode.
  final pulumi.Input<ChartOptionsMode>? mode;

  /// Creates a new [ChartOptions].
  /// [displayHorizontal] Preview: Configures whether the charted values are shown on the horizontal or vertical axis. By default, values are represented the vertical axis. This is a preview feature and may be subject to change before final release.
  /// [mode] The chart mode.
  const ChartOptions({
    this.displayHorizontal,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayHorizontal': ?displayHorizontal,
      'mode': ?pulumi.Input.mapOptionalInputValue<ChartOptionsMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory ChartOptions.fromMap(Map<String, dynamic> map) {
    return ChartOptions(
      displayHorizontal: (() { final guardedValue = map['displayHorizontal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChartOptionsMode.fromValue(guardedValue as String)); })(),
    );
  }
}
