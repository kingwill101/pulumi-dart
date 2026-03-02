// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_response.dart';
import 'health_error_response.dart';
import 'retention_volume_response.dart';
import 'version_details_response.dart';

/// Details of a Master Target Server.
class MasterTargetServerResponse {
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// The version of the scout component on the server.
  final pulumi.Input<String>? agentVersion;
  /// Agent version details.
  final pulumi.Input<VersionDetailsResponse>? agentVersionDetails;
  /// The list of data stores in the fabric.
  final pulumi.Input<List<DataStoreResponse>>? dataStores;
  /// Disk count of the master target.
  final pulumi.Input<int>? diskCount;
  /// Health errors.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;
  /// The server Id.
  final pulumi.Input<String>? id;
  /// The IP address of the server.
  final pulumi.Input<String>? ipAddress;
  /// The last heartbeat received from the server.
  final pulumi.Input<String>? lastHeartbeat;
  /// MARS agent expiry date.
  final pulumi.Input<String>? marsAgentExpiryDate;
  /// MARS agent version.
  final pulumi.Input<String>? marsAgentVersion;
  /// Mars agent version details.
  final pulumi.Input<VersionDetailsResponse>? marsAgentVersionDetails;
  /// The server name.
  final pulumi.Input<String>? name;
  /// The OS type of the server.
  final pulumi.Input<String>? osType;
  /// OS Version of the master target.
  final pulumi.Input<String>? osVersion;
  /// The retention volumes of Master target Server.
  final pulumi.Input<List<RetentionVolumeResponse>>? retentionVolumes;
  /// Validation errors.
  final pulumi.Input<List<HealthErrorResponse>>? validationErrors;
  /// Version status.
  final pulumi.Input<String>? versionStatus;

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
      'agentVersionDetails': ?pulumi.Input.mapOptionalInputValue<VersionDetailsResponse, Map<String, dynamic>>(agentVersionDetails, (value) => value.toMap()),
      'dataStores': ?pulumi.Input.mapOptionalInputValue<List<DataStoreResponse>, List<Map<String, dynamic>>>(dataStores, (value) => pulumi.Input.encodeList<DataStoreResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskCount': ?diskCount,
      'healthErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'marsAgentExpiryDate': ?marsAgentExpiryDate,
      'marsAgentVersion': ?marsAgentVersion,
      'marsAgentVersionDetails': ?pulumi.Input.mapOptionalInputValue<VersionDetailsResponse, Map<String, dynamic>>(marsAgentVersionDetails, (value) => value.toMap()),
      'name': ?name,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'retentionVolumes': ?pulumi.Input.mapOptionalInputValue<List<RetentionVolumeResponse>, List<Map<String, dynamic>>>(retentionVolumes, (value) => pulumi.Input.encodeList<RetentionVolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versionStatus': ?versionStatus,
    };
  }

  factory MasterTargetServerResponse.fromMap(Map<String, dynamic> map) {
    return MasterTargetServerResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : (map['agentExpiryDate']! as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      agentVersionDetails: map['agentVersionDetails'] == null ? null : (VersionDetailsResponse.fromMap((map['agentVersionDetails']! as Map).cast<String, dynamic>())).input(),
      dataStores: map['dataStores'] == null ? null : (pulumi.Input.decodeList<DataStoreResponse>(map['dataStores']!, (value) => DataStoreResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskCount: map['diskCount'] == null ? null : (map['diskCount']! as int).input(),
      healthErrors: map['healthErrors'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      lastHeartbeat: map['lastHeartbeat'] == null ? null : (map['lastHeartbeat']! as String).input(),
      marsAgentExpiryDate: map['marsAgentExpiryDate'] == null ? null : (map['marsAgentExpiryDate']! as String).input(),
      marsAgentVersion: map['marsAgentVersion'] == null ? null : (map['marsAgentVersion']! as String).input(),
      marsAgentVersionDetails: map['marsAgentVersionDetails'] == null ? null : (VersionDetailsResponse.fromMap((map['marsAgentVersionDetails']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion']! as String).input(),
      retentionVolumes: map['retentionVolumes'] == null ? null : (pulumi.Input.decodeList<RetentionVolumeResponse>(map['retentionVolumes']!, (value) => RetentionVolumeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationErrors: map['validationErrors'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['validationErrors']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      versionStatus: map['versionStatus'] == null ? null : (map['versionStatus']! as String).input(),
    );
  }
}

