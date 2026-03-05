// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_connection_info_endpoint_info.dart';

class BlockchainNodesConnectionInfo {
  /// (Output)
  /// The endpoint information through which to interact with a blockchain node.
  /// Structure is documented below.
  final pulumi.Input<List<BlockchainNodesConnectionInfoEndpointInfo>>? endpointInfos;
  /// (Output)
  /// A service attachment that exposes a node, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [BlockchainNodesConnectionInfo].
  /// [endpointInfos] (Output)
  /// [serviceAttachment] (Output)
  BlockchainNodesConnectionInfo({
    this.endpointInfos,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInfos': ?pulumi.Input.mapOptionalInputValue<List<BlockchainNodesConnectionInfoEndpointInfo>, List<Map<String, dynamic>>>(endpointInfos, (value) => pulumi.Input.encodeList<BlockchainNodesConnectionInfoEndpointInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory BlockchainNodesConnectionInfo.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesConnectionInfo(
      endpointInfos: (() { final guardedValue = map['endpointInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlockchainNodesConnectionInfoEndpointInfo>(guardedValue, (value) => BlockchainNodesConnectionInfoEndpointInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

