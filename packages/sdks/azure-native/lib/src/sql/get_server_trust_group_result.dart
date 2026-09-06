// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_info_response.dart';

/// Result data returned by getServerTrustGroup.
class GetServerTrustGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Group members information for the server trust group.
  final List<ServerInfoResponse>? groupMembers;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Trust scope of the server trust group.
  final List<String>? trustScopes;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerTrustGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupMembers] Group members information for the server trust group.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [trustScopes] Trust scope of the server trust group.
  /// [type] Resource type.
  const GetServerTrustGroupResult({
    this.azureApiVersion,
    this.groupMembers,
    this.id,
    this.name,
    this.trustScopes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupMembers': ?(() { final guardedValue = groupMembers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServerInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'trustScopes': ?trustScopes,
      'type': ?type,
    };
  }

  factory GetServerTrustGroupResult.fromMap(Map<String, dynamic> map) {
    return GetServerTrustGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupMembers: (() { final guardedValue = map['groupMembers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerInfoResponse>(guardedValue, (value) => ServerInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustScopes: (() { final guardedValue = map['trustScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
