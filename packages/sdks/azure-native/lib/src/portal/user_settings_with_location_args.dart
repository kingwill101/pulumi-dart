// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_properties.dart';

/// {@template pulumi_portal_user_settings_with_location_args_doc}
/// The set of arguments for UserSettingsWithLocation.
/// {@endtemplate}
/// {@macro pulumi_portal_user_settings_with_location_args_doc}
class UserSettingsWithLocationArgs {
  /// The provider location
  final pulumi.Input<String> location;
  /// The cloud shell user settings properties.
  final pulumi.Input<UserProperties> properties;
  /// The name of the user settings
  final pulumi.Input<String>? userSettingsName;

  /// Creates a new [UserSettingsWithLocationArgs].
  /// [location] The provider location
  /// [properties] The cloud shell user settings properties.
  /// [userSettingsName] The name of the user settings
  UserSettingsWithLocationArgs({
    required this.location,
    required this.properties,
    this.userSettingsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'properties': pulumi.Input.mapInputValue<UserProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'userSettingsName': ?userSettingsName,
    };
  }

  factory UserSettingsWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsWithLocationArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      properties: pulumi.Input.fromValue(UserProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      userSettingsName: (() { final guardedValue = map['userSettingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

