// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic.dart';
import 'access_level_custom.dart';

/// {@template pulumi_accesscontextmanager_access_level_access_level_args_doc}
/// The set of arguments for AccessLevel.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_access_level_access_level_args_doc}
class AccessLevelArgs {
  /// A set of predefined conditions for the access level and a combining function.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelBasic?>? basic;
  /// Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// See CEL spec at: https://github.com/google/cel-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelCustom?>? custom;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the AccessLevel and its use. Does not affect behavior.
  final pulumi.Input<String?>? description;
  /// Resource name for the Access Level. The shortName component must begin
  /// with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  final pulumi.Input<String?>? name;
  /// The AccessPolicy this AccessLevel lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String> title;

  /// Creates a new [AccessLevelArgs].
  /// [basic] A set of predefined conditions for the access level and a combining function.
  /// [custom] Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the AccessLevel and its use. Does not affect behavior.
  /// [name] Resource name for the Access Level. The shortName component must begin
  /// [parent] The AccessPolicy this AccessLevel lives in.
  /// [title] Human readable title. Must be unique within the Policy.
  const AccessLevelArgs({
    this.basic,
    this.custom,
    this.deletionPolicy,
    this.description,
    this.name,
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<AccessLevelBasic, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<AccessLevelCustom, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'parent': parent,
      'title': title,
    };
  }

  factory AccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return AccessLevelArgs(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelBasic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessLevelCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
