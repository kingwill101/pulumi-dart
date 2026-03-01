// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_task_template.dart';

/// ExecutionTemplate describes the data an execution should have when created from a template.
class GoogleCloudRunV2ExecutionTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String>? annotations;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
  final Map<String, String>? labels;
  /// Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
  final int? parallelism;
  /// Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  final int? taskCount;
  /// Describes the task(s) that will be created when executing an execution.
  final GoogleCloudRunV2TaskTemplate template;

  /// Creates a new [GoogleCloudRunV2ExecutionTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 ExecutionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 ExecutionTemplate.
  /// [parallelism] Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed remaining, i.e. when the work left to do is less than max parallelism.
  /// [taskCount] Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  /// [template] Describes the task(s) that will be created when executing an execution.
  GoogleCloudRunV2ExecutionTemplate({
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
      'template': template.toMap(),
    };
  }

  factory GoogleCloudRunV2ExecutionTemplate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2ExecutionTemplate(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      taskCount: map['taskCount'] == null ? null : map['taskCount'] as int,
      template: GoogleCloudRunV2TaskTemplate.fromMap((map['template'] as Map).cast<String, dynamic>()),
    );
  }
}

