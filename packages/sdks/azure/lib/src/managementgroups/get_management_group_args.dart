// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managementgroups_get_management_group_get_management_group_args_doc}
/// Arguments for getManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_managementgroups_get_management_group_get_management_group_args_doc}
class GetManagementGroupArgs {
  /// Specifies the display name of this Management Group.
  ///
  /// &gt; **NOTE** Whilst multiple management groups may share the same display name, when filtering, the provider expects a single management group to be found with this name.
  final pulumi.Input<String>? displayName;

  /// Specifies the name or UUID of this Management Group.
  final pulumi.Input<String>? name;

  /// Creates a new [GetManagementGroupArgs].
  /// [displayName] Specifies the display name of this Management Group.
  /// [name] Specifies the name or UUID of this Management Group.
  GetManagementGroupArgs({this.displayName, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'name': ?name};
  }

  factory GetManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupArgs(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
