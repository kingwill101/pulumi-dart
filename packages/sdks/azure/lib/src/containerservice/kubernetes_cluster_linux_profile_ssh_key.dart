// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterLinuxProfileSshKey {
  /// The Public SSH Key used to access the cluster. Changing this forces a new resource to be created.
  final String keyData;

  /// Creates a new [KubernetesClusterLinuxProfileSshKey].
  /// [keyData] The Public SSH Key used to access the cluster. Changing this forces a new resource to be created.
  KubernetesClusterLinuxProfileSshKey({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory KubernetesClusterLinuxProfileSshKey.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterLinuxProfileSshKey(
      keyData: map['keyData'] as String,
    );
  }
}

