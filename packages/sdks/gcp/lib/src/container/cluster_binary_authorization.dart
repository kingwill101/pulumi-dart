// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBinaryAuthorization {
  /// Enable Binary Authorization for this cluster.
  final pulumi.Input<bool>? enabled;
  /// Mode of operation for Binary Authorization policy evaluation.
  final pulumi.Input<String>? evaluationMode;

  /// Creates a new [ClusterBinaryAuthorization].
  /// [enabled] Enable Binary Authorization for this cluster.
  /// [evaluationMode] Mode of operation for Binary Authorization policy evaluation.
  const ClusterBinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'evaluationMode': ?evaluationMode,
    };
  }

  factory ClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return ClusterBinaryAuthorization(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

