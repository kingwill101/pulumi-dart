// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_session_template_args_doc}
/// Arguments for getSessionTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_session_template_args_doc}
class GetSessionTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionTemplateId;

  /// Creates a new [GetSessionTemplateArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [sessionTemplateId] Required.
  GetSessionTemplateArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionTemplateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionTemplateId = pulumi.Input.asInput<String>(sessionTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sessionTemplateId': sessionTemplateId,
    };
  }

  factory GetSessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionTemplateArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionTemplateId: pulumi.Output.create<String>(map['sessionTemplateId'] as String),
    );
  }
}

