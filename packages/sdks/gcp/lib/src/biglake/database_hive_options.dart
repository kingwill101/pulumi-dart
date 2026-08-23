// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseHiveOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final pulumi.Input<String>? locationUri;
  /// Stores user supplied Hive database parameters. An object containing a
  /// list of"key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DatabaseHiveOptions].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters. An object containing a
  const DatabaseHiveOptions({
    this.locationUri,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationUri': ?locationUri,
      'parameters': ?parameters,
    };
  }

  factory DatabaseHiveOptions.fromMap(Map<String, dynamic> map) {
    return DatabaseHiveOptions(
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
