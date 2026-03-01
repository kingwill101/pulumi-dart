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
    pulumi.Output<String>? connectionName,
    pulumi.Output<String>? location,
    pulumi.Output<ApiConnectionDefinitionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ApiConnectionDefinitionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ApiConnectionDefinitionProperties>(ApiConnectionDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

