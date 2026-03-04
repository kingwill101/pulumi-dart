// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_patch_schedule_args_doc}
/// Arguments for getPatchSchedule.
/// {@endtemplate}
/// {@macro pulumi_redis_get_patch_schedule_args_doc}
class GetPatchScheduleArgs {
  /// The name of the RedisPatchSchedule
  final pulumi.Input<String> default_;

  /// The name of the redis cache.
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPatchScheduleArgs].
  /// [default_] The name of the RedisPatchSchedule
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPatchScheduleArgs({
    required this.default_,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPatchScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchScheduleArgs(
      default_: pulumi.Input.fromValue(map['default'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
