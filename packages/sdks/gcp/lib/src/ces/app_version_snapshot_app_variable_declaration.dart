// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_variable_declaration_schema.dart';

class AppVersionSnapshotAppVariableDeclaration {
  /// The description of the app version.
  final pulumi.Input<String>? description;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppVariableDeclarationSchema>>?
  schemas;

  /// Creates a new [AppVersionSnapshotAppVariableDeclaration].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [schemas] (Output)
  AppVersionSnapshotAppVariableDeclaration({
    this.description,
    this.name,
    this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'schemas':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotAppVariableDeclarationSchema>,
            List<Map<String, dynamic>>
          >(
            schemas,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotAppVariableDeclarationSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppVersionSnapshotAppVariableDeclaration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppVariableDeclaration(
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
      schemas: (() {
        final guardedValue = map['schemas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<AppVersionSnapshotAppVariableDeclarationSchema>(
            guardedValue,
            (value) => AppVersionSnapshotAppVariableDeclarationSchema.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
