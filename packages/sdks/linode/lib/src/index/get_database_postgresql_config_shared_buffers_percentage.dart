// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabasePostgresqlConfigSharedBuffersPercentage {
  final pulumi.Input<String> description;
  final pulumi.Input<double> example;
  final pulumi.Input<double> maximum;
  final pulumi.Input<double> minimum;
  final pulumi.Input<bool> requiresRestart;
  final pulumi.Input<String> type;

  /// Creates a new [GetDatabasePostgresqlConfigSharedBuffersPercentage].
  /// [description] Required.
  /// [example] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabasePostgresqlConfigSharedBuffersPercentage({
    required this.description,
    required this.example,
    required this.maximum,
    required this.minimum,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'example': example,
      'maximum': maximum,
      'minimum': minimum,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabasePostgresqlConfigSharedBuffersPercentage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabasePostgresqlConfigSharedBuffersPercentage(
      description: pulumi.Input.fromValue(map['description'] as String),
      example: pulumi.Input.fromValue(map['example'] as double),
      maximum: pulumi.Input.fromValue(map['maximum'] as double),
      minimum: pulumi.Input.fromValue(map['minimum'] as double),
      requiresRestart: pulumi.Input.fromValue(map['requiresRestart'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
