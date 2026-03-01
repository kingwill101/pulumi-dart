// ignore_for_file: unused_element, unnecessary_cast


/// Configuration options for the Cloud Run feature.
class CloudRunConfigResponseContainerV1beta1 {
  /// Whether Cloud Run addon is enabled for this cluster.
  final bool disabled;
  /// Which load balancer type is installed for Cloud Run.
  final String loadBalancerType;

  /// Creates a new [CloudRunConfigResponseContainerV1beta1].
  /// [disabled] Whether Cloud Run addon is enabled for this cluster.
  /// [loadBalancerType] Which load balancer type is installed for Cloud Run.
  CloudRunConfigResponseContainerV1beta1({
    required this.disabled,
    required this.loadBalancerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'loadBalancerType': loadBalancerType,
    };
  }

  factory CloudRunConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigResponseContainerV1beta1(
      disabled: map['disabled'] as bool,
      loadBalancerType: map['loadBalancerType'] as String,
    );
  }
}

