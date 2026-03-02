// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group.dart';

/// Node group identification and configuration information.
class AuxiliaryNodeGroup {
  /// Node group configuration.
  final pulumi.Input<NodeGroup> nodeGroup;
  /// Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final pulumi.Input<String>? nodeGroupId;

  /// Creates a new [AuxiliaryNodeGroup].
  /// [nodeGroup] Node group configuration.
  /// [nodeGroupId] Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  AuxiliaryNodeGroup({
    required this.nodeGroup,
    this.nodeGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': pulumi.Input.mapInputValue<NodeGroup, Map<String, dynamic>>(nodeGroup, (value) => value.toMap()),
      'nodeGroupId': ?nodeGroupId,
    };
  }

  factory AuxiliaryNodeGroup.fromMap(Map<String, dynamic> map) {
    return AuxiliaryNodeGroup(
      nodeGroup: (NodeGroup.fromMap((map['nodeGroup'] as Map).cast<String, dynamic>())).input(),
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId'] as String).input(),
    );
  }
}

