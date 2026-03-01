// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_db_nodes_get_db_nodes_args_doc}
/// Arguments for getDbNodes.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_db_nodes_get_db_nodes_args_doc}
class GetDbNodesArgs {
  /// The id of the Cloud VM cluster.
  final pulumi.Input<String> cloudVmClusterId;

  /// Creates a new [GetDbNodesArgs].
  /// [cloudVmClusterId] The id of the Cloud VM cluster.
  GetDbNodesArgs({
    required pulumi.Output<String> cloudVmClusterId,
  }) :
      cloudVmClusterId = pulumi.Input.asInput<String>(cloudVmClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
    };
  }

  factory GetDbNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodesArgs(
      cloudVmClusterId: pulumi.Output.create<String>(map['cloudVmClusterId'] as String),
    );
  }
}

