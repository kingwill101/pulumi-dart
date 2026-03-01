// ignore_for_file: unused_element, unnecessary_cast


/// ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
class ConfidentialNodesResponseContainerV1beta1 {
  /// Whether Confidential Nodes feature is enabled.
  final bool enabled;

  /// Creates a new [ConfidentialNodesResponseContainerV1beta1].
  /// [enabled] Whether Confidential Nodes feature is enabled.
  ConfidentialNodesResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ConfidentialNodesResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ConfidentialNodesResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}

