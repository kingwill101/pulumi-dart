// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettingsResponseOsconfigV1beta {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final pulumi.Input<List<String>> classifications;

  /// List of KBs to exclude from update.
  final pulumi.Input<List<String>> excludes;

  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final pulumi.Input<List<String>> exclusivePatches;

  /// Creates a new [WindowsUpdateSettingsResponseOsconfigV1beta].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  WindowsUpdateSettingsResponseOsconfigV1beta({
    required this.classifications,
    required this.excludes,
    required this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifications': classifications,
      'excludes': excludes,
      'exclusivePatches': exclusivePatches,
    };
  }

  factory WindowsUpdateSettingsResponseOsconfigV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsUpdateSettingsResponseOsconfigV1beta(
      classifications: pulumi.Input.fromValue(
        (map['classifications'] as List).cast<String>(),
      ),
      excludes: pulumi.Input.fromValue(
        (map['excludes'] as List).cast<String>(),
      ),
      exclusivePatches: pulumi.Input.fromValue(
        (map['exclusivePatches'] as List).cast<String>(),
      ),
    );
  }
}
