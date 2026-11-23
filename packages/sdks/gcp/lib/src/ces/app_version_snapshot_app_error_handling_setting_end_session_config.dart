// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig {
  /// (Output)
  /// Whether to escalate the session in EndSession. If session is escalated,
  /// metadata in EndSession will contain sessionEscalated = true.
  final pulumi.Input<bool?>? escalateSession;

  /// Creates a new [AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig].
  /// [escalateSession] (Output)
  const AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig({
    this.escalateSession,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'escalateSession': ?escalateSession,
    };
  }

  factory AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppErrorHandlingSettingEndSessionConfig(
      escalateSession: (() { final guardedValue = map['escalateSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
