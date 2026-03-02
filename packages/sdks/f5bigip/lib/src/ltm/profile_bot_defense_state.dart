// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileBotDefense resources.
class ProfileBotDefenseState {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile
  final pulumi.Input<String>? defaultsFrom;
  /// User defined description for Bot Defense profile
  final pulumi.Input<String>? description;
  /// Select the enforcement mode, possible values are `transparent` and `blocking`.
  final pulumi.Input<String>? enforcementMode;
  /// Name of the Bot Defense profile
  final pulumi.Input<String>? name;
  /// Profile templates specify Mitigation and Verification Settings default values. possible ptions `balanced`,`relaxed` and `strict`
  final pulumi.Input<String>? template;

  /// Creates a new [ProfileBotDefenseState].
  /// [defaultsFrom] Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile
  /// [description] User defined description for Bot Defense profile
  /// [enforcementMode] Select the enforcement mode, possible values are `transparent` and `blocking`.
  /// [name] Name of the Bot Defense profile
  /// [template] Profile templates specify Mitigation and Verification Settings default values. possible ptions `balanced`,`relaxed` and `strict`
  ProfileBotDefenseState({
    this.defaultsFrom,
    this.description,
    this.enforcementMode,
    this.name,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'enforcementMode': ?enforcementMode,
      'name': ?name,
      'template': ?template,
    };
  }

  factory ProfileBotDefenseState.fromMap(Map<String, dynamic> map) {
    return ProfileBotDefenseState(
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enforcementMode: map['enforcementMode'] == null ? null : (map['enforcementMode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      template: map['template'] == null ? null : (map['template'] as String).input(),
    );
  }
}

