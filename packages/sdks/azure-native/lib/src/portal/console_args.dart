// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'console_create_properties.dart';

/// {@template pulumi_portal_console_args_doc}
/// The set of arguments for Console.
/// {@endtemplate}
/// {@macro pulumi_portal_console_args_doc}
class ConsoleArgs {
  /// The name of the console
  final pulumi.Input<String>? consoleName;
  /// Cloud shell properties for creating a console.
  final pulumi.Input<ConsoleCreateProperties> properties;

  /// Creates a new [ConsoleArgs].
  /// [consoleName] The name of the console
  /// [properties] Cloud shell properties for creating a console.
  ConsoleArgs({
    this.consoleName,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': ?consoleName,
      'properties': pulumi.Input.mapInputValue<ConsoleCreateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ConsoleArgs.fromMap(Map<String, dynamic> map) {
    return ConsoleArgs(
      consoleName: map['consoleName'] == null ? null : (map['consoleName']! as String).input(),
      properties: (ConsoleCreateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

