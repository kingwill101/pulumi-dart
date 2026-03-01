// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_group_item_response.dart';
import 'hub_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectivityConfiguration.
class GetConnectivityConfigurationResult {
  /// Groups for configuration
  final List<ConnectivityGroupItemResponse> appliesToGroups;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Connectivity topology type.
  final String connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final String? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// List of hubItems
  final List<HubResponse>? hubs;
  /// Resource ID.
  final String id;
  /// Flag if global mesh is supported.
  final String? isGlobal;
  /// Resource name.
  final String name;
  /// The provisioning state of the connectivity configuration resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetConnectivityConfigurationResult].
  /// [appliesToGroups] Groups for configuration
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectivityTopology] Connectivity topology type.
  /// [deleteExistingPeering] Flag if need to remove current existing peerings.
  /// [description] A description of the connectivity configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hubs] List of hubItems
  /// [id] Resource ID.
  /// [isGlobal] Flag if global mesh is supported.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the connectivity configuration resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetConnectivityConfigurationResult({
    required this.appliesToGroups,
    required this.azureApiVersion,
    required this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    required this.etag,
    this.hubs,
    required this.id,
    this.isGlobal,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.encodeList<ConnectivityGroupItemResponse, Map<String, dynamic>>(appliesToGroups, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'etag': etag,
      'hubs': ?hubs == null ? null : pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(hubs!, (value) => value.toMap()),
      'id': id,
      'isGlobal': ?isGlobal,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityConfigurationResult(
      appliesToGroups: pulumi.Input.decodeList<ConnectivityGroupItemResponse>(map['appliesToGroups'], (value) => ConnectivityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      connectivityTopology: map['connectivityTopology'] as String,
      deleteExistingPeering: map['deleteExistingPeering'] == null ? null : map['deleteExistingPeering'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] as String,
      hubs: map['hubs'] == null ? null : pulumi.Input.decodeList<HubResponse>(map['hubs'], (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isGlobal: map['isGlobal'] == null ? null : map['isGlobal'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

