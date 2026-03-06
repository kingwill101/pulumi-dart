// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_config.dart';
import 'node_group_roles_item.dart';

/// {@template pulumi_dataproc_v1_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_node_group_args_doc}
class NodeGroupArgs {
  final pulumi.Input<String> clusterId;
  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Node group resource name (https://aip.dev/122).
  final pulumi.Input<String>? name;
  /// Optional. The node group instance group configuration.
  final pulumi.Input<InstanceGroupConfig>? nodeGroupConfig;
  /// Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final pulumi.Input<String>? nodeGroupId;
  /// Optional. operation id of the parent operation sending the create request
  final pulumi.Input<String>? parentOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  /// Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Node group roles.
  final pulumi.Input<List<NodeGroupRolesItem>> roles;

  /// Creates a new [NodeGroupArgs].
  /// [clusterId] Required.
  /// [labels] Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  /// [name] The Node group resource name (https://aip.dev/122).
  /// [nodeGroupConfig] Optional. The node group instance group configuration.
  /// [nodeGroupId] Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  /// [parentOperationId] Optional. operation id of the parent operation sending the create request
  /// [project] Optional.
  /// [regionId] Required.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [roles] Node group roles.
  const NodeGroupArgs({
    required this.clusterId,
    this.labels,
    this.name,
    this.nodeGroupConfig,
    this.nodeGroupId,
    this.parentOperationId,
    this.project,
    required this.regionId,
    this.requestId,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'labels': ?labels,
      'name': ?name,
      'nodeGroupConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupConfig, Map<String, dynamic>>(nodeGroupConfig, (value) => value.toMap()),
      'nodeGroupId': ?nodeGroupId,
      'parentOperationId': ?parentOperationId,
      'project': ?project,
      'regionId': regionId,
      'requestId': ?requestId,
      'roles': pulumi.Input.mapInputValue<List<NodeGroupRolesItem>, List<String>>(roles, (value) => pulumi.Input.encodeList<NodeGroupRolesItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupConfig: (() { final guardedValue = map['nodeGroupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentOperationId: (() { final guardedValue = map['parentOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupRolesItem>(map['roles']!, (value) => NodeGroupRolesItem.fromValue(value as String))),
    );
  }
}

