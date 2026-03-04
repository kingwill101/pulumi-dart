// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_template_spec_response.dart';

/// JobSpec describes how the job will look.
class JobSpecResponse {
  /// Optional. Describes the execution that will be created when running a job.
  final pulumi.Input<ExecutionTemplateSpecResponse> template;

  /// Creates a new [JobSpecResponse].
  /// [template] Optional. Describes the execution that will be created when running a job.
  JobSpecResponse({required this.template});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template':
          pulumi.Input.mapInputValue<
            ExecutionTemplateSpecResponse,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
    };
  }

  factory JobSpecResponse.fromMap(Map<String, dynamic> map) {
    return JobSpecResponse(
      template: pulumi.Input.fromValue(
        ExecutionTemplateSpecResponse.fromMap(
          (map['template']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
