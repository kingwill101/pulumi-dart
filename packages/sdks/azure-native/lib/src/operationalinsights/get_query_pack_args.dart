// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_query_pack_args_doc}
/// Arguments for getQueryPack.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_query_pack_args_doc}
class GetQueryPackArgs {
  /// The name of the Log Analytics QueryPack resource.
  final pulumi.Input<String> queryPackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueryPackArgs].
  /// [queryPackName] The name of the Log Analytics QueryPack resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetQueryPackArgs({
    required pulumi.Output<String> queryPackName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      queryPackName = pulumi.Input.asInput<String>(queryPackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryPackName': queryPackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueryPackArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryPackArgs(
      queryPackName: pulumi.Output.create<String>(map['queryPackName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

