// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_linux_profile_ssh_key.dart';

class GetKubernetesClusterLinuxProfile {
  /// The username associated with the administrator account of the Windows VMs.
  final String adminUsername;
  /// An `ssh_key` block as defined below.
  final List<GetKubernetesClusterLinuxProfileSshKey> sshKeys;

  /// Creates a new [GetKubernetesClusterLinuxProfile].
  /// [adminUsername] The username associated with the administrator account of the Windows VMs.
  /// [sshKeys] An `ssh_key` block as defined below.
  GetKubernetesClusterLinuxProfile({
    required this.adminUsername,
    required this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'sshKeys': pulumi.Input.encodeList<GetKubernetesClusterLinuxProfileSshKey, Map<String, dynamic>>(sshKeys, (value) => value.toMap()),
    };
  }

  factory GetKubernetesClusterLinuxProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterLinuxProfile(
      adminUsername: map['adminUsername'] as String,
      sshKeys: pulumi.Input.decodeList<GetKubernetesClusterLinuxProfileSshKey>(map['sshKeys'], (value) => GetKubernetesClusterLinuxProfileSshKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

