// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_envgroup_args_doc}
/// Arguments for getEnvgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_envgroup_args_doc}
class GetEnvgroupArgs {
  final pulumi.Input<String> envgroupId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvgroupArgs].
  /// [envgroupId] Required.
  /// [organizationId] Required.
  GetEnvgroupArgs({
    required pulumi.Output<String> envgroupId,
    required pulumi.Output<String> organizationId,
  }) :
      envgroupId = pulumi.Input.asInput<String>(envgroupId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': envgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupArgs(
      envgroupId: pulumi.Output.create<String>(map['envgroupId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

