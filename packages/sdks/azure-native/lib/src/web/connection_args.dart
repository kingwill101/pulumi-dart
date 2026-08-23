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
  const ConnectionArgs({
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
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiConnectionDefinitionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
