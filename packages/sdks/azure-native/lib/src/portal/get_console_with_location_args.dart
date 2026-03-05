// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_console_with_location_args_doc}
/// Arguments for getConsoleWithLocation.
/// {@endtemplate}
/// {@macro pulumi_portal_get_console_with_location_args_doc}
class GetConsoleWithLocationArgs {
  /// The name of the console
  final pulumi.Input<String> consoleName;
  /// The provider location
  final pulumi.Input<String> location;

  /// Creates a new [GetConsoleWithLocationArgs].
  /// [consoleName] The name of the console
  /// [location] The provider location
  GetConsoleWithLocationArgs({
    required this.consoleName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': consoleName,
      'location': location,
    };
  }

  factory GetConsoleWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetConsoleWithLocationArgs(
      consoleName: pulumi.Input.fromValue(map['consoleName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

