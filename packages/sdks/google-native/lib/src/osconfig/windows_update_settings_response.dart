// ignore_for_file: unused_element, unnecessary_cast


/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettingsResponse {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final List<String> classifications;
  /// List of KBs to exclude from update.
  final List<String> excludes;
  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final List<String> exclusivePatches;

  /// Creates a new [WindowsUpdateSettingsResponse].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  WindowsUpdateSettingsResponse({
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

  factory WindowsUpdateSettingsResponse.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateSettingsResponse(
      classifications: (map['classifications'] as List).cast<String>(),
      excludes: (map['excludes'] as List).cast<String>(),
      exclusivePatches: (map['exclusivePatches'] as List).cast<String>(),
    );
  }
}

