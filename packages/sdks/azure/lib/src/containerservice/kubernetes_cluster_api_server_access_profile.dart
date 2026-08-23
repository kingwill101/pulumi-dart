// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterApiServerAccessProfile {
  /// Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  final pulumi.Input<List<String>>? authorizedIpRanges;
  /// The ID of the Subnet where the API server endpoint is delegated to.
  final pulumi.Input<String>? subnetId;
  /// Whether to enable virtual network integration for the API Server. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkIntegrationEnabled;

  /// Creates a new [KubernetesClusterApiServerAccessProfile].
  /// [authorizedIpRanges] Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  /// [subnetId] The ID of the Subnet where the API server endpoint is delegated to.
  /// [virtualNetworkIntegrationEnabled] Whether to enable virtual network integration for the API Server. Defaults to `false`.
  const KubernetesClusterApiServerAccessProfile({
    this.authorizedIpRanges,
    this.subnetId,
    this.virtualNetworkIntegrationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedIpRanges': ?authorizedIpRanges,
      'subnetId': ?subnetId,
      'virtualNetworkIntegrationEnabled': ?virtualNetworkIntegrationEnabled,
    };
  }

  factory KubernetesClusterApiServerAccessProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterApiServerAccessProfile(
      authorizedIpRanges: (() { final guardedValue = map['authorizedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkIntegrationEnabled: (() { final guardedValue = map['virtualNetworkIntegrationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
