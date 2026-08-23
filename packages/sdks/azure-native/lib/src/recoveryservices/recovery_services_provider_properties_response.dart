// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'identity_provider_details_response.dart';
import 'version_details_response.dart';

/// Recovery services provider properties.
class RecoveryServicesProviderPropertiesResponse {
  /// The scenarios allowed on this provider.
  final pulumi.Input<List<String>>? allowedScenarios;
  /// The authentication identity details.
  final pulumi.Input<IdentityProviderDetailsResponse>? authenticationIdentityDetails;
  /// The Bios Id.
  final pulumi.Input<String>? biosId;
  /// A value indicating whether DRA is responsive.
  final pulumi.Input<String>? connectionStatus;
  /// The data plane authentication identity details.
  final pulumi.Input<IdentityProviderDetailsResponse>? dataPlaneAuthenticationIdentityDetails;
  /// The DRA Id.
  final pulumi.Input<String>? draIdentifier;
  /// The fabric friendly name.
  final pulumi.Input<String>? fabricFriendlyName;
  /// Type of the site.
  final pulumi.Input<String>? fabricType;
  /// Friendly name of the DRA.
  final pulumi.Input<String>? friendlyName;
  /// The recovery services provider health error details.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrorDetails;
  /// Time when last heartbeat was sent by the DRA.
  final pulumi.Input<String>? lastHeartBeat;
  /// The machine Id.
  final pulumi.Input<String>? machineId;
  /// The machine name.
  final pulumi.Input<String>? machineName;
  /// Number of protected VMs currently managed by the DRA.
  final pulumi.Input<int>? protectedItemCount;
  /// The provider version.
  final pulumi.Input<String>? providerVersion;
  /// The provider version details.
  final pulumi.Input<VersionDetailsResponse>? providerVersionDetails;
  /// Expiry date of the version.
  final pulumi.Input<String>? providerVersionExpiryDate;
  /// DRA version status.
  final pulumi.Input<String>? providerVersionState;
  /// The resource access identity details.
  final pulumi.Input<IdentityProviderDetailsResponse>? resourceAccessIdentityDetails;
  /// The fabric provider.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [RecoveryServicesProviderPropertiesResponse].
  /// [allowedScenarios] The scenarios allowed on this provider.
  /// [authenticationIdentityDetails] The authentication identity details.
  /// [biosId] The Bios Id.
  /// [connectionStatus] A value indicating whether DRA is responsive.
  /// [dataPlaneAuthenticationIdentityDetails] The data plane authentication identity details.
  /// [draIdentifier] The DRA Id.
  /// [fabricFriendlyName] The fabric friendly name.
  /// [fabricType] Type of the site.
  /// [friendlyName] Friendly name of the DRA.
  /// [healthErrorDetails] The recovery services provider health error details.
  /// [lastHeartBeat] Time when last heartbeat was sent by the DRA.
  /// [machineId] The machine Id.
  /// [machineName] The machine name.
  /// [protectedItemCount] Number of protected VMs currently managed by the DRA.
  /// [providerVersion] The provider version.
  /// [providerVersionDetails] The provider version details.
  /// [providerVersionExpiryDate] Expiry date of the version.
  /// [providerVersionState] DRA version status.
  /// [resourceAccessIdentityDetails] The resource access identity details.
  /// [serverVersion] The fabric provider.
  const RecoveryServicesProviderPropertiesResponse({
    this.allowedScenarios,
    this.authenticationIdentityDetails,
    this.biosId,
    this.connectionStatus,
    this.dataPlaneAuthenticationIdentityDetails,
    this.draIdentifier,
    this.fabricFriendlyName,
    this.fabricType,
    this.friendlyName,
    this.healthErrorDetails,
    this.lastHeartBeat,
    this.machineId,
    this.machineName,
    this.protectedItemCount,
    this.providerVersion,
    this.providerVersionDetails,
    this.providerVersionExpiryDate,
    this.providerVersionState,
    this.resourceAccessIdentityDetails,
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedScenarios': ?allowedScenarios,
      'authenticationIdentityDetails': ?pulumi.Input.mapOptionalInputValue<IdentityProviderDetailsResponse, Map<String, dynamic>>(authenticationIdentityDetails, (value) => value.toMap()),
      'biosId': ?biosId,
      'connectionStatus': ?connectionStatus,
      'dataPlaneAuthenticationIdentityDetails': ?pulumi.Input.mapOptionalInputValue<IdentityProviderDetailsResponse, Map<String, dynamic>>(dataPlaneAuthenticationIdentityDetails, (value) => value.toMap()),
      'draIdentifier': ?draIdentifier,
      'fabricFriendlyName': ?fabricFriendlyName,
      'fabricType': ?fabricType,
      'friendlyName': ?friendlyName,
      'healthErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrorDetails, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastHeartBeat': ?lastHeartBeat,
      'machineId': ?machineId,
      'machineName': ?machineName,
      'protectedItemCount': ?protectedItemCount,
      'providerVersion': ?providerVersion,
      'providerVersionDetails': ?pulumi.Input.mapOptionalInputValue<VersionDetailsResponse, Map<String, dynamic>>(providerVersionDetails, (value) => value.toMap()),
      'providerVersionExpiryDate': ?providerVersionExpiryDate,
      'providerVersionState': ?providerVersionState,
      'resourceAccessIdentityDetails': ?pulumi.Input.mapOptionalInputValue<IdentityProviderDetailsResponse, Map<String, dynamic>>(resourceAccessIdentityDetails, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
    };
  }

  factory RecoveryServicesProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryServicesProviderPropertiesResponse(
      allowedScenarios: (() { final guardedValue = map['allowedScenarios']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authenticationIdentityDetails: (() { final guardedValue = map['authenticationIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProviderDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      biosId: (() { final guardedValue = map['biosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStatus: (() { final guardedValue = map['connectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataPlaneAuthenticationIdentityDetails: (() { final guardedValue = map['dataPlaneAuthenticationIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProviderDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      draIdentifier: (() { final guardedValue = map['draIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricFriendlyName: (() { final guardedValue = map['fabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricType: (() { final guardedValue = map['fabricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthErrorDetails: (() { final guardedValue = map['healthErrorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastHeartBeat: (() { final guardedValue = map['lastHeartBeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: (() { final guardedValue = map['machineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemCount: (() { final guardedValue = map['protectedItemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      providerVersion: (() { final guardedValue = map['providerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerVersionDetails: (() { final guardedValue = map['providerVersionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerVersionExpiryDate: (() { final guardedValue = map['providerVersionExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerVersionState: (() { final guardedValue = map['providerVersionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAccessIdentityDetails: (() { final guardedValue = map['resourceAccessIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProviderDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
