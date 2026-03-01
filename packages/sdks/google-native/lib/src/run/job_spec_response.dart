// ignore_for_file: unused_element, unnecessary_cast

import 'execution_template_spec_response.dart';

/// JobSpec describes how the job will look.
class JobSpecResponse {
  /// Optional. Describes the execution that will be created when running a job.
  final ExecutionTemplateSpecResponse template;

  /// Creates a new [JobSpecResponse].
  /// [template] Optional. Describes the execution that will be created when running a job.
  JobSpecResponse({
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template': template.toMap(),
    };
  }

  factory JobSpecResponse.fromMap(Map<String, dynamic> map) {
    return JobSpecResponse(
      template: ExecutionTemplateSpecResponse.fromMap((map['template'] as Map).cast<String, dynamic>()),
    );
  }
}

