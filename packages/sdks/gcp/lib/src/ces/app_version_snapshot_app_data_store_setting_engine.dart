// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppDataStoreSettingEngine {
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  final pulumi.Input<String>? type;

  /// Creates a new [AppVersionSnapshotAppDataStoreSettingEngine].
  /// [name] (Output)
  /// [type] (Output)
  AppVersionSnapshotAppDataStoreSettingEngine({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory AppVersionSnapshotAppDataStoreSettingEngine.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppDataStoreSettingEngine(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

