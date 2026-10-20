// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterNfsCsiPlugin {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterNfsCsiPlugin].
  /// [enabled] Required.
  const GetKubernetesClusterNfsCsiPlugin({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterNfsCsiPlugin.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNfsCsiPlugin(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
