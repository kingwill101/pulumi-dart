// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_link_args_doc}
/// The set of arguments for NetworkSecurityPerimeterLink.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_link_args_doc}
class NetworkSecurityPerimeterLinkArgs {
  /// Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  final pulumi.Input<String>? autoApprovedRemotePerimeterResourceId;
  /// A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  final pulumi.Input<String>? description;
  /// The name of the NSP link.
  final pulumi.Input<String>? linkName;
  /// Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  final pulumi.Input<List<String>>? localInboundProfiles;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  final pulumi.Input<List<String>>? remoteInboundProfiles;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkSecurityPerimeterLinkArgs].
  /// [autoApprovedRemotePerimeterResourceId] Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  /// [description] A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  /// [linkName] The name of the NSP link.
  /// [localInboundProfiles] Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [remoteInboundProfiles] Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  /// [resourceGroupName] The name of the resource group.
  const NetworkSecurityPerimeterLinkArgs({
    this.autoApprovedRemotePerimeterResourceId,
    this.description,
    this.linkName,
    this.localInboundProfiles,
    required this.networkSecurityPerimeterName,
    this.remoteInboundProfiles,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovedRemotePerimeterResourceId': ?autoApprovedRemotePerimeterResourceId,
      'description': ?description,
      'linkName': ?linkName,
      'localInboundProfiles': ?localInboundProfiles,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'remoteInboundProfiles': ?remoteInboundProfiles,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkSecurityPerimeterLinkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterLinkArgs(
      autoApprovedRemotePerimeterResourceId: (() { final guardedValue = map['autoApprovedRemotePerimeterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkName: (() { final guardedValue = map['linkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localInboundProfiles: (() { final guardedValue = map['localInboundProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkSecurityPerimeterName: pulumi.Input.fromValue(map['networkSecurityPerimeterName'] as String),
      remoteInboundProfiles: (() { final guardedValue = map['remoteInboundProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

