// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_get_address_groups_get_address_groups_args_doc}
/// Arguments for getAddressGroups.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_get_address_groups_get_address_groups_args_doc}
class GetAddressGroupsArgs {
  /// The location of the Address Group.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The parent of the Address Group. Use `organizations/{organization_id}` for organization-level address groups or `projects/{project_id}` for project-level address groups. Conflicts with `project`.
  ///
  /// &gt; **Note:** Exactly one of `project` or `parent` should be specified. If neither is set, the project is inferred from the provider configuration.
  final pulumi.Input<String>? parent;
  /// The ID of the project. Conflicts with `parent`.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupsArgs].
  /// [location] The location of the Address Group.
  /// [parent] The parent of the Address Group. Use `organizations/{organization_id}` for organization-level address groups or `projects/{project_id}` for project-level address groups. Conflicts with `project`.
  /// [project] The ID of the project. Conflicts with `parent`.
  const GetAddressGroupsArgs({
    required this.location,
    this.parent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'parent': ?parent,
      'project': ?project,
    };
  }

  factory GetAddressGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
