// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterRdmaSharedDevicePlugin {
  final bool enabled;

  /// Creates a new [GetKubernetesClusterRdmaSharedDevicePlugin].
  /// [enabled] Required.
  GetKubernetesClusterRdmaSharedDevicePlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterRdmaSharedDevicePlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterRdmaSharedDevicePlugin(
      enabled: map['enabled'] as bool,
    );
  }
}

