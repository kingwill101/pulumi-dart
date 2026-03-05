// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationFeatureSettings {
  /// Set to false to use the legacy health check instead of the readiness
  /// and liveness checks.
  final pulumi.Input<bool> splitHealthChecks;

  /// Creates a new [ApplicationFeatureSettings].
  /// [splitHealthChecks] Set to false to use the legacy health check instead of the readiness
  ApplicationFeatureSettings({
    required this.splitHealthChecks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splitHealthChecks': splitHealthChecks,
    };
  }

  factory ApplicationFeatureSettings.fromMap(Map<String, dynamic> map) {
    return ApplicationFeatureSettings(
      splitHealthChecks: pulumi.Input.fromValue(map['splitHealthChecks'] as bool),
    );
  }
}

