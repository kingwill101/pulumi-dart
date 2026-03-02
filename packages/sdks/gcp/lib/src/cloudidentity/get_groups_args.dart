// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String> parent;

  /// Creates a new [GetGroupsArgs].
  /// [parent] The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  GetGroupsArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
    };
  }

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      parent: (map['parent'] as String).input(),
    );
  }
}

