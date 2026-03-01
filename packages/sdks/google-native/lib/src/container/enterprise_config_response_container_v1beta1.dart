// ignore_for_file: unused_element, unnecessary_cast


/// EnterpriseConfig is the cluster enterprise configuration.
class EnterpriseConfigResponseContainerV1beta1 {
  /// [Output only] cluster_tier specifies the premium tier of the cluster.
  final String clusterTier;

  /// Creates a new [EnterpriseConfigResponseContainerV1beta1].
  /// [clusterTier] [Output only] cluster_tier specifies the premium tier of the cluster.
  EnterpriseConfigResponseContainerV1beta1({
    required this.clusterTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTier': clusterTier,
    };
  }

  factory EnterpriseConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigResponseContainerV1beta1(
      clusterTier: map['clusterTier'] as String,
    );
  }
}

