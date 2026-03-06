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
  const GetEnvgroupArgs({
    required this.envgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envgroupId': envgroupId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupArgs(
      envgroupId: pulumi.Input.fromValue(map['envgroupId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

