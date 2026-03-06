// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolAutoConfigNodeKubeletConfig {
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String> insecureKubeletReadonlyPortEnabled;

  /// Creates a new [GetClusterNodePoolAutoConfigNodeKubeletConfig].
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  const GetClusterNodePoolAutoConfigNodeKubeletConfig({
    required this.insecureKubeletReadonlyPortEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
    };
  }

  factory GetClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigNodeKubeletConfig(
      insecureKubeletReadonlyPortEnabled: pulumi.Input.fromValue(map['insecureKubeletReadonlyPortEnabled'] as String),
    );
  }
}

