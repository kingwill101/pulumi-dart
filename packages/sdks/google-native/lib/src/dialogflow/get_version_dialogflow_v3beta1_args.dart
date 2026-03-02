// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_version_dialogflow_v3beta1_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_version_dialogflow_v3beta1_args_doc}
class GetVersionDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionDialogflowV3beta1Args({
    required this.agentId,
    required this.flowId,
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'location': location,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV3beta1Args(
      agentId: (map['agentId'] as String).input(),
      flowId: (map['flowId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

