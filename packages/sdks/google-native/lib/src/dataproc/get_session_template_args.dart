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
    required this.location,
    this.project,
    required this.sessionTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sessionTemplateId': sessionTemplateId,
    };
  }

  factory GetSessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionTemplateArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sessionTemplateId: (map['sessionTemplateId'] as String).input(),
    );
  }
}

