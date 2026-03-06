// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_privilege_resource.dart';

class MongoRoleDefinitionPrivilege {
  /// A list of actions that are allowed.
  final pulumi.Input<List<String>> actions;
  /// A `resource` block as defined below.
  final pulumi.Input<MongoRoleDefinitionPrivilegeResource> resource;

  /// Creates a new [MongoRoleDefinitionPrivilege].
  /// [actions] A list of actions that are allowed.
  /// [resource] A `resource` block as defined below.
  const MongoRoleDefinitionPrivilege({
    required this.actions,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'resource': pulumi.Input.mapInputValue<MongoRoleDefinitionPrivilegeResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory MongoRoleDefinitionPrivilege.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionPrivilege(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      resource: pulumi.Input.fromValue(MongoRoleDefinitionPrivilegeResource.fromMap((map['resource']! as Map).cast<String, dynamic>())),
    );
  }
}

