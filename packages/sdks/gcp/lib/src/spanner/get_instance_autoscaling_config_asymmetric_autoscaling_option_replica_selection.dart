// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection {
  /// The location of the replica to apply asymmetric autoscaling options.
  final pulumi.Input<String> location;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection].
  /// [location] The location of the replica to apply asymmetric autoscaling options.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection(
      location: (map['location'] as String).input(),
    );
  }
}

