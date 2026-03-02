// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject {
  /// Bucket of the Cloud Storage object.
  final pulumi.Input<String> bucket;
  /// Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  final pulumi.Input<String> generationNumber;
  /// Name of the Cloud Storage object.
  final pulumi.Input<String> object;

  /// Creates a new [PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generationNumber] Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.
  /// [object] Name of the Cloud Storage object.
  PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject({
    required this.bucket,
    required this.generationNumber,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generationNumber': generationNumber,
      'object': object,
    };
  }

  factory PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject(
      bucket: (map['bucket'] as String).input(),
      generationNumber: (map['generationNumber'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

