// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_connected_endpoint_response.dart';

/// Result data returned by getNetworkAttachment.
class GetNetworkAttachmentResult {
  /// An array of connections for all the producers connected to this network attachment.
  final List<NetworkAttachmentConnectedEndpointResponse>? connectionEndpoints;
  final String? connectionPreference;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  final String? fingerprint;
  /// Type of the resource.
  final String? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated. Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  final String? network;
  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String>? producerAcceptLists;
  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String>? producerRejectLists;
  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL for this resource's resource id.
  final String? selfLinkWithId;
  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final List<String>? subnetworks;

  /// Creates a new [GetNetworkAttachmentResult].
  /// [connectionEndpoints] An array of connections for all the producers connected to this network attachment.
  /// [connectionPreference] Optional.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated. Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  /// [producerAcceptLists] Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [producerRejectLists] Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [region] URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource's resource id.
  /// [subnetworks] An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  const GetNetworkAttachmentResult({
    this.connectionEndpoints,
    this.connectionPreference,
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.kind,
    this.name,
    this.network,
    this.producerAcceptLists,
    this.producerRejectLists,
    this.region,
    this.selfLink,
    this.selfLinkWithId,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEndpoints': ?(() { final guardedValue = connectionEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkAttachmentConnectedEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionPreference': ?connectionPreference,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'kind': ?kind,
      'name': ?name,
      'network': ?network,
      'producerAcceptLists': ?producerAcceptLists,
      'producerRejectLists': ?producerRejectLists,
      'region': ?region,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'subnetworks': ?subnetworks,
    };
  }

  factory GetNetworkAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentResult(
      connectionEndpoints: (() { final guardedValue = map['connectionEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAttachmentConnectedEndpointResponse>(guardedValue, (value) => NetworkAttachmentConnectedEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionPreference: (() { final guardedValue = map['connectionPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producerAcceptLists: (() { final guardedValue = map['producerAcceptLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      producerRejectLists: (() { final guardedValue = map['producerRejectLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
