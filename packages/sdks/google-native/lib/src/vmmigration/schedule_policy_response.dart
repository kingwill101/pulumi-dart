// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A policy for scheduling replications.
class SchedulePolicyResponse {
  /// The idle duration between replication stages.
  final pulumi.Input<String> idleDuration;
  /// A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  final pulumi.Input<bool> skipOsAdaptation;

  /// Creates a new [SchedulePolicyResponse].
  /// [idleDuration] The idle duration between replication stages.
  /// [skipOsAdaptation] A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a process where the VM's operating system undergoes changes and adaptations to fully function on Compute Engine.
  SchedulePolicyResponse({
    required this.idleDuration,
    required this.skipOsAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleDuration': idleDuration,
      'skipOsAdaptation': skipOsAdaptation,
    };
  }

  factory SchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SchedulePolicyResponse(
      idleDuration: (map['idleDuration'] as String).input(),
      skipOsAdaptation: (map['skipOsAdaptation'] as bool).input(),
    );
  }
}

