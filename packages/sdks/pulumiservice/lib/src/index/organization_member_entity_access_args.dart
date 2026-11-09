// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_member_entity_access_args_doc}
/// The set of arguments for OrganizationMemberEntityAccess.
/// {@endtemplate}
/// {@macro pulumi_index_organization_member_entity_access_args_doc}
class OrganizationMemberEntityAccessArgs {
  /// The name of the entity: `{project}/{stack}` for a stack, `{project}/{environment}` for an environment, or the account name for an Insights account.
  final pulumi.Input<String> entityName;
  /// The kind of entity to grant access to. One of `stack`, `environment` or `insightsAccount`.
  final pulumi.Input<String> entityType;
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The built-in permission set to grant, for example `stack-read`, `stack-write`, `stack-admin`, `environment-read`, `environment-open`, `environment-write`, `environment-admin`, `insights-account-read`, `insights-account-write` or `insights-account-admin`. Exactly one of `permission` and `permissionSetId` must be set.
  final pulumi.Input<String?>? permission;
  /// The ID of a custom permission set to grant. Exactly one of `permission` and `permissionSetId` must be set.
  final pulumi.Input<String?>? permissionSetId;
  /// The Pulumi Cloud username of the organization member.
  final pulumi.Input<String> username;

  /// Creates a new [OrganizationMemberEntityAccessArgs].
  /// [entityName] The name of the entity: `{project}/{stack}` for a stack, `{project}/{environment}` for an environment, or the account name for an Insights account.
  /// [entityType] The kind of entity to grant access to. One of `stack`, `environment` or `insightsAccount`.
  /// [organizationName] The Pulumi Cloud organization name.
  /// [permission] The built-in permission set to grant, for example `stack-read`, `stack-write`, `stack-admin`, `environment-read`, `environment-open`, `environment-write`, `environment-admin`, `insights-account-read`, `insights-account-write` or `insights-account-admin`. Exactly one of `permission` and `permissionSetId` must be set.
  /// [permissionSetId] The ID of a custom permission set to grant. Exactly one of `permission` and `permissionSetId` must be set.
  /// [username] The Pulumi Cloud username of the organization member.
  const OrganizationMemberEntityAccessArgs({
    required this.entityName,
    required this.entityType,
    required this.organizationName,
    this.permission,
    this.permissionSetId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': entityName,
      'entityType': entityType,
      'organizationName': organizationName,
      'permission': ?permission,
      'permissionSetId': ?permissionSetId,
      'username': username,
    };
  }

  factory OrganizationMemberEntityAccessArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationMemberEntityAccessArgs(
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionSetId: (() { final guardedValue = map['permissionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
