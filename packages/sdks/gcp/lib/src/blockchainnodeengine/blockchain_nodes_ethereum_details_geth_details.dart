// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockchainNodesEthereumDetailsGethDetails {
  /// Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  /// Possible values are: `FULL`, `ARCHIVE`.
  ///
  /// <a name="nested_ethereum_details_additional_endpoints"></a>The `additional_endpoints` block contains:
  final pulumi.Input<String>? garbageCollectionMode;

  /// Creates a new [BlockchainNodesEthereumDetailsGethDetails].
  /// [garbageCollectionMode] Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  BlockchainNodesEthereumDetailsGethDetails({
    this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'garbageCollectionMode': ?garbageCollectionMode,
    };
  }

  factory BlockchainNodesEthereumDetailsGethDetails.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsGethDetails(
      garbageCollectionMode: map['garbageCollectionMode'] == null ? null : (map['garbageCollectionMode']! as String).input(),
    );
  }
}

