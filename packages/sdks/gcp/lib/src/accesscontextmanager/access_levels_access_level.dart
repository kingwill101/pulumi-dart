// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level_basic.dart';
import 'access_levels_access_level_custom.dart';

class AccessLevelsAccessLevel {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelsAccessLevelBasic>? basic;
  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelsAccessLevelCustom>? custom;
  /// Description of the AccessLevel and its use. Does not affect behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the Access Level. The shortName component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final pulumi.Input<String> name;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String> title;

  /// Creates a new [AccessLevelsAccessLevel].
  /// [basic] A set of predefined conditions for the access level and a combining function.
  /// [custom] Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// [description] Description of the AccessLevel and its use. Does not affect behavior.
  /// [name] Resource name for the Access Level. The shortName component must begin
  /// [title] Human readable title. Must be unique within the Policy.
  const AccessLevelsAccessLevel({
    this.basic,
    this.custom,
    this.description,
    required this.name,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<AccessLevelsAccessLevelBasic, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<AccessLevelsAccessLevelCustom, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'description': ?description,
      'name': name,
      'title': title,
    };
  }

  factory AccessLevelsAccessLevel.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevel(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelsAccessLevelBasic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelsAccessLevelCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
