// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_connection_info_endpoint_info.dart';

class BlockchainNodesConnectionInfo {
  /// (Output)
  /// The endpoint information through which to interact with a blockchain node.
  /// Structure is documented below.
  final List<BlockchainNodesConnectionInfoEndpointInfo>? endpointInfos;
  /// (Output)
  /// A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final String? serviceAttachment;

  /// Creates a new [BlockchainNodesConnectionInfo].
  /// [endpointInfos] (Output)
  /// [serviceAttachment] (Output)
  BlockchainNodesConnectionInfo({
    this.endpointInfos,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInfos': ?endpointInfos == null ? null : pulumi.Input.encodeList<BlockchainNodesConnectionInfoEndpointInfo, Map<String, dynamic>>(endpointInfos!, (value) => value.toMap()),
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory BlockchainNodesConnectionInfo.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesConnectionInfo(
      endpointInfos: map['endpointInfos'] == null ? null : pulumi.Input.decodeList<BlockchainNodesConnectionInfoEndpointInfo>(map['endpointInfos'], (value) => BlockchainNodesConnectionInfoEndpointInfo.fromMap((value as Map).cast<String, dynamic>())),
      serviceAttachment: map['serviceAttachment'] == null ? null : map['serviceAttachment'] as String,
    );
  }
}

