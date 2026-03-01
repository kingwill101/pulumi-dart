// ignore_for_file: unused_element, unnecessary_cast

import 'discovered_containeranalysis_v1beta1.dart';

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Analysis status for the discovered resource.
  final DiscoveredContaineranalysisV1beta1 discovered;

  /// Creates a new [GrafeasV1beta1DiscoveryDetails].
  /// [discovered] Analysis status for the discovered resource.
  GrafeasV1beta1DiscoveryDetails({
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discovered': discovered.toMap(),
    };
  }

  factory GrafeasV1beta1DiscoveryDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DiscoveryDetails(
      discovered: DiscoveredContaineranalysisV1beta1.fromMap((map['discovered'] as Map).cast<String, dynamic>()),
    );
  }
}

