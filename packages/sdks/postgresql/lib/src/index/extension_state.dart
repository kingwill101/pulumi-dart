// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Extension resources.
class ExtensionState {
  /// When true, will also create any extensions that this extension depends on that are not already installed. (Default: false)
  final pulumi.Input<bool>? createCascade;
  /// Which database to create the extension on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// When true, will also drop all the objects that depend on the extension, and in turn all objects that depend on those objects. (Default: false)
  final pulumi.Input<bool>? dropCascade;
  /// The name of the extension.
  final pulumi.Input<String>? name;
  /// Sets the schema of an extension.
  final pulumi.Input<String>? schema;
  /// Sets the version number of the extension.
  final pulumi.Input<String>? version;

  /// Creates a new [ExtensionState].
  /// [createCascade] When true, will also create any extensions that this extension depends on that are not already installed. (Default: false)
  /// [database] Which database to create the extension on. Defaults to provider database.
  /// [dropCascade] When true, will also drop all the objects that depend on the extension, and in turn all objects that depend on those objects. (Default: false)
  /// [name] The name of the extension.
  /// [schema] Sets the schema of an extension.
  /// [version] Sets the version number of the extension.
  ExtensionState({
    this.createCascade,
    this.database,
    this.dropCascade,
    this.name,
    this.schema,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createCascade': ?createCascade,
      'database': ?database,
      'dropCascade': ?dropCascade,
      'name': ?name,
      'schema': ?schema,
      'version': ?version,
    };
  }

  factory ExtensionState.fromMap(Map<String, dynamic> map) {
    return ExtensionState(
      createCascade: (() { final guardedValue = map['createCascade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dropCascade: (() { final guardedValue = map['dropCascade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

