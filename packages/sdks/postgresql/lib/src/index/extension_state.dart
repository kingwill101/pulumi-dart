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
    pulumi.Output<bool>? createCascade,
    pulumi.Output<String>? database,
    pulumi.Output<bool>? dropCascade,
    pulumi.Output<String>? name,
    pulumi.Output<String>? schema,
    pulumi.Output<String>? version,
  }) :
      createCascade = pulumi.Input.asOptionalInput<bool>(createCascade),
      database = pulumi.Input.asOptionalInput<String>(database),
      dropCascade = pulumi.Input.asOptionalInput<bool>(dropCascade),
      name = pulumi.Input.asOptionalInput<String>(name),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      createCascade: map['createCascade'] == null ? null : pulumi.Output.create<bool>(map['createCascade'] as bool),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      dropCascade: map['dropCascade'] == null ? null : pulumi.Output.create<bool>(map['dropCascade'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

