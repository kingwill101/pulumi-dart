// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options of a Hive database.
class HiveDatabaseOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final pulumi.Input<String>? locationUri;

  /// Stores user supplied Hive database parameters.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [HiveDatabaseOptions].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters.
  HiveDatabaseOptions({this.locationUri, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationUri': ?locationUri,
      'parameters': ?parameters,
    };
  }

  factory HiveDatabaseOptions.fromMap(Map<String, dynamic> map) {
    return HiveDatabaseOptions(
      locationUri: (() {
        final guardedValue = map['locationUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
