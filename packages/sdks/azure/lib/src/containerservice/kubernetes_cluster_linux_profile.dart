// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_cluster_linux_profile_ssh_key.dart';

class KubernetesClusterLinuxProfile {
  /// The Admin Username for the Cluster. Changing this forces a new resource to be created.
  final String adminUsername;
  /// An `ssh_key` block as defined below.
  final KubernetesClusterLinuxProfileSshKey sshKey;

  /// Creates a new [KubernetesClusterLinuxProfile].
  /// [adminUsername] The Admin Username for the Cluster. Changing this forces a new resource to be created.
  /// [sshKey] An `ssh_key` block as defined below.
  KubernetesClusterLinuxProfile({
    required this.adminUsername,
    required this.sshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'sshKey': sshKey.toMap(),
    };
  }

  factory KubernetesClusterLinuxProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterLinuxProfile(
      adminUsername: map['adminUsername'] as String,
      sshKey: KubernetesClusterLinuxProfileSshKey.fromMap((map['sshKey'] as Map).cast<String, dynamic>()),
    );
  }
}

