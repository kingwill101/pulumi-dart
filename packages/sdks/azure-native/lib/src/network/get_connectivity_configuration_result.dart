// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_group_item_response.dart';
import 'hub_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectivityConfiguration.
class GetConnectivityConfigurationResult {
  /// Groups for configuration
  final List<ConnectivityGroupItemResponse>? appliesToGroups;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Connectivity topology type.
  final String? connectivityTopology;
  /// Flag if need to remove current existing peerings.
  final String? deleteExistingPeering;
  /// A description of the connectivity configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// List of hubItems
  final List<HubResponse>? hubs;
  /// Resource ID.
  final String? id;
  /// Flag if global mesh is supported.
  final String? isGlobal;
  /// Resource name.
  final String? name;
  /// The provisioning state of the connectivity configuration resource.
  final String? provisioningState;
  /// Unique identifier for this resource.
  final String? resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

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
  const GetConnectivityConfigurationResult({
    this.appliesToGroups,
    this.azureApiVersion,
    this.connectivityTopology,
    this.deleteExistingPeering,
    this.description,
    this.etag,
    this.hubs,
    this.id,
    this.isGlobal,
    this.name,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?(() { final guardedValue = appliesToGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectivityGroupItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'connectivityTopology': ?connectivityTopology,
      'deleteExistingPeering': ?deleteExistingPeering,
      'description': ?description,
      'etag': ?etag,
      'hubs': ?(() { final guardedValue = hubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<HubResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'isGlobal': ?isGlobal,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityConfigurationResult(
      appliesToGroups: (() { final guardedValue = map['appliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectivityGroupItemResponse>(guardedValue, (value) => ConnectivityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityTopology: (() { final guardedValue = map['connectivityTopology']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteExistingPeering: (() { final guardedValue = map['deleteExistingPeering']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HubResponse>(guardedValue, (value) => HubResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
