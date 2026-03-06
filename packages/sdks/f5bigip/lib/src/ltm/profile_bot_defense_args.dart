// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_bot_defense_profile_bot_defense_args_doc}
/// The set of arguments for ProfileBotDefense.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_bot_defense_profile_bot_defense_args_doc}
class ProfileBotDefenseArgs {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile
  final pulumi.Input<String>? defaultsFrom;
  /// User defined description for Bot Defense profile
  final pulumi.Input<String>? description;
  /// Select the enforcement mode, possible values are `transparent` and `blocking`.
  final pulumi.Input<String>? enforcementMode;
  /// Name of the Bot Defense profile
  final pulumi.Input<String> name;
  /// Profile templates specify Mitigation and Verification Settings default values. possible ptions `balanced`,`relaxed` and `strict`
  final pulumi.Input<String>? template;

  /// Creates a new [ProfileBotDefenseArgs].
  /// [defaultsFrom] Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile
  /// [description] User defined description for Bot Defense profile
  /// [enforcementMode] Select the enforcement mode, possible values are `transparent` and `blocking`.
  /// [name] Name of the Bot Defense profile
  /// [template] Profile templates specify Mitigation and Verification Settings default values. possible ptions `balanced`,`relaxed` and `strict`
  const ProfileBotDefenseArgs({
    this.defaultsFrom,
    this.description,
    this.enforcementMode,
    required this.name,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'enforcementMode': ?enforcementMode,
      'name': name,
      'template': ?template,
    };
  }

  factory ProfileBotDefenseArgs.fromMap(Map<String, dynamic> map) {
    return ProfileBotDefenseArgs(
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

