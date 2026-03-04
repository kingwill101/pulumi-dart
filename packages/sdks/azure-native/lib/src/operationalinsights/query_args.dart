// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_pack_query_properties_related.dart';

/// {@template pulumi_operationalinsights_query_args_doc}
/// The set of arguments for Query.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_query_args_doc}
class QueryArgs {
  /// Body of the query.
  final pulumi.Input<String> body;

  /// Description of the query.
  final pulumi.Input<String>? description;

  /// Unique display name for your query within the Query Pack.
  final pulumi.Input<String> displayName;

  /// The id of a specific query defined in the Log Analytics QueryPack
  final pulumi.Input<String>? id;

  /// Additional properties that can be set for the query.
  final pulumi.Input<dynamic>? properties;

  /// The name of the Log Analytics QueryPack resource.
  final pulumi.Input<String> queryPackName;

  /// The related metadata items for the function.
  final pulumi.Input<LogAnalyticsQueryPackQueryPropertiesRelated>? related;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Tags associated with the query.
  final pulumi.Input<Map<String, List<String>>>? tags;

  /// Creates a new [QueryArgs].
  /// [body] Body of the query.
  /// [description] Description of the query.
  /// [displayName] Unique display name for your query within the Query Pack.
  /// [id] The id of a specific query defined in the Log Analytics QueryPack
  /// [properties] Additional properties that can be set for the query.
  /// [queryPackName] The name of the Log Analytics QueryPack resource.
  /// [related] The related metadata items for the function.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags associated with the query.
  QueryArgs({
    required this.body,
    this.description,
    required this.displayName,
    this.id,
    this.properties,
    required this.queryPackName,
    this.related,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'description': ?description,
      'displayName': displayName,
      'id': ?id,
      'properties': ?properties,
      'queryPackName': queryPackName,
      'related':
          ?pulumi.Input.mapOptionalInputValue<
            LogAnalyticsQueryPackQueryPropertiesRelated,
            Map<String, dynamic>
          >(related, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory QueryArgs.fromMap(Map<String, dynamic> map) {
    return QueryArgs(
      body: pulumi.Input.fromValue(map['body'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      queryPackName: pulumi.Input.fromValue(map['queryPackName'] as String),
      related: (() {
        final guardedValue = map['related'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogAnalyticsQueryPackQueryPropertiesRelated.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, List<String>>(),
        );
      })(),
    );
  }
}
