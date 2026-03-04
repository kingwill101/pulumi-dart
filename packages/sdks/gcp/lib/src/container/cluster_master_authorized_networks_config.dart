// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_authorized_networks_config_cidr_block.dart';

class ClusterMasterAuthorizedNetworksConfig {
  /// External networks that can access the
  /// Kubernetes cluster master through HTTPS.
  final pulumi.Input<List<ClusterMasterAuthorizedNetworksConfigCidrBlock>>?
  cidrBlocks;

  /// Whether Kubernetes master is
  /// accessible via Google Compute Engine Public IPs.
  final pulumi.Input<bool>? gcpPublicCidrsAccessEnabled;

  /// Whether authorized networks is enforced on the private endpoint or not.
  final pulumi.Input<bool>? privateEndpointEnforcementEnabled;

  /// Creates a new [ClusterMasterAuthorizedNetworksConfig].
  /// [cidrBlocks] External networks that can access the
  /// [gcpPublicCidrsAccessEnabled] Whether Kubernetes master is
  /// [privateEndpointEnforcementEnabled] Whether authorized networks is enforced on the private endpoint or not.
  ClusterMasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    this.gcpPublicCidrsAccessEnabled,
    this.privateEndpointEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterMasterAuthorizedNetworksConfigCidrBlock>,
            List<Map<String, dynamic>>
          >(
            cidrBlocks,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterMasterAuthorizedNetworksConfigCidrBlock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'gcpPublicCidrsAccessEnabled': ?gcpPublicCidrsAccessEnabled,
      'privateEndpointEnforcementEnabled': ?privateEndpointEnforcementEnabled,
    };
  }

  factory ClusterMasterAuthorizedNetworksConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMasterAuthorizedNetworksConfig(
      cidrBlocks: (() {
        final guardedValue = map['cidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ClusterMasterAuthorizedNetworksConfigCidrBlock>(
            guardedValue,
            (value) => ClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      gcpPublicCidrsAccessEnabled: (() {
        final guardedValue = map['gcpPublicCidrsAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateEndpointEnforcementEnabled: (() {
        final guardedValue = map['privateEndpointEnforcementEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
