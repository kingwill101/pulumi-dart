// ignore_for_file: unused_element, unnecessary_cast


/// WorkloadPolicyConfig is the configuration of workload policy for autopilot clusters.
class WorkloadPolicyConfigResponseContainerV1beta1 {
  /// If true, workloads can use NET_ADMIN capability.
  final bool allowNetAdmin;

  /// Creates a new [WorkloadPolicyConfigResponseContainerV1beta1].
  /// [allowNetAdmin] If true, workloads can use NET_ADMIN capability.
  WorkloadPolicyConfigResponseContainerV1beta1({
    required this.allowNetAdmin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNetAdmin': allowNetAdmin,
    };
  }

  factory WorkloadPolicyConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadPolicyConfigResponseContainerV1beta1(
      allowNetAdmin: map['allowNetAdmin'] as bool,
    );
  }
}

