// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_template_spec.dart';

/// JobSpec describes how the job will look.
class JobSpec {
  /// Optional. Describes the execution that will be created when running a job.
  final pulumi.Input<ExecutionTemplateSpec>? template;

  /// Creates a new [JobSpec].
  /// [template] Optional. Describes the execution that will be created when running a job.
  JobSpec({this.template});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template':
          ?pulumi.Input.mapOptionalInputValue<
            ExecutionTemplateSpec,
            Map<String, dynamic>
          >(template, (value) => value.toMap()),
    };
  }

  factory JobSpec.fromMap(Map<String, dynamic> map) {
    return JobSpec(
      template: (() {
        final guardedValue = map['template'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecutionTemplateSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
