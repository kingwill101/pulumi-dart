// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsBodyScanning {
  /// Specify the inspection mode as either `deep` or `shallow`.
  /// Available values: "deep", "shallow".
  final pulumi.Input<String?>? inspectionMode;

  /// Creates a new [TeamsAccountSettingsBodyScanning].
  /// [inspectionMode] Specify the inspection mode as either `deep` or `shallow`.
  const TeamsAccountSettingsBodyScanning({
    this.inspectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectionMode': ?inspectionMode,
    };
  }

  factory TeamsAccountSettingsBodyScanning.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsBodyScanning(
      inspectionMode: (() { final guardedValue = map['inspectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
