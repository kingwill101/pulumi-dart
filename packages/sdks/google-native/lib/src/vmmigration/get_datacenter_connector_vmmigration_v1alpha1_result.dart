// ignore_for_file: unused_element, unnecessary_cast

import 'available_updates_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'upgrade_status_response_vmmigration_v1alpha1.dart';

/// Result data returned by getDatacenterConnector.
class GetDatacenterConnectorVmmigrationV1alpha1Result {
  /// Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  final String? applianceInfrastructureVersion;
  /// Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  final String? applianceSoftwareVersion;
  /// The available versions for updating this appliance.
  final AvailableUpdatesResponseVmmigrationV1alpha1? availableVersions;
  /// The communication channel between the datacenter connector and Google Cloud.
  final String? bucket;
  /// The time the connector was created (as an API call, not when it was actually installed).
  final String? createTime;
  /// Provides details on the state of the Datacenter Connector in case of an error.
  final StatusResponseVmmigrationV1alpha1? error;
  /// The connector's name.
  final String? name;
  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  final String? registrationId;
  /// The service account to use in the connector when communicating with the cloud.
  final String? serviceAccount;
  /// State of the DatacenterConnector, as determined by the health checks.
  final String? state;
  /// The time the state was last set.
  final String? stateTime;
  /// The last time the connector was updated with an API call.
  final String? updateTime;
  /// The status of the current / last upgradeAppliance operation.
  final UpgradeStatusResponseVmmigrationV1alpha1? upgradeStatus;
  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  final String? version;

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
  const GetDatacenterConnectorVmmigrationV1alpha1Result({
    this.applianceInfrastructureVersion,
    this.applianceSoftwareVersion,
    this.availableVersions,
    this.bucket,
    this.createTime,
    this.error,
    this.name,
    this.registrationId,
    this.serviceAccount,
    this.state,
    this.stateTime,
    this.updateTime,
    this.upgradeStatus,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceInfrastructureVersion': ?applianceInfrastructureVersion,
      'applianceSoftwareVersion': ?applianceSoftwareVersion,
      'availableVersions': ?availableVersions?.toMap(),
      'bucket': ?bucket,
      'createTime': ?createTime,
      'error': ?error?.toMap(),
      'name': ?name,
      'registrationId': ?registrationId,
      'serviceAccount': ?serviceAccount,
      'state': ?state,
      'stateTime': ?stateTime,
      'updateTime': ?updateTime,
      'upgradeStatus': ?upgradeStatus?.toMap(),
      'version': ?version,
    };
  }

  factory GetDatacenterConnectorVmmigrationV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorVmmigrationV1alpha1Result(
      applianceInfrastructureVersion: (() { final guardedValue = map['applianceInfrastructureVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applianceSoftwareVersion: (() { final guardedValue = map['applianceSoftwareVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableVersions: (() { final guardedValue = map['availableVersions']; if (guardedValue == null) return null; return AvailableUpdatesResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationId: (() { final guardedValue = map['registrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeStatus: (() { final guardedValue = map['upgradeStatus']; if (guardedValue == null) return null; return UpgradeStatusResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
