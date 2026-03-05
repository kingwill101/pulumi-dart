// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOsProfileLinuxPatch {
  /// Specifies the assessment mode.
  final pulumi.Input<String> assessmentMode;
  /// Specifies the patch mode.
  final pulumi.Input<String> patchMode;

  /// Creates a new [GetOsProfileLinuxPatch].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  GetOsProfileLinuxPatch({
    required this.assessmentMode,
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': assessmentMode,
      'patchMode': patchMode,
    };
  }

  factory GetOsProfileLinuxPatch.fromMap(Map<String, dynamic> map) {
    return GetOsProfileLinuxPatch(
      assessmentMode: pulumi.Input.fromValue(map['assessmentMode'] as String),
      patchMode: pulumi.Input.fromValue(map['patchMode'] as String),
    );
  }
}

