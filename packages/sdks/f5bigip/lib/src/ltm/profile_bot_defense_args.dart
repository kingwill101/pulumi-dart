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
  ProfileBotDefenseArgs({
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? description,
    pulumi.Output<String>? enforcementMode,
    required pulumi.Output<String> name,
    pulumi.Output<String>? template,
  }) :
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      description = pulumi.Input.asOptionalInput<String>(description),
      enforcementMode = pulumi.Input.asOptionalInput<String>(enforcementMode),
      name = pulumi.Input.asInput<String>(name),
      template = pulumi.Input.asOptionalInput<String>(template);

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
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enforcementMode: map['enforcementMode'] == null ? null : pulumi.Output.create<String>(map['enforcementMode'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      template: map['template'] == null ? null : pulumi.Output.create<String>(map['template'] as String),
    );
  }
}

