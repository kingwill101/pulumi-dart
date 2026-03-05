// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOsProfileWindowPatch {
  /// Specifies the assessment mode.
  final pulumi.Input<String> assessmentMode;
  /// Specifies the patch mode.
  final pulumi.Input<String> patchMode;

  /// Creates a new [GetOsProfileWindowPatch].
  /// [assessmentMode] Specifies the assessment mode.
  /// [patchMode] Specifies the patch mode.
  GetOsProfileWindowPatch({
    required this.assessmentMode,
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': assessmentMode,
      'patchMode': patchMode,
    };
  }

  factory GetOsProfileWindowPatch.fromMap(Map<String, dynamic> map) {
    return GetOsProfileWindowPatch(
      assessmentMode: pulumi.Input.fromValue(map['assessmentMode'] as String),
      patchMode: pulumi.Input.fromValue(map['patchMode'] as String),
    );
  }
}

