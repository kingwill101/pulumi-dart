// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_get_version_dialogflow_v2beta1_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_get_version_dialogflow_v2beta1_args_doc}
class GetVersionDialogflowV2beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionDialogflowV2beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionDialogflowV2beta1Args({
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV2beta1Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

