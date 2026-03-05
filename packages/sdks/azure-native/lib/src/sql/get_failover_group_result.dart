// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_read_only_endpoint_response.dart';
import 'failover_group_read_write_endpoint_response.dart';
import 'partner_info_response.dart';

/// Result data returned by getFailoverGroup.
class GetFailoverGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of databases in the failover group.
  final List<String>? databases;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// List of partner server information for the failover group.
  final List<PartnerInfoResponse> partnerServers;
  /// Read-only endpoint of the failover group instance.
  final FailoverGroupReadOnlyEndpointResponse? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final FailoverGroupReadWriteEndpointResponse readWriteEndpoint;
  /// Local replication role of the failover group instance.
  final String replicationRole;
  /// Replication state of the failover group instance.
  final String replicationState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetFailoverGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databases] List of databases in the failover group.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [partnerServers] List of partner server information for the failover group.
  /// [readOnlyEndpoint] Read-only endpoint of the failover group instance.
  /// [readWriteEndpoint] Read-write endpoint of the failover group instance.
  /// [replicationRole] Local replication role of the failover group instance.
  /// [replicationState] Replication state of the failover group instance.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetFailoverGroupResult({
    required this.azureApiVersion,
    this.databases,
    required this.id,
    required this.location,
    required this.name,
    required this.partnerServers,
    this.readOnlyEndpoint,
    required this.readWriteEndpoint,
    required this.replicationRole,
    required this.replicationState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databases': ?databases,
      'id': id,
      'location': location,
      'name': name,
      'partnerServers': pulumi.Input.encodeList<PartnerInfoResponse, Map<String, dynamic>>(partnerServers, (value) => value.toMap()),
      'readOnlyEndpoint': ?readOnlyEndpoint?.toMap(),
      'readWriteEndpoint': readWriteEndpoint.toMap(),
      'replicationRole': replicationRole,
      'replicationState': replicationState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      partnerServers: pulumi.Input.decodeList<PartnerInfoResponse>(map['partnerServers']!, (value) => PartnerInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      readOnlyEndpoint: (() { final guardedValue = map['readOnlyEndpoint']; if (guardedValue == null) return null; return FailoverGroupReadOnlyEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      readWriteEndpoint: FailoverGroupReadWriteEndpointResponse.fromMap((map['readWriteEndpoint']! as Map).cast<String, dynamic>()),
      replicationRole: map['replicationRole'] as String,
      replicationState: map['replicationState'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

