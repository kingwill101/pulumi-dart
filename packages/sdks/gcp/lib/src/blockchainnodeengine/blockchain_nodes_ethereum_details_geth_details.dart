// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockchainNodesEthereumDetailsGethDetails {
  /// Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  /// Possible values are: `FULL`, `ARCHIVE`.
  ///
  /// &lt;a name="nested_ethereum_details_additional_endpoints"&gt;&lt;/a&gt;The `additional_endpoints` block contains:
  final pulumi.Input<String>? garbageCollectionMode;

  /// Creates a new [BlockchainNodesEthereumDetailsGethDetails].
  /// [garbageCollectionMode] Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  const BlockchainNodesEthereumDetailsGethDetails({
    this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'garbageCollectionMode': ?garbageCollectionMode,
    };
  }

  factory BlockchainNodesEthereumDetailsGethDetails.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsGethDetails(
      garbageCollectionMode: (() { final guardedValue = map['garbageCollectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

