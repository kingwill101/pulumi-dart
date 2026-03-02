// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterAciConnectorLinux {
  /// The subnet name for the virtual nodes to run.
  final pulumi.Input<String> subnetName;

  /// Creates a new [GetKubernetesClusterAciConnectorLinux].
  /// [subnetName] The subnet name for the virtual nodes to run.
  GetKubernetesClusterAciConnectorLinux({
    required this.subnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetName': subnetName,
    };
  }

  factory GetKubernetesClusterAciConnectorLinux.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAciConnectorLinux(
      subnetName: (map['subnetName'] as String).input(),
    );
  }
}

