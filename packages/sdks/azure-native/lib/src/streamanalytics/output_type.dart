// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An output object, containing all information associated with the named output. All outputs are contained under a streaming job.
class OutputType {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? datasource;
  /// Resource name
  final pulumi.Input<String?>? name;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? serialization;
  /// The size window to constrain a Stream Analytics output to.
  final pulumi.Input<int?>? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final pulumi.Input<String?>? timeWindow;

  /// Creates a new [OutputType].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [name] Resource name
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  const OutputType({
    this.datasource,
    this.name,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource': ?datasource,
      'name': ?name,
      'serialization': ?serialization,
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
    };
  }

  factory OutputType.fromMap(Map<String, dynamic> map) {
    return OutputType(
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialization: (() { final guardedValue = map['serialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sizeWindow: (() { final guardedValue = map['sizeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeWindow: (() { final guardedValue = map['timeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
