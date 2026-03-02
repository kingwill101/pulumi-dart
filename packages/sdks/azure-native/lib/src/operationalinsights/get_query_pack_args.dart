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
    required this.queryPackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryPackName': queryPackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueryPackArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryPackArgs(
      queryPackName: (map['queryPackName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

