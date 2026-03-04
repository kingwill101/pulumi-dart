// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_ethereum_details.dart';

/// {@template pulumi_blockchainnodeengine_blockchain_nodes_blockchain_nodes_args_doc}
/// The set of arguments for BlockchainNodes.
/// {@endtemplate}
/// {@macro pulumi_blockchainnodeengine_blockchain_nodes_blockchain_nodes_args_doc}
class BlockchainNodesArgs {
  /// ID of the requesting object.
  final pulumi.Input<String> blockchainNodeId;

  /// User-provided key-value pairs
  /// Possible values are: `ETHEREUM`.
  final pulumi.Input<String>? blockchainType;

  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetails>? ethereumDetails;

  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location of Blockchain Node being created.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [BlockchainNodesArgs].
  /// [blockchainNodeId] ID of the requesting object.
  /// [blockchainType] User-provided key-value pairs
  /// [ethereumDetails] User-provided key-value pairs
  /// [labels] User-provided key-value pairs
  /// [location] Location of Blockchain Node being created.
  /// [project] The ID of the project in which the resource belongs.
  BlockchainNodesArgs({
    required this.blockchainNodeId,
    this.blockchainType,
    this.ethereumDetails,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockchainNodeId': blockchainNodeId,
      'blockchainType': ?blockchainType,
      'ethereumDetails':
          ?pulumi.Input.mapOptionalInputValue<
            BlockchainNodesEthereumDetails,
            Map<String, dynamic>
          >(ethereumDetails, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory BlockchainNodesArgs.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesArgs(
      blockchainNodeId: pulumi.Input.fromValue(
        map['blockchainNodeId'] as String,
      ),
      blockchainType: (() {
        final guardedValue = map['blockchainType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ethereumDetails: (() {
        final guardedValue = map['ethereumDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BlockchainNodesEthereumDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
