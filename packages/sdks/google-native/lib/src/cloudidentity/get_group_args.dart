// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_get_group_args_doc}
class GetGroupArgs {
  final pulumi.Input<String> groupId;

  /// Creates a new [GetGroupArgs].
  /// [groupId] Required.
  GetGroupArgs({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
    );
  }
}

