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
      adminPassword: pulumi.Input.fromValue(map['adminPassword'] as String),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      gmsa: (() { final guardedValue = map['gmsa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesClusterWindowsProfileGmsa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

