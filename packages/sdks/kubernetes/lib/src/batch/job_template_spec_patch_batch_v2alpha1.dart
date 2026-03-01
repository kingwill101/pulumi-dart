// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'job_spec_patch.dart';

/// JobTemplateSpec describes the data a Job should have when created from a template
class JobTemplateSpecPatchBatchV2alpha1 {
  /// Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMetaPatch? metadata;
  /// Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final JobSpecPatch? spec;

  /// Creates a new [JobTemplateSpecPatchBatchV2alpha1].
  /// [metadata] Standard object's metadata of the jobs created from this template. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Specification of the desired behavior of the job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  JobTemplateSpecPatchBatchV2alpha1({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory JobTemplateSpecPatchBatchV2alpha1.fromMap(Map<String, dynamic> map) {
    return JobTemplateSpecPatchBatchV2alpha1(
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : JobSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

