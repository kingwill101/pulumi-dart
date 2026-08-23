// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_master_authorized_networks_config_cidr_block.dart';

class GetClusterMasterAuthorizedNetworksConfig {
  /// External networks that can access the Kubernetes cluster master through HTTPS.
  final pulumi.Input<List<GetClusterMasterAuthorizedNetworksConfigCidrBlock>> cidrBlocks;
  /// Whether Kubernetes master is accessible via Google Compute Engine Public IPs.
  final pulumi.Input<bool> gcpPublicCidrsAccessEnabled;
  /// Whether authorized networks is enforced on the private endpoint or not. Defaults to false.
  final pulumi.Input<bool> privateEndpointEnforcementEnabled;

  /// Creates a new [GetClusterMasterAuthorizedNetworksConfig].
  /// [cidrBlocks] External networks that can access the Kubernetes cluster master through HTTPS.
  /// [gcpPublicCidrsAccessEnabled] Whether Kubernetes master is accessible via Google Compute Engine Public IPs.
  /// [privateEndpointEnforcementEnabled] Whether authorized networks is enforced on the private endpoint or not. Defaults to false.
  const GetClusterMasterAuthorizedNetworksConfig({
    required this.cidrBlocks,
    required this.gcpPublicCidrsAccessEnabled,
    required this.privateEndpointEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': pulumi.Input.mapInputValue<List<GetClusterMasterAuthorizedNetworksConfigCidrBlock>, List<Map<String, dynamic>>>(cidrBlocks, (value) => pulumi.Input.encodeList<GetClusterMasterAuthorizedNetworksConfigCidrBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpPublicCidrsAccessEnabled': gcpPublicCidrsAccessEnabled,
      'privateEndpointEnforcementEnabled': privateEndpointEnforcementEnabled,
    };
  }

  factory GetClusterMasterAuthorizedNetworksConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMasterAuthorizedNetworksConfig(
      cidrBlocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMasterAuthorizedNetworksConfigCidrBlock>(map['cidrBlocks']!, (value) => GetClusterMasterAuthorizedNetworksConfigCidrBlock.fromMap((value as Map).cast<String, dynamic>()))),
      gcpPublicCidrsAccessEnabled: pulumi.Input.fromValue(map['gcpPublicCidrsAccessEnabled'] as bool),
      privateEndpointEnforcementEnabled: pulumi.Input.fromValue(map['privateEndpointEnforcementEnabled'] as bool),
    );
  }
}
