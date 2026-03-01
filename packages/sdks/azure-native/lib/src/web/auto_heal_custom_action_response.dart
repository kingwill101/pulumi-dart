// ignore_for_file: unused_element, unnecessary_cast


/// Custom action to be executed
/// when an auto heal rule is triggered.
class AutoHealCustomActionResponse {
  /// Executable to be run.
  final String? exe;
  /// Parameters for the executable.
  final String? parameters;

  /// Creates a new [AutoHealCustomActionResponse].
  /// [exe] Executable to be run.
  /// [parameters] Parameters for the executable.
  AutoHealCustomActionResponse({
    this.exe,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exe': ?exe,
      'parameters': ?parameters,
    };
  }

  factory AutoHealCustomActionResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealCustomActionResponse(
      exe: map['exe'] == null ? null : map['exe'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
    );
  }
}

