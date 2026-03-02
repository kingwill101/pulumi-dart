// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_windows_profile_gmsa.dart';

class KubernetesClusterWindowsProfile {
  /// The Admin Password for Windows VMs. Length must be between 14 and 123 characters.
  final pulumi.Input<String> adminPassword;
  /// The Admin Username for Windows VMs. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminUsername;
  /// A `gmsa` block as defined below.
  final pulumi.Input<KubernetesClusterWindowsProfileGmsa>? gmsa;
  /// Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is `Windows_Server`.
  final pulumi.Input<String>? license;

  /// Creates a new [KubernetesClusterWindowsProfile].
  /// [adminPassword] The Admin Password for Windows VMs. Length must be between 14 and 123 characters.
  /// [adminUsername] The Admin Username for Windows VMs. Changing this forces a new resource to be created.
  /// [gmsa] A `gmsa` block as defined below.
  /// [license] Specifies the type of on-premise license which should be used for Node Pool Windows Virtual Machine. At this time the only possible value is `Windows_Server`.
  KubernetesClusterWindowsProfile({
    required this.adminPassword,
    required this.adminUsername,
    this.gmsa,
    this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'adminUsername': adminUsername,
      'gmsa': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterWindowsProfileGmsa, Map<String, dynamic>>(gmsa, (value) => value.toMap()),
      'license': ?license,
    };
  }

  factory KubernetesClusterWindowsProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWindowsProfile(
      adminPassword: (map['adminPassword'] as String).input(),
      adminUsername: (map['adminUsername'] as String).input(),
      gmsa: map['gmsa'] == null ? null : (KubernetesClusterWindowsProfileGmsa.fromMap((map['gmsa'] as Map).cast<String, dynamic>())).input(),
      license: map['license'] == null ? null : (map['license'] as String).input(),
    );
  }
}

