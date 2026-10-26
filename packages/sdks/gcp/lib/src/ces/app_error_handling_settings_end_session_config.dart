// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppErrorHandlingSettingsEndSessionConfig {
  /// Whether to escalate the session in EndSession. If session is escalated,
  /// metadata in EndSession will contain sessionEscalated = true.
  final pulumi.Input<bool?>? escalateSession;

  /// Creates a new [AppErrorHandlingSettingsEndSessionConfig].
  /// [escalateSession] Whether to escalate the session in EndSession. If session is escalated,
  const AppErrorHandlingSettingsEndSessionConfig({
    this.escalateSession,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'escalateSession': ?escalateSession,
    };
  }

  factory AppErrorHandlingSettingsEndSessionConfig.fromMap(Map<String, dynamic> map) {
    return AppErrorHandlingSettingsEndSessionConfig(
      escalateSession: (() { final guardedValue = map['escalateSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
