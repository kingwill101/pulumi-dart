// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_query_args_doc}
/// Arguments for getQuery.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_query_args_doc}
class GetQueryArgs {
  /// The id of a specific query defined in the Log Analytics QueryPack
  final pulumi.Input<String> id;
  /// The name of the Log Analytics QueryPack resource.
  final pulumi.Input<String> queryPackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueryArgs].
  /// [id] The id of a specific query defined in the Log Analytics QueryPack
  /// [queryPackName] The name of the Log Analytics QueryPack resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetQueryArgs({
    required this.id,
    required this.queryPackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'queryPackName': queryPackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      queryPackName: pulumi.Input.fromValue(map['queryPackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

