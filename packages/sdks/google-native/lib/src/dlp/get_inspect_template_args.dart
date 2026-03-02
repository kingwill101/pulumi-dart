// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_inspect_template_args_doc}
/// Arguments for getInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_inspect_template_args_doc}
class GetInspectTemplateArgs {
  final pulumi.Input<String> inspectTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInspectTemplateArgs].
  /// [inspectTemplateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetInspectTemplateArgs({
    required this.inspectTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateId': inspectTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInspectTemplateArgs(
      inspectTemplateId: (map['inspectTemplateId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

