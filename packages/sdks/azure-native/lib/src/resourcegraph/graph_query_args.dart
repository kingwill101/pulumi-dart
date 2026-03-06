// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcegraph_graph_query_args_doc}
/// The set of arguments for GraphQuery.
/// {@endtemplate}
/// {@macro pulumi_resourcegraph_graph_query_args_doc}
class GraphQueryArgs {
  /// The description of a graph query.
  final pulumi.Input<String>? description;
  /// The location of the resource
  final pulumi.Input<String>? location;
  /// KQL query that will be graph.
  final pulumi.Input<String> query;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Graph Query resource.
  final pulumi.Input<String>? resourceName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GraphQueryArgs].
  /// [description] The description of a graph query.
  /// [location] The location of the resource
  /// [query] KQL query that will be graph.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Graph Query resource.
  /// [tags] Resource tags
  const GraphQueryArgs({
    this.description,
    this.location,
    required this.query,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'query': query,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory GraphQueryArgs.fromMap(Map<String, dynamic> map) {
    return GraphQueryArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

