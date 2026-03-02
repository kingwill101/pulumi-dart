// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_user_settings_args_doc}
/// Arguments for getUserSettings.
/// {@endtemplate}
/// {@macro pulumi_portal_get_user_settings_args_doc}
class GetUserSettingsArgs {
  /// The name of the user settings
  final pulumi.Input<String> userSettingsName;

  /// Creates a new [GetUserSettingsArgs].
  /// [userSettingsName] The name of the user settings
  GetUserSettingsArgs({
    required this.userSettingsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userSettingsName': userSettingsName,
    };
  }

  factory GetUserSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSettingsArgs(
      userSettingsName: (map['userSettingsName'] as String).input(),
    );
  }
}

