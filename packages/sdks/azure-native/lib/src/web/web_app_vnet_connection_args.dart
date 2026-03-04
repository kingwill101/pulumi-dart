// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_vnet_connection_args_doc}
/// The set of arguments for WebAppVnetConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_vnet_connection_args_doc}
class WebAppVnetConnectionArgs {
  /// A certificate file (.cer) blob containing the public key of the private key used to authenticate a
  /// Point-To-Site VPN connection.
  final pulumi.Input<String>? certBlob;

  /// DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  final pulumi.Input<String>? dnsServers;

  /// Flag that is used to denote if this is VNET injection
  final pulumi.Input<bool>? isSwift;

  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of an existing Virtual Network.
  final pulumi.Input<String>? vnetName;

  /// The Virtual Network's resource ID.
  final pulumi.Input<String>? vnetResourceId;

  /// Creates a new [WebAppVnetConnectionArgs].
  /// [certBlob] A certificate file (.cer) blob containing the public key of the private key used to authenticate a
  /// [dnsServers] DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  /// [isSwift] Flag that is used to denote if this is VNET injection
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [vnetName] Name of an existing Virtual Network.
  /// [vnetResourceId] The Virtual Network's resource ID.
  WebAppVnetConnectionArgs({
    this.certBlob,
    this.dnsServers,
    this.isSwift,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    this.vnetName,
    this.vnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certBlob': ?certBlob,
      'dnsServers': ?dnsServers,
      'isSwift': ?isSwift,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'vnetName': ?vnetName,
      'vnetResourceId': ?vnetResourceId,
    };
  }

  factory WebAppVnetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppVnetConnectionArgs(
      certBlob: (() {
        final guardedValue = map['certBlob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsServers: (() {
        final guardedValue = map['dnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isSwift: (() {
        final guardedValue = map['isSwift'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vnetName: (() {
        final guardedValue = map['vnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetResourceId: (() {
        final guardedValue = map['vnetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
