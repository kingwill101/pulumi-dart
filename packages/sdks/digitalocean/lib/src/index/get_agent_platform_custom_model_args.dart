// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_custom_model_get_agent_platform_custom_model_args_doc}
/// Arguments for getAgentPlatformCustomModel.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_custom_model_get_agent_platform_custom_model_args_doc}
class GetAgentPlatformCustomModelArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetAgentPlatformCustomModelArgs].
  /// [uuid] Required.
  const GetAgentPlatformCustomModelArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetAgentPlatformCustomModelArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformCustomModelArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
