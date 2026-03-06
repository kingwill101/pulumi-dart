// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_group_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoutingRuleCollection.
class GetRoutingRuleCollectionResult {
  /// Groups for configuration
  final List<NetworkManagerRoutingGroupItemResponse> appliesTo;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the routing rule collection.
  final String? description;
  /// Determines whether BGP route propagation is enabled. Defaults to true.
  final String? disableBgpRoutePropagation;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetRoutingRuleCollectionResult].
  /// [appliesTo] Groups for configuration
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the routing rule collection.
  /// [disableBgpRoutePropagation] Determines whether BGP route propagation is enabled. Defaults to true.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetRoutingRuleCollectionResult({
    required this.appliesTo,
    required this.azureApiVersion,
    this.description,
    this.disableBgpRoutePropagation,
    required this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesTo': pulumi.Input.encodeList<NetworkManagerRoutingGroupItemResponse, Map<String, dynamic>>(appliesTo, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRoutingRuleCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetRoutingRuleCollectionResult(
      appliesTo: pulumi.Input.decodeList<NetworkManagerRoutingGroupItemResponse>(map['appliesTo']!, (value) => NetworkManagerRoutingGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableBgpRoutePropagation: (() { final guardedValue = map['disableBgpRoutePropagation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

