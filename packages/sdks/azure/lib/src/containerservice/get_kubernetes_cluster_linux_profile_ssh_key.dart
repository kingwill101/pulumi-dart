// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterLinuxProfileSshKey {
  /// The Public SSH Key used to access the cluster.
  final pulumi.Input<String> keyData;

  /// Creates a new [GetKubernetesClusterLinuxProfileSshKey].
  /// [keyData] The Public SSH Key used to access the cluster.
  const GetKubernetesClusterLinuxProfileSshKey({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory GetKubernetesClusterLinuxProfileSshKey.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterLinuxProfileSshKey(
      keyData: pulumi.Input.fromValue(map['keyData'] as String),
    );
  }
}
