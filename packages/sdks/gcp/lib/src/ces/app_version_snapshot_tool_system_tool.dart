// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolSystemTool {
  /// The description of the app version.
  final pulumi.Input<String>? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;

  /// Creates a new [AppVersionSnapshotToolSystemTool].
  /// [description] The description of the app version.
  /// [name] (Output)
  AppVersionSnapshotToolSystemTool({this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'name': ?name};
  }

  factory AppVersionSnapshotToolSystemTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolSystemTool(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
