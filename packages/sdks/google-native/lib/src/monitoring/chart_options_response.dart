// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to control visual rendering of a chart.
class ChartOptionsResponse {
  /// Preview: Configures whether the charted values are shown on the horizontal or vertical axis. By default, values are represented the vertical axis. This is a preview feature and may be subject to change before final release.
  final pulumi.Input<bool> displayHorizontal;

  /// The chart mode.
  final pulumi.Input<String> mode;

  /// Creates a new [ChartOptionsResponse].
  /// [displayHorizontal] Preview: Configures whether the charted values are shown on the horizontal or vertical axis. By default, values are represented the vertical axis. This is a preview feature and may be subject to change before final release.
  /// [mode] The chart mode.
  ChartOptionsResponse({required this.displayHorizontal, required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayHorizontal': displayHorizontal,
      'mode': mode,
    };
  }

  factory ChartOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ChartOptionsResponse(
      displayHorizontal: pulumi.Input.fromValue(
        map['displayHorizontal'] as bool,
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
