// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'job_spec_patch.dart';

/// JobTemplateSpec describes the data a Job should have when created from a template
class JobTemplateSpecPatchBatchV1beta1 {
  /// Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<JobSpecPatch>? spec;

  /// Creates a new [JobTemplateSpecPatchBatchV1beta1].
  /// [metadata] Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  JobTemplateSpecPatchBatchV1beta1({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<JobSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory JobTemplateSpecPatchBatchV1beta1.fromMap(Map<String, dynamic> map) {
    return JobTemplateSpecPatchBatchV1beta1(
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (JobSpecPatch.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

