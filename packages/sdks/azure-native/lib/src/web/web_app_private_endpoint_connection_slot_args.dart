// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_connection_state.dart';

/// {@template pulumi_web_web_app_private_endpoint_connection_slot_args_doc}
/// The set of arguments for WebAppPrivateEndpointConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_private_endpoint_connection_slot_args_doc}
class WebAppPrivateEndpointConnectionSlotArgs {
  /// Private IPAddresses mapped to the remote private endpoint
  final pulumi.Input<List<String>>? ipAddresses;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the site.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionState>? privateLinkServiceConnectionState;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppPrivateEndpointConnectionSlotArgs].
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Optional.
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Required.
  WebAppPrivateEndpointConnectionSlotArgs({
    this.ipAddresses,
    this.kind,
    required this.name,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses,
      'kind': ?kind,
      'name': name,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppPrivateEndpointConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPrivateEndpointConnectionSlotArgs(
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

