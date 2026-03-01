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
    required pulumi.Output<String> location,
    required pulumi.Output<UserProperties> properties,
    pulumi.Output<String>? userSettingsName,
  }) :
      location = pulumi.Input.asInput<String>(location),
      properties = pulumi.Input.asInput<UserProperties>(properties),
      userSettingsName = pulumi.Input.asOptionalInput<String>(userSettingsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'properties': pulumi.Input.mapInputValue<UserProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'userSettingsName': ?userSettingsName,
    };
  }

  factory UserSettingsWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsWithLocationArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<UserProperties>(UserProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      userSettingsName: map['userSettingsName'] == null ? null : pulumi.Output.create<String>(map['userSettingsName'] as String),
    );
  }
}

