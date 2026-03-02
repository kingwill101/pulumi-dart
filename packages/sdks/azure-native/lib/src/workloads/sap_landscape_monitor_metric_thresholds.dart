// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Threshold Values for Top Metrics Health.
class SapLandscapeMonitorMetricThresholds {
  /// Gets or sets the threshold value for Green.
  final pulumi.Input<double>? green;
  /// Gets or sets the name of the threshold.
  final pulumi.Input<String>? name;
  /// Gets or sets the threshold value for Red.
  final pulumi.Input<double>? red;
  /// Gets or sets the threshold value for Yellow.
  final pulumi.Input<double>? yellow;

  /// Creates a new [SapLandscapeMonitorMetricThresholds].
  /// [green] Gets or sets the threshold value for Green.
  /// [name] Gets or sets the name of the threshold.
  /// [red] Gets or sets the threshold value for Red.
  /// [yellow] Gets or sets the threshold value for Yellow.
  SapLandscapeMonitorMetricThresholds({
    this.green,
    this.name,
    this.red,
    this.yellow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'green': ?green,
      'name': ?name,
      'red': ?red,
      'yellow': ?yellow,
    };
  }

  factory SapLandscapeMonitorMetricThresholds.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorMetricThresholds(
      green: map['green'] == null ? null : (map['green'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      red: map['red'] == null ? null : (map['red'] as double).input(),
      yellow: map['yellow'] == null ? null : (map['yellow'] as double).input(),
    );
  }
}

