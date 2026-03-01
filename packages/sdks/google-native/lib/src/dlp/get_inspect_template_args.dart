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
    required pulumi.Output<String> inspectTemplateId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      inspectTemplateId = pulumi.Input.asInput<String>(inspectTemplateId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateId': inspectTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInspectTemplateArgs(
      inspectTemplateId: pulumi.Output.create<String>(map['inspectTemplateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

