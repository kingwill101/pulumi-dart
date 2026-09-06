// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_read_only_endpoint_response.dart';
import 'failover_group_read_write_endpoint_response.dart';
import 'partner_info_response.dart';

/// Result data returned by getFailoverGroup.
class GetFailoverGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of databases in the failover group.
  final List<String>? databases;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// List of partner server information for the failover group.
  final List<PartnerInfoResponse>? partnerServers;
  /// Read-only endpoint of the failover group instance.
  final FailoverGroupReadOnlyEndpointResponse? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final FailoverGroupReadWriteEndpointResponse? readWriteEndpoint;
  /// Local replication role of the failover group instance.
  final String? replicationRole;
  /// Replication state of the failover group instance.
  final String? replicationState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

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
  const GetFailoverGroupResult({
    this.azureApiVersion,
    this.databases,
    this.id,
    this.location,
    this.name,
    this.partnerServers,
    this.readOnlyEndpoint,
    this.readWriteEndpoint,
    this.replicationRole,
    this.replicationState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'databases': ?databases,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'partnerServers': ?(() { final guardedValue = partnerServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<PartnerInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'readOnlyEndpoint': ?readOnlyEndpoint?.toMap(),
      'readWriteEndpoint': ?readWriteEndpoint?.toMap(),
      'replicationRole': ?replicationRole,
      'replicationState': ?replicationState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerServers: (() { final guardedValue = map['partnerServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PartnerInfoResponse>(guardedValue, (value) => PartnerInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      readOnlyEndpoint: (() { final guardedValue = map['readOnlyEndpoint']; if (guardedValue == null) return null; return FailoverGroupReadOnlyEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      readWriteEndpoint: (() { final guardedValue = map['readWriteEndpoint']; if (guardedValue == null) return null; return FailoverGroupReadWriteEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationState: (() { final guardedValue = map['replicationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
