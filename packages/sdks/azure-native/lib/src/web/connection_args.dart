// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_definition_properties.dart';

/// {@template pulumi_web_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_web_connection_args_doc}
class ConnectionArgs {
  /// Connection name
  final pulumi.Input<String>? connectionName;
  /// Resource location
  final pulumi.Input<String>? location;
  final pulumi.Input<ApiConnectionDefinitionProperties>? properties;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionArgs].
  /// [connectionName] Connection name
  /// [location] Resource location
  /// [properties] Optional.
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  /// [tags] Resource tags
  ConnectionArgs({
    this.connectionName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApiConnectionDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionName: map['connectionName'] == null ? null : (map['connectionName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ApiConnectionDefinitionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

