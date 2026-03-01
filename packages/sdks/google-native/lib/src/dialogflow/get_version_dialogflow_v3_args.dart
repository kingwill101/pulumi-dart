// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_version_dialogflow_v3_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_version_dialogflow_v3_args_doc}
class GetVersionDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionDialogflowV3Args].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionDialogflowV3Args({
    required pulumi.Output<String> agentId,
    required pulumi.Output<String> flowId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> versionId,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      flowId = pulumi.Input.asInput<String>(flowId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'location': location,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV3Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      flowId: pulumi.Output.create<String>(map['flowId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

