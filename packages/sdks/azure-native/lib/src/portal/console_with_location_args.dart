// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_console_with_location_args_doc}
/// The set of arguments for ConsoleWithLocation.
/// {@endtemplate}
/// {@macro pulumi_portal_console_with_location_args_doc}
class ConsoleWithLocationArgs {
  /// The name of the console
  final pulumi.Input<String>? consoleName;
  /// The provider location
  final pulumi.Input<String> location;

  /// Creates a new [ConsoleWithLocationArgs].
  /// [consoleName] The name of the console
  /// [location] The provider location
  ConsoleWithLocationArgs({
    this.consoleName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': ?consoleName,
      'location': location,
    };
  }

  factory ConsoleWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return ConsoleWithLocationArgs(
      consoleName: map['consoleName'] == null ? null : (map['consoleName'] as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}

