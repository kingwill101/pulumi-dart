// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_relay.dart';
import 'sku.dart';

/// {@template pulumi_relay_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_relay_namespace_args_doc}
class NamespaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The namespace name
  final pulumi.Input<String>? namespaceName;
  /// List of private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnectionRelay>>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the namespace.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [location] The geo-location where the resource lives
  /// [namespaceName] The namespace name
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the namespace.
  /// [tags] Resource tags.
  NamespaceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<List<PrivateEndpointConnectionRelay>>? privateEndpointConnections,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      privateEndpointConnections = pulumi.Input.asOptionalInput<List<PrivateEndpointConnectionRelay>>(privateEndpointConnections),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'namespaceName': ?namespaceName,
      'privateEndpointConnections': ?privateEndpointConnections,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Output.create<List<PrivateEndpointConnectionRelay>>((map['privateEndpointConnections'] as List).cast<PrivateEndpointConnectionRelay>()),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

