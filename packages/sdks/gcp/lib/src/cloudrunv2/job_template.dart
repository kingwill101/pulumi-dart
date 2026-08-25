// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template.dart';

class JobTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter,
  /// or break down billing charges by team, component, environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or
  /// https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Specifies the maximum desired number of tasks the execution should run at given time. Must be &lt;= taskCount. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
  final pulumi.Input<int?>? parallelism;
  /// Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  final pulumi.Input<int?>? taskCount;
  /// Describes the task(s) that will be created when executing an execution
  /// Structure is documented below.
  final pulumi.Input<JobTemplateTemplate> template;

  /// Creates a new [JobTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter,
  /// [parallelism] Specifies the maximum desired number of tasks the execution should run at given time. Must be &lt;= taskCount. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
  /// [taskCount] Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// [template] Describes the task(s) that will be created when executing an execution
  const JobTemplate({
    this.annotations,
    this.labels,
    this.parallelism,
    this.taskCount,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'labels': ?labels,
      'parallelism': ?parallelism,
      'taskCount': ?taskCount,
      'template': pulumi.Input.mapInputValue<JobTemplateTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
    };
  }

  factory JobTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplate(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      taskCount: (() { final guardedValue = map['taskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      template: pulumi.Input.fromValue(JobTemplateTemplate.fromMap((map['template']! as Map).cast<String, dynamic>())),
    );
  }
}
