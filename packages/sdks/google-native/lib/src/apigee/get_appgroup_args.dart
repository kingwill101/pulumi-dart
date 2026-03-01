// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_appgroup_args_doc}
/// Arguments for getAppgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_appgroup_args_doc}
class GetAppgroupArgs {
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetAppgroupArgs].
  /// [appgroupId] Required.
  /// [organizationId] Required.
  GetAppgroupArgs({
    required pulumi.Output<String> appgroupId,
    required pulumi.Output<String> organizationId,
  }) :
      appgroupId = pulumi.Input.asInput<String>(appgroupId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appgroupId': appgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetAppgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAppgroupArgs(
      appgroupId: pulumi.Output.create<String>(map['appgroupId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

