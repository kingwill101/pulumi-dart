// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterLinuxProfileSshKey {
  /// The Public SSH Key used to access the cluster.
  final String keyData;

  /// Creates a new [GetKubernetesClusterLinuxProfileSshKey].
  /// [keyData] The Public SSH Key used to access the cluster.
  GetKubernetesClusterLinuxProfileSshKey({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory GetKubernetesClusterLinuxProfileSshKey.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterLinuxProfileSshKey(
      keyData: map['keyData'] as String,
    );
  }
}

