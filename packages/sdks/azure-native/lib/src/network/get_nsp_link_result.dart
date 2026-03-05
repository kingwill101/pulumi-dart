// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNspLink.
class GetNspLinkResult {
  /// Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  final String? autoApprovedRemotePerimeterResourceId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  final List<String>? localInboundProfiles;
  /// Local Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  final List<String> localOutboundProfiles;
  /// Resource name.
  final String name;
  /// The provisioning state of the NSP Link resource.
  final String provisioningState;
  /// Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  final List<String>? remoteInboundProfiles;
  /// Remote Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  final List<String> remoteOutboundProfiles;
  /// Remote NSP Guid with which the link gets created.
  final String remotePerimeterGuid;
  /// Remote NSP location with which the link gets created.
  final String remotePerimeterLocation;
  /// The NSP link state.
  final String status;
  /// Resource type.
  final String type;

  /// Creates a new [GetNspLinkResult].
  /// [autoApprovedRemotePerimeterResourceId] Perimeter ARM Id for the remote NSP with which the link gets created in Auto-approval mode. It should be used when the NSP admin have Microsoft.Network/networkSecurityPerimeters/linkPerimeter/action permission on the remote NSP resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A message passed to the owner of the remote NSP link resource with this connection request. In case of Auto-approved flow, it is default to 'Auto Approved'. Restricted to 140 chars.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [localInboundProfiles] Local Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles.
  /// [localOutboundProfiles] Local Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the NSP Link resource.
  /// [remoteInboundProfiles] Remote Inbound profile names to which Inbound is allowed. Use ['*'] to allow inbound to all profiles. This property can only be updated in auto-approval mode.
  /// [remoteOutboundProfiles] Remote Outbound profile names from which Outbound is allowed. In current version, it is readonly property and it's value is set to ['*'] to allow outbound from all profiles. In later version, user will be able to modify it.
  /// [remotePerimeterGuid] Remote NSP Guid with which the link gets created.
  /// [remotePerimeterLocation] Remote NSP location with which the link gets created.
  /// [status] The NSP link state.
  /// [type] Resource type.
  GetNspLinkResult({
    this.autoApprovedRemotePerimeterResourceId,
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    this.localInboundProfiles,
    required this.localOutboundProfiles,
    required this.name,
    required this.provisioningState,
    this.remoteInboundProfiles,
    required this.remoteOutboundProfiles,
    required this.remotePerimeterGuid,
    required this.remotePerimeterLocation,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovedRemotePerimeterResourceId': ?autoApprovedRemotePerimeterResourceId,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'localInboundProfiles': ?localInboundProfiles,
      'localOutboundProfiles': localOutboundProfiles,
      'name': name,
      'provisioningState': provisioningState,
      'remoteInboundProfiles': ?remoteInboundProfiles,
      'remoteOutboundProfiles': remoteOutboundProfiles,
      'remotePerimeterGuid': remotePerimeterGuid,
      'remotePerimeterLocation': remotePerimeterLocation,
      'status': status,
      'type': type,
    };
  }

  factory GetNspLinkResult.fromMap(Map<String, dynamic> map) {
    return GetNspLinkResult(
      autoApprovedRemotePerimeterResourceId: (() { final guardedValue = map['autoApprovedRemotePerimeterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      localInboundProfiles: (() { final guardedValue = map['localInboundProfiles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      localOutboundProfiles: (map['localOutboundProfiles'] as List).cast<String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      remoteInboundProfiles: (() { final guardedValue = map['remoteInboundProfiles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      remoteOutboundProfiles: (map['remoteOutboundProfiles'] as List).cast<String>(),
      remotePerimeterGuid: map['remotePerimeterGuid'] as String,
      remotePerimeterLocation: map['remotePerimeterLocation'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

