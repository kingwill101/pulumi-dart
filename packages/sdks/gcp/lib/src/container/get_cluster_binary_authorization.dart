// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBinaryAuthorization {
  /// Enable Binary Authorization for this cluster.
  final pulumi.Input<bool> enabled;
  /// Mode of operation for Binary Authorization policy evaluation.
  final pulumi.Input<String> evaluationMode;

  /// Creates a new [GetClusterBinaryAuthorization].
  /// [enabled] Enable Binary Authorization for this cluster.
  /// [evaluationMode] Mode of operation for Binary Authorization policy evaluation.
  const GetClusterBinaryAuthorization({
    required this.enabled,
    required this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'evaluationMode': evaluationMode,
    };
  }

  factory GetClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return GetClusterBinaryAuthorization(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      evaluationMode: pulumi.Input.fromValue(map['evaluationMode'] as String),
    );
  }
}
