// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_attachment_connection_endpoint.dart';

/// Result data returned by getNetworkAttachment.
class GetNetworkAttachmentResult {
  final List<GetNetworkAttachmentConnectionEndpoint>? connectionEndpoints;
  final String? connectionPreference;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final String? fingerprint;
  final String? id;
  final String? kind;
  final String? name;
  final String? network;
  final List<String>? producerAcceptLists;
  final List<String>? producerRejectLists;
  final String? project;
  final String? region;
  final String? selfLink;
  final String? selfLinkWithId;
  final List<String>? subnetworks;

  /// Creates a new [GetNetworkAttachmentResult].
  /// [connectionEndpoints] Optional.
  /// [connectionPreference] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [fingerprint] Optional.
  /// [id] Optional.
  /// [kind] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [producerAcceptLists] Optional.
  /// [producerRejectLists] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [selfLinkWithId] Optional.
  /// [subnetworks] Optional.
  const GetNetworkAttachmentResult({
    this.connectionEndpoints,
    this.connectionPreference,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.id,
    this.kind,
    this.name,
    this.network,
    this.producerAcceptLists,
    this.producerRejectLists,
    this.project,
    this.region,
    this.selfLink,
    this.selfLinkWithId,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEndpoints': ?(() { final guardedValue = connectionEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkAttachmentConnectionEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionPreference': ?connectionPreference,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'id': ?id,
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

  factory GetNetworkAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentResult(
      connectionEndpoints: (() { final guardedValue = map['connectionEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkAttachmentConnectionEndpoint>(guardedValue, (value) => GetNetworkAttachmentConnectionEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionPreference: (() { final guardedValue = map['connectionPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producerAcceptLists: (() { final guardedValue = map['producerAcceptLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      producerRejectLists: (() { final guardedValue = map['producerRejectLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
