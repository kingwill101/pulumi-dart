// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_properties.dart';

/// {@template pulumi_portal_user_settings_args_doc}
/// The set of arguments for UserSettings.
/// {@endtemplate}
/// {@macro pulumi_portal_user_settings_args_doc}
class UserSettingsArgs {
  /// The cloud shell user settings properties.
  final pulumi.Input<UserProperties> properties;
  /// The name of the user settings
  final pulumi.Input<String>? userSettingsName;

  /// Creates a new [UserSettingsArgs].
  /// [properties] The cloud shell user settings properties.
  /// [userSettingsName] The name of the user settings
  UserSettingsArgs({
    required pulumi.Output<UserProperties> properties,
    pulumi.Output<String>? userSettingsName,
  }) :
      properties = pulumi.Input.asInput<UserProperties>(properties),
      userSettingsName = pulumi.Input.asOptionalInput<String>(userSettingsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<UserProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'userSettingsName': ?userSettingsName,
    };
  }

  factory UserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return UserSettingsArgs(
      properties: pulumi.Output.create<UserProperties>(UserProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      userSettingsName: map['userSettingsName'] == null ? null : pulumi.Output.create<String>(map['userSettingsName'] as String),
    );
  }
}

