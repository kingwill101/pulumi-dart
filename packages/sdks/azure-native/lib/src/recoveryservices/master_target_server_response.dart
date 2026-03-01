// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_response.dart';
import 'health_error_response.dart';
import 'retention_volume_response.dart';
import 'version_details_response.dart';

/// Details of a Master Target Server.
class MasterTargetServerResponse {
  /// Agent expiry date.
  final String? agentExpiryDate;
  /// The version of the scout component on the server.
  final String? agentVersion;
  /// Agent version details.
  final VersionDetailsResponse? agentVersionDetails;
  /// The list of data stores in the fabric.
  final List<DataStoreResponse>? dataStores;
  /// Disk count of the master target.
  final int? diskCount;
  /// Health errors.
  final List<HealthErrorResponse>? healthErrors;
  /// The server Id.
  final String? id;
  /// The IP address of the server.
  final String? ipAddress;
  /// The last heartbeat received from the server.
  final String? lastHeartbeat;
  /// MARS agent expiry date.
  final String? marsAgentExpiryDate;
  /// MARS agent version.
  final String? marsAgentVersion;
  /// Mars agent version details.
  final VersionDetailsResponse? marsAgentVersionDetails;
  /// The server name.
  final String? name;
  /// The OS type of the server.
  final String? osType;
  /// OS Version of the master target.
  final String? osVersion;
  /// The retention volumes of Master target Server.
  final List<RetentionVolumeResponse>? retentionVolumes;
  /// Validation errors.
  final List<HealthErrorResponse>? validationErrors;
  /// Version status.
  final String? versionStatus;

  /// Creates a new [MasterTargetServerResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The version of the scout component on the server.
  /// [agentVersionDetails] Agent version details.
  /// [dataStores] The list of data stores in the fabric.
  /// [diskCount] Disk count of the master target.
  /// [healthErrors] Health errors.
  /// [id] The server Id.
  /// [ipAddress] The IP address of the server.
  /// [lastHeartbeat] The last heartbeat received from the server.
  /// [marsAgentExpiryDate] MARS agent expiry date.
  /// [marsAgentVersion] MARS agent version.
  /// [marsAgentVersionDetails] Mars agent version details.
  /// [name] The server name.
  /// [osType] The OS type of the server.
  /// [osVersion] OS Version of the master target.
  /// [retentionVolumes] The retention volumes of Master target Server.
  /// [validationErrors] Validation errors.
  /// [versionStatus] Version status.
  MasterTargetServerResponse({
    this.agentExpiryDate,
    this.agentVersion,
    this.agentVersionDetails,
    this.dataStores,
    this.diskCount,
    this.healthErrors,
    this.id,
    this.ipAddress,
    this.lastHeartbeat,
    this.marsAgentExpiryDate,
    this.marsAgentVersion,
    this.marsAgentVersionDetails,
    this.name,
    this.osType,
    this.osVersion,
    this.retentionVolumes,
    this.validationErrors,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'agentVersionDetails': ?agentVersionDetails == null ? null : agentVersionDetails!.toMap(),
      'dataStores': ?dataStores == null ? null : pulumi.Input.encodeList<DataStoreResponse, Map<String, dynamic>>(dataStores!, (value) => value.toMap()),
      'diskCount': ?diskCount,
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'id': ?id,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'marsAgentExpiryDate': ?marsAgentExpiryDate,
      'marsAgentVersion': ?marsAgentVersion,
      'marsAgentVersionDetails': ?marsAgentVersionDetails == null ? null : marsAgentVersionDetails!.toMap(),
      'name': ?name,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'retentionVolumes': ?retentionVolumes == null ? null : pulumi.Input.encodeList<RetentionVolumeResponse, Map<String, dynamic>>(retentionVolumes!, (value) => value.toMap()),
      'validationErrors': ?validationErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(validationErrors!, (value) => value.toMap()),
      'versionStatus': ?versionStatus,
    };
  }

  factory MasterTargetServerResponse.fromMap(Map<String, dynamic> map) {
    return MasterTargetServerResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : map['agentExpiryDate'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      agentVersionDetails: map['agentVersionDetails'] == null ? null : VersionDetailsResponse.fromMap((map['agentVersionDetails'] as Map).cast<String, dynamic>()),
      dataStores: map['dataStores'] == null ? null : pulumi.Input.decodeList<DataStoreResponse>(map['dataStores'], (value) => DataStoreResponse.fromMap((value as Map).cast<String, dynamic>())),
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      marsAgentExpiryDate: map['marsAgentExpiryDate'] == null ? null : map['marsAgentExpiryDate'] as String,
      marsAgentVersion: map['marsAgentVersion'] == null ? null : map['marsAgentVersion'] as String,
      marsAgentVersionDetails: map['marsAgentVersionDetails'] == null ? null : VersionDetailsResponse.fromMap((map['marsAgentVersionDetails'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      retentionVolumes: map['retentionVolumes'] == null ? null : pulumi.Input.decodeList<RetentionVolumeResponse>(map['retentionVolumes'], (value) => RetentionVolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationErrors: map['validationErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['validationErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      versionStatus: map['versionStatus'] == null ? null : map['versionStatus'] as String,
    );
  }
}

