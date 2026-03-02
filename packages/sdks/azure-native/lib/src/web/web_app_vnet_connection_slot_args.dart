// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_vnet_connection_slot_args_doc}
/// The set of arguments for WebAppVnetConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_vnet_connection_slot_args_doc}
class WebAppVnetConnectionSlotArgs {
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
  /// Name of the deployment slot. If a slot is not specified, the API will add or update connections for the production slot.
  final pulumi.Input<String> slot;
  /// Name of an existing Virtual Network.
  final pulumi.Input<String>? vnetName;
  /// The Virtual Network's resource ID.
  final pulumi.Input<String>? vnetResourceId;

  /// Creates a new [WebAppVnetConnectionSlotArgs].
  /// [certBlob] A certificate file (.cer) blob containing the public key of the private key used to authenticate a
  /// [dnsServers] DNS servers to be used by this Virtual Network. This should be a comma-separated list of IP addresses.
  /// [isSwift] Flag that is used to denote if this is VNET injection
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will add or update connections for the production slot.
  /// [vnetName] Name of an existing Virtual Network.
  /// [vnetResourceId] The Virtual Network's resource ID.
  WebAppVnetConnectionSlotArgs({
    this.certBlob,
    this.dnsServers,
    this.isSwift,
    this.kind,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
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
      'slot': slot,
      'vnetName': ?vnetName,
      'vnetResourceId': ?vnetResourceId,
    };
  }

  factory WebAppVnetConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppVnetConnectionSlotArgs(
      certBlob: map['certBlob'] == null ? null : (map['certBlob']! as String).input(),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers']! as String).input(),
      isSwift: map['isSwift'] == null ? null : (map['isSwift']! as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
      vnetName: map['vnetName'] == null ? null : (map['vnetName']! as String).input(),
      vnetResourceId: map['vnetResourceId'] == null ? null : (map['vnetResourceId']! as String).input(),
    );
  }
}

