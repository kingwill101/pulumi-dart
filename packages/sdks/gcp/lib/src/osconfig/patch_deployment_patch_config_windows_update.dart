// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentPatchConfigWindowsUpdate {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// Each value may be one of: `CRITICAL`, `SECURITY`, `DEFINITION`, `DRIVER`, `FEATURE_PACK`, `SERVICE_PACK`, `TOOL`, `UPDATE_ROLLUP`, `UPDATE`.
  final pulumi.Input<List<String>>? classifications;

  /// List of KBs to exclude from update.
  final pulumi.Input<List<String>>? excludes;

  /// An exclusive list of kbs to be updated. These are the only patches that will be updated.
  /// This field must not be used with other patch configurations.
  final pulumi.Input<List<String>>? exclusivePatches;

  /// Creates a new [PatchDeploymentPatchConfigWindowsUpdate].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated.
  PatchDeploymentPatchConfigWindowsUpdate({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifications': ?classifications,
      'excludes': ?excludes,
      'exclusivePatches': ?exclusivePatches,
    };
  }

  factory PatchDeploymentPatchConfigWindowsUpdate.fromMap(
    Map<String, dynamic> map,
  ) {
    return PatchDeploymentPatchConfigWindowsUpdate(
      classifications: (() {
        final guardedValue = map['classifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludes: (() {
        final guardedValue = map['excludes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      exclusivePatches: (() {
        final guardedValue = map['exclusivePatches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
