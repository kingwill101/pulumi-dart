// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_management_get_group_get_group_args_doc}
class GetGroupArgs {
  /// Specifies the display name of this Management Group.
  ///
  /// > **NOTE** Whilst multiple management groups may share the same display name, when filtering, the provider expects a single management group to be found with this name.
  final pulumi.Input<String>? displayName;
  /// Specifies the name or UUID of this Management Group.
  final pulumi.Input<String>? name;

  /// Creates a new [GetGroupArgs].
  /// [displayName] Specifies the display name of this Management Group.
  /// [name] Specifies the name or UUID of this Management Group.
  GetGroupArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

