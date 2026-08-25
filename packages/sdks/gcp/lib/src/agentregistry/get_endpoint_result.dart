// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_interface.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  /// Attributes of the Endpoint.
  final Map<String, String>? attributes;
  /// Create time.
  final String? createTime;
  /// The description of the Endpoint.
  final String? description;
  /// The display name of the Endpoint.
  final String? displayName;
  final String? endpointId;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The connection details for the Endpoint.
  final List<GetEndpointInterface>? interfaces;
  final String? location;
  final String? project;
  /// Update time.
  final String? updateTime;
  /// The URN of the Endpoint.
  final String? urn;

  /// Creates a new [GetEndpointResult].
  /// [attributes] Attributes of the Endpoint.
  /// [createTime] Create time.
  /// [description] The description of the Endpoint.
  /// [displayName] The display name of the Endpoint.
  /// [endpointId] Optional.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interfaces] The connection details for the Endpoint.
  /// [location] Optional.
  /// [project] Optional.
  /// [updateTime] Update time.
  /// [urn] The URN of the Endpoint.
  const GetEndpointResult({
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.endpointId,
    this.filter,
    this.id,
    this.interfaces,
    this.location,
    this.project,
    this.updateTime,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'endpointId': ?endpointId,
      'filter': ?filter,
      'id': ?id,
      'interfaces': ?(() { final guardedValue = interfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'project': ?project,
      'updateTime': ?updateTime,
      'urn': ?urn,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointInterface>(guardedValue, (value) => GetEndpointInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
