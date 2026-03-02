// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The structure of the property that a time series id can have. An environment can have multiple such properties.
class TimeSeriesIdPropertyResponse {
  /// The name of the property.
  final pulumi.Input<String>? name;
  /// The type of the property.
  final pulumi.Input<String>? type;

  /// Creates a new [TimeSeriesIdPropertyResponse].
  /// [name] The name of the property.
  /// [type] The type of the property.
  TimeSeriesIdPropertyResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory TimeSeriesIdPropertyResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesIdPropertyResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

