// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcegraph_get_graph_query_args_doc}
/// Arguments for getGraphQuery.
/// {@endtemplate}
/// {@macro pulumi_resourcegraph_get_graph_query_args_doc}
class GetGraphQueryArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Graph Query resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetGraphQueryArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Graph Query resource.
  GetGraphQueryArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetGraphQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetGraphQueryArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

