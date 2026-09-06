// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection.dart';
import 'sku.dart';

/// {@template pulumi_relay_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_relay_namespace_args_doc}
class NamespaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The namespace name
  final pulumi.Input<String?>? namespaceName;
  /// List of private endpoint connections.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<PrivateEndpointConnection>?>? privateEndpointConnections;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the namespace.
  final pulumi.Input<Sku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NamespaceArgs].
  /// [location] The geo-location where the resource lives
  /// [namespaceName] The namespace name
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the namespace.
  /// [tags] Resource tags.
  NamespaceArgs({
    this.location,
    this.namespaceName,
    this.privateEndpointConnections,
    pulumi.Input<dynamic>? publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  }) : publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'namespaceName': ?namespaceName,
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
