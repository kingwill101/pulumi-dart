// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input or output argument of a function or stored procedure.
class GoogleCloudDatacatalogV1RoutineSpecArgumentResponse {
  /// Specifies whether the argument is input or output.
  final pulumi.Input<String> mode;
  /// The name of the argument. A return argument of a function might not have a name.
  final pulumi.Input<String> name;
  /// Type of the argument. The exact value depends on the source system and the language.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1RoutineSpecArgumentResponse].
  /// [mode] Specifies whether the argument is input or output.
  /// [name] The name of the argument. A return argument of a function might not have a name.
  /// [type] Type of the argument. The exact value depends on the source system and the language.
  GoogleCloudDatacatalogV1RoutineSpecArgumentResponse({
    required this.mode,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'name': name,
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1RoutineSpecArgumentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpecArgumentResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

