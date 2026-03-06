// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_user_settings_with_location_args_doc}
/// Arguments for getUserSettingsWithLocation.
/// {@endtemplate}
/// {@macro pulumi_portal_get_user_settings_with_location_args_doc}
class GetUserSettingsWithLocationArgs {
  /// The provider location
  final pulumi.Input<String> location;
  /// The name of the user settings
  final pulumi.Input<String> userSettingsName;

  /// Creates a new [GetUserSettingsWithLocationArgs].
  /// [location] The provider location
  /// [userSettingsName] The name of the user settings
  const GetUserSettingsWithLocationArgs({
    required this.location,
    required this.userSettingsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'userSettingsName': userSettingsName,
    };
  }

  factory GetUserSettingsWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSettingsWithLocationArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      userSettingsName: pulumi.Input.fromValue(map['userSettingsName'] as String),
    );
  }
}

