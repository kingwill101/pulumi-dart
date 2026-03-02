// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The structure of the property that a time series id can have. An environment can have multiple such properties.
class TimeSeriesIdProperty {
  /// The name of the property.
  final pulumi.Input<String>? name;
  /// The type of the property.
  final pulumi.Input<String>? type;

  /// Creates a new [TimeSeriesIdProperty].
  /// [name] The name of the property.
  /// [type] The type of the property.
  TimeSeriesIdProperty({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory TimeSeriesIdProperty.fromMap(Map<String, dynamic> map) {
    return TimeSeriesIdProperty(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

