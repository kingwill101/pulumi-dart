// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the Threshold Values for Top Metrics Health.
class SapLandscapeMonitorMetricThresholdsResponse {
  /// Gets or sets the threshold value for Green.
  final double? green;
  /// Gets or sets the name of the threshold.
  final String? name;
  /// Gets or sets the threshold value for Red.
  final double? red;
  /// Gets or sets the threshold value for Yellow.
  final double? yellow;

  /// Creates a new [SapLandscapeMonitorMetricThresholdsResponse].
  /// [green] Gets or sets the threshold value for Green.
  /// [name] Gets or sets the name of the threshold.
  /// [red] Gets or sets the threshold value for Red.
  /// [yellow] Gets or sets the threshold value for Yellow.
  SapLandscapeMonitorMetricThresholdsResponse({
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

  factory SapLandscapeMonitorMetricThresholdsResponse.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorMetricThresholdsResponse(
      green: map['green'] == null ? null : map['green'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      red: map['red'] == null ? null : map['red'] as double,
      yellow: map['yellow'] == null ? null : map['yellow'] as double,
    );
  }
}

