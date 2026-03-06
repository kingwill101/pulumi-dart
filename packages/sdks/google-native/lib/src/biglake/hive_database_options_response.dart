// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options of a Hive database.
class HiveDatabaseOptionsResponse {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final pulumi.Input<String> locationUri;
  /// Stores user supplied Hive database parameters.
  final pulumi.Input<Map<String, String>> parameters;

  /// Creates a new [HiveDatabaseOptionsResponse].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters.
  const HiveDatabaseOptionsResponse({
    required this.locationUri,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationUri': locationUri,
      'parameters': parameters,
    };
  }

  factory HiveDatabaseOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HiveDatabaseOptionsResponse(
      locationUri: pulumi.Input.fromValue(map['locationUri'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
    );
  }
}

