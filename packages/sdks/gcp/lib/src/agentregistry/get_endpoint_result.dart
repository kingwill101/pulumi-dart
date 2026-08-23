// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_interface.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// Attributes of the Endpoint.
  final Map<String, String> attributes;
  /// Create time.
  final String createTime;
  /// The description of the Endpoint.
  final String description;
  /// The display name of the Endpoint.
  final String displayName;
  final String endpointId;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The connection details for the Endpoint.
  final List<GetEndpointInterface> interfaces;
  final String location;
  final String project;
  /// Update time.
  final String updateTime;
  /// The URN of the Endpoint.
  final String urn;

  /// Creates a new [GetEndpointResult].
  /// [attributes] Attributes of the Endpoint.
  /// [createTime] Create time.
  /// [description] The description of the Endpoint.
  /// [displayName] The display name of the Endpoint.
  /// [endpointId] Required.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interfaces] The connection details for the Endpoint.
  /// [location] Required.
  /// [project] Required.
  /// [updateTime] Update time.
  /// [urn] The URN of the Endpoint.
  const GetEndpointResult({
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.endpointId,
    this.filter,
    required this.id,
    required this.interfaces,
    required this.location,
    required this.project,
    required this.updateTime,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'endpointId': endpointId,
      'filter': ?filter,
      'id': id,
      'interfaces': pulumi.Input.encodeList<GetEndpointInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'location': location,
      'project': project,
      'updateTime': updateTime,
      'urn': urn,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endpointId: map['endpointId'] as String,
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      interfaces: pulumi.Input.decodeList<GetEndpointInterface>(map['interfaces']!, (value) => GetEndpointInterface.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      project: map['project'] as String,
      updateTime: map['updateTime'] as String,
      urn: map['urn'] as String,
    );
  }
}
