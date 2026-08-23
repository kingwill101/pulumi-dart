// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_info_response.dart';

/// Result data returned by getServerTrustGroup.
class GetServerTrustGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Group members information for the server trust group.
  final List<ServerInfoResponse> groupMembers;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Trust scope of the server trust group.
  final List<String> trustScopes;
  /// Resource type.
  final String type;

  /// Creates a new [GetServerTrustGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupMembers] Group members information for the server trust group.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [trustScopes] Trust scope of the server trust group.
  /// [type] Resource type.
  const GetServerTrustGroupResult({
    required this.azureApiVersion,
    required this.groupMembers,
    required this.id,
    required this.name,
    required this.trustScopes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupMembers': pulumi.Input.encodeList<ServerInfoResponse, Map<String, dynamic>>(groupMembers, (value) => value.toMap()),
      'id': id,
      'name': name,
      'trustScopes': trustScopes,
      'type': type,
    };
  }

  factory GetServerTrustGroupResult.fromMap(Map<String, dynamic> map) {
    return GetServerTrustGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupMembers: pulumi.Input.decodeList<ServerInfoResponse>(map['groupMembers']!, (value) => ServerInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      trustScopes: (map['trustScopes'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
