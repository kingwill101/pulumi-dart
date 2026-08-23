// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings.dart';

/// {@template pulumi_index_component_args_doc}
/// The set of arguments for Component.
/// {@endtemplate}
/// {@macro pulumi_index_component_args_doc}
class ComponentArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<Settings> settings;

  /// Creates a new [ComponentArgs].
  /// [name] Required.
  /// [settings] Required.
  const ComponentArgs({
    required this.name,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'settings': pulumi.Input.mapInputValue<Settings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ComponentArgs.fromMap(Map<String, dynamic> map) {
    return ComponentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      settings: pulumi.Input.fromValue(Settings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
    );
  }
}
