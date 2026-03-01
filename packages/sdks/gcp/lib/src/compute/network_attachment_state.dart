// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_connection_endpoint.dart';

/// Input properties used for looking up and filtering NetworkAttachment resources.
class NetworkAttachmentState {
  /// An array of connections for all the producers connected to this network attachment.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkAttachmentConnectionEndpoint>>? connectionEndpoints;
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// Possible values are: `ACCEPT_AUTOMATIC`, `ACCEPT_MANUAL`, `INVALID`.
  final pulumi.Input<String>? connectionPreference;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This
  /// field is used in optimistic locking. An up-to-date fingerprint must be provided in order to patch.
  final pulumi.Input<String>? fingerprint;
  /// Type of the resource.
  final pulumi.Input<String>? kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated.
  /// Because it is required that all the subnetworks must be from the same network, it is assured that the Network Attachment belongs to the same network as all the subnetworks.
  final pulumi.Input<String>? network;
  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerAcceptLists;
  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerRejectLists;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final pulumi.Input<String>? region;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource's resource id.
  final pulumi.Input<String>? selfLinkWithId;
  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final pulumi.Input<List<String>>? subnetworks;

  /// Creates a new [NetworkAttachmentState].
  /// [connectionEndpoints] An array of connections for all the producers connected to this network attachment.
  /// [connectionPreference] The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This
  /// [kind] Type of the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the network which the Network Attachment belongs to. Practically it is inferred by fetching the network of the first subnetwork associated.
  /// [producerAcceptLists] Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [producerRejectLists] Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource's resource id.
  /// [subnetworks] An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  NetworkAttachmentState({
    pulumi.Output<List<NetworkAttachmentConnectionEndpoint>>? connectionEndpoints,
    pulumi.Output<String>? connectionPreference,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<List<String>>? producerAcceptLists,
    pulumi.Output<List<String>>? producerRejectLists,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithId,
    pulumi.Output<List<String>>? subnetworks,
  }) :
      connectionEndpoints = pulumi.Input.asOptionalInput<List<NetworkAttachmentConnectionEndpoint>>(connectionEndpoints),
      connectionPreference = pulumi.Input.asOptionalInput<String>(connectionPreference),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      producerAcceptLists = pulumi.Input.asOptionalInput<List<String>>(producerAcceptLists),
      producerRejectLists = pulumi.Input.asOptionalInput<List<String>>(producerRejectLists),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithId = pulumi.Input.asOptionalInput<String>(selfLinkWithId),
      subnetworks = pulumi.Input.asOptionalInput<List<String>>(subnetworks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NetworkAttachmentConnectionEndpoint>, List<Map<String, dynamic>>>(connectionEndpoints, (value) => pulumi.Input.encodeList<NetworkAttachmentConnectionEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionPreference': ?connectionPreference,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'kind': ?kind,
      'name': ?name,
      'network': ?network,
      'producerAcceptLists': ?producerAcceptLists,
      'producerRejectLists': ?producerRejectLists,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'subnetworks': ?subnetworks,
    };
  }

  factory NetworkAttachmentState.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentState(
      connectionEndpoints: map['connectionEndpoints'] == null ? null : pulumi.Output.create<List<NetworkAttachmentConnectionEndpoint>>(pulumi.Input.decodeList<NetworkAttachmentConnectionEndpoint>(map['connectionEndpoints'], (value) => NetworkAttachmentConnectionEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      connectionPreference: map['connectionPreference'] == null ? null : pulumi.Output.create<String>(map['connectionPreference'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      producerAcceptLists: map['producerAcceptLists'] == null ? null : pulumi.Output.create<List<String>>((map['producerAcceptLists'] as List).cast<String>()),
      producerRejectLists: map['producerRejectLists'] == null ? null : pulumi.Output.create<List<String>>((map['producerRejectLists'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithId'] as String),
      subnetworks: map['subnetworks'] == null ? null : pulumi.Output.create<List<String>>((map['subnetworks'] as List).cast<String>()),
    );
  }
}

