// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_query_pack_args_doc}
/// The set of arguments for QueryPack.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_query_pack_args_doc}
class QueryPackArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the Log Analytics QueryPack resource.
  final pulumi.Input<String>? queryPackName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QueryPackArgs].
  /// [location] The geo-location where the resource lives
  /// [queryPackName] The name of the Log Analytics QueryPack resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  QueryPackArgs({
    this.location,
    this.queryPackName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'queryPackName': ?queryPackName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory QueryPackArgs.fromMap(Map<String, dynamic> map) {
    return QueryPackArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryPackName: (() {
        final guardedValue = map['queryPackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
