// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic.dart';
import 'access_level_custom.dart';

/// Input properties used for looking up and filtering AccessLevel resources.
class AccessLevelState {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelBasic>? basic;
  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelCustom>? custom;
  /// Description of the AccessLevel and its use. Does not affect behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the Access Level. The short_name component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final pulumi.Input<String>? name;
  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String>? parent;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;

  /// Creates a new [AccessLevelState].
  /// [basic] A set of predefined conditions for the access level and a combining function.
  /// [custom] Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// [description] Description of the AccessLevel and its use. Does not affect behavior.
  /// [name] Resource name for the Access Level. The short_name component must begin
  /// [parent] The AccessPolicy this AccessLevel lives in.
  /// [title] Human readable title. Must be unique within the Policy.
  AccessLevelState({
    this.basic,
    this.custom,
    this.description,
    this.name,
    this.parent,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<AccessLevelBasic, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<AccessLevelCustom, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'parent': ?parent,
      'title': ?title,
    };
  }

  factory AccessLevelState.fromMap(Map<String, dynamic> map) {
    return AccessLevelState(
      basic: map['basic'] == null ? null : (AccessLevelBasic.fromMap((map['basic']! as Map).cast<String, dynamic>())).input(),
      custom: map['custom'] == null ? null : (AccessLevelCustom.fromMap((map['custom']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

