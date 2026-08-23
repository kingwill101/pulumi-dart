// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_linux_profile_ssh_key.dart';

class KubernetesClusterLinuxProfile {
  /// The Admin Username for the Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminUsername;
  /// An `sshKey` block as defined below.
  final pulumi.Input<KubernetesClusterLinuxProfileSshKey> sshKey;

  /// Creates a new [KubernetesClusterLinuxProfile].
  /// [adminUsername] The Admin Username for the Cluster. Changing this forces a new resource to be created.
  /// [sshKey] An `sshKey` block as defined below.
  const KubernetesClusterLinuxProfile({
    required this.adminUsername,
    required this.sshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'sshKey': pulumi.Input.mapInputValue<KubernetesClusterLinuxProfileSshKey, Map<String, dynamic>>(sshKey, (value) => value.toMap()),
    };
  }

  factory KubernetesClusterLinuxProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterLinuxProfile(
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      sshKey: pulumi.Input.fromValue(KubernetesClusterLinuxProfileSshKey.fromMap((map['sshKey']! as Map).cast<String, dynamic>())),
    );
  }
}
