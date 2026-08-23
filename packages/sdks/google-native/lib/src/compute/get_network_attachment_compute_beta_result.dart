// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_connected_endpoint_response_compute_beta.dart';

/// Result data returned by getNetworkAttachment.
class GetNetworkAttachmentComputeBetaResult {
  /// An array of connections for all the producers connected to this network attachment.
  final List<NetworkAttachmentConnectedEndpointResponseComputeBeta> connectionEndpoints;
  final String connectionPreference;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  final String fingerprint;
  /// Type of the resource.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated. Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  final String network;
  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String> producerAcceptLists;
  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final List<String> producerRejectLists;
  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource's resource id.
  final String selfLinkWithId;
  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final List<String> subnetworks;

  /// Creates a new [GetNetworkAttachmentComputeBetaResult].
  /// [connectionEndpoints] An array of connections for all the producers connected to this network attachment.
  /// [connectionPreference] Required.
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
  const GetNetworkAttachmentComputeBetaResult({
    required this.connectionEndpoints,
    required this.connectionPreference,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.network,
    required this.producerAcceptLists,
    required this.producerRejectLists,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEndpoints': pulumi.Input.encodeList<NetworkAttachmentConnectedEndpointResponseComputeBeta, Map<String, dynamic>>(connectionEndpoints, (value) => value.toMap()),
      'connectionPreference': connectionPreference,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'kind': kind,
      'name': name,
      'network': network,
      'producerAcceptLists': producerAcceptLists,
      'producerRejectLists': producerRejectLists,
      'region': region,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'subnetworks': subnetworks,
    };
  }

  factory GetNetworkAttachmentComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentComputeBetaResult(
      connectionEndpoints: pulumi.Input.decodeList<NetworkAttachmentConnectedEndpointResponseComputeBeta>(map['connectionEndpoints']!, (value) => NetworkAttachmentConnectedEndpointResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      connectionPreference: map['connectionPreference'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      producerAcceptLists: (map['producerAcceptLists'] as List).cast<String>(),
      producerRejectLists: (map['producerRejectLists'] as List).cast<String>(),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      subnetworks: (map['subnetworks'] as List).cast<String>(),
    );
  }
}
