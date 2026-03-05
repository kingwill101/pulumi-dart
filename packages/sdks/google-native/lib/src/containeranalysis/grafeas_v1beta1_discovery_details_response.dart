// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_response_containeranalysis_v1beta1.dart';

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetailsResponse {
  /// Analysis status for the discovered resource.
  final pulumi.Input<DiscoveredResponseContaineranalysisV1beta1> discovered;

  /// Creates a new [GrafeasV1beta1DiscoveryDetailsResponse].
  /// [discovered] Analysis status for the discovered resource.
  GrafeasV1beta1DiscoveryDetailsResponse({
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discovered': pulumi.Input.mapInputValue<DiscoveredResponseContaineranalysisV1beta1, Map<String, dynamic>>(discovered, (value) => value.toMap()),
    };
  }

  factory GrafeasV1beta1DiscoveryDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DiscoveryDetailsResponse(
      discovered: pulumi.Input.fromValue(DiscoveredResponseContaineranalysisV1beta1.fromMap((map['discovered']! as Map).cast<String, dynamic>())),
    );
  }
}

