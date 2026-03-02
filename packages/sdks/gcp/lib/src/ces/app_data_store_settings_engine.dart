// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppDataStoreSettingsEngine {
  /// Identifier. The unique identifier of the app.
  /// Format: `projects/{project}/locations/{location}/apps/{app}`
  final pulumi.Input<String>? name;
  /// The type of the engine.
  /// Possible values:
  /// ENGINE_TYPE_SEARCH
  /// ENGINE_TYPE_CHAT
  final pulumi.Input<String>? type;

  /// Creates a new [AppDataStoreSettingsEngine].
  /// [name] Identifier. The unique identifier of the app.
  /// [type] The type of the engine.
  AppDataStoreSettingsEngine({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory AppDataStoreSettingsEngine.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettingsEngine(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

