// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_tag_template_args_doc}
/// Arguments for getTagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_tag_template_args_doc}
class GetTagTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [GetTagTemplateArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tagTemplateId] Required.
  GetTagTemplateArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tagTemplateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tagTemplateId = pulumi.Input.asInput<String>(tagTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory GetTagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tagTemplateId: pulumi.Output.create<String>(map['tagTemplateId'] as String),
    );
  }
}

