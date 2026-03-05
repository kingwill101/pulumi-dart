// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_response.dart';

/// Node group identification and configuration information.
class AuxiliaryNodeGroupResponse {
  /// Node group configuration.
  final pulumi.Input<NodeGroupResponse> nodeGroup;
  /// Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final pulumi.Input<String> nodeGroupId;

  /// Creates a new [AuxiliaryNodeGroupResponse].
  /// [nodeGroup] Node group configuration.
  /// [nodeGroupId] Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  AuxiliaryNodeGroupResponse({
    required this.nodeGroup,
    required this.nodeGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': pulumi.Input.mapInputValue<NodeGroupResponse, Map<String, dynamic>>(nodeGroup, (value) => value.toMap()),
      'nodeGroupId': nodeGroupId,
    };
  }

  factory AuxiliaryNodeGroupResponse.fromMap(Map<String, dynamic> map) {
    return AuxiliaryNodeGroupResponse(
      nodeGroup: pulumi.Input.fromValue(NodeGroupResponse.fromMap((map['nodeGroup']! as Map).cast<String, dynamic>())),
      nodeGroupId: pulumi.Input.fromValue(map['nodeGroupId'] as String),
    );
  }
}

