// ignore_for_file: unused_element, unnecessary_cast

import 'available_updates_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'upgrade_status_response_vmmigration_v1alpha1.dart';

/// Result data returned by getDatacenterConnector.
class GetDatacenterConnectorVmmigrationV1alpha1Result {
  /// Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  final String applianceInfrastructureVersion;

  /// Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  final String applianceSoftwareVersion;

  /// The available versions for updating this appliance.
  final AvailableUpdatesResponseVmmigrationV1alpha1 availableVersions;

  /// The communication channel between the datacenter connector and Google Cloud.
  final String bucket;

  /// The time the connector was created (as an API call, not when it was actually installed).
  final String createTime;

  /// Provides details on the state of the Datacenter Connector in case of an error.
  final StatusResponseVmmigrationV1alpha1 error;

  /// The connector's name.
  final String name;

  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  final String registrationId;

  /// The service account to use in the connector when communicating with the cloud.
  final String serviceAccount;

  /// State of the DatacenterConnector, as determined by the health checks.
  final String state;

  /// The time the state was last set.
  final String stateTime;

  /// The last time the connector was updated with an API call.
  final String updateTime;

  /// The status of the current / last upgradeAppliance operation.
  final UpgradeStatusResponseVmmigrationV1alpha1 upgradeStatus;

  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  final String version;

  /// Creates a new [GetDatacenterConnectorVmmigrationV1alpha1Result].
  /// [applianceInfrastructureVersion] Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  /// [applianceSoftwareVersion] Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  /// [availableVersions] The available versions for updating this appliance.
  /// [bucket] The communication channel between the datacenter connector and Google Cloud.
  /// [createTime] The time the connector was created (as an API call, not when it was actually installed).
  /// [error] Provides details on the state of the Datacenter Connector in case of an error.
  /// [name] The connector's name.
  /// [registrationId] Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  /// [serviceAccount] The service account to use in the connector when communicating with the cloud.
  /// [state] State of the DatacenterConnector, as determined by the health checks.
  /// [stateTime] The time the state was last set.
  /// [updateTime] The last time the connector was updated with an API call.
  /// [upgradeStatus] The status of the current / last upgradeAppliance operation.
  /// [version] The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  GetDatacenterConnectorVmmigrationV1alpha1Result({
    required this.applianceInfrastructureVersion,
    required this.applianceSoftwareVersion,
    required this.availableVersions,
    required this.bucket,
    required this.createTime,
    required this.error,
    required this.name,
    required this.registrationId,
    required this.serviceAccount,
    required this.state,
    required this.stateTime,
    required this.updateTime,
    required this.upgradeStatus,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceInfrastructureVersion': applianceInfrastructureVersion,
      'applianceSoftwareVersion': applianceSoftwareVersion,
      'availableVersions': availableVersions.toMap(),
      'bucket': bucket,
      'createTime': createTime,
      'error': error.toMap(),
      'name': name,
      'registrationId': registrationId,
      'serviceAccount': serviceAccount,
      'state': state,
      'stateTime': stateTime,
      'updateTime': updateTime,
      'upgradeStatus': upgradeStatus.toMap(),
      'version': version,
    };
  }

  factory GetDatacenterConnectorVmmigrationV1alpha1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatacenterConnectorVmmigrationV1alpha1Result(
      applianceInfrastructureVersion:
          map['applianceInfrastructureVersion'] as String,
      applianceSoftwareVersion: map['applianceSoftwareVersion'] as String,
      availableVersions: AvailableUpdatesResponseVmmigrationV1alpha1.fromMap(
        (map['availableVersions']! as Map).cast<String, dynamic>(),
      ),
      bucket: map['bucket'] as String,
      createTime: map['createTime'] as String,
      error: StatusResponseVmmigrationV1alpha1.fromMap(
        (map['error']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      registrationId: map['registrationId'] as String,
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      updateTime: map['updateTime'] as String,
      upgradeStatus: UpgradeStatusResponseVmmigrationV1alpha1.fromMap(
        (map['upgradeStatus']! as Map).cast<String, dynamic>(),
      ),
      version: map['version'] as String,
    );
  }
}
