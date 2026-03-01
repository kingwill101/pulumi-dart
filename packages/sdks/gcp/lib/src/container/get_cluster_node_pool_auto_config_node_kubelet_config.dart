// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolAutoConfigNodeKubeletConfig {
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String insecureKubeletReadonlyPortEnabled;

  /// Creates a new [GetClusterNodePoolAutoConfigNodeKubeletConfig].
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  GetClusterNodePoolAutoConfigNodeKubeletConfig({
    required this.insecureKubeletReadonlyPortEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
    };
  }

  factory GetClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigNodeKubeletConfig(
      insecureKubeletReadonlyPortEnabled: map['insecureKubeletReadonlyPortEnabled'] as String,
    );
  }
}

