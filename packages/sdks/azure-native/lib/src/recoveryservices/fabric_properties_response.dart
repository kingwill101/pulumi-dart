// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fabric_specific_details_response.dart';
import 'encryption_details_response.dart';
import 'health_error_response.dart';

/// Fabric properties.
class FabricPropertiesResponse {
  /// BCDR state of the fabric.
  final pulumi.Input<String>? bcdrState;
  /// Fabric specific settings.
  final pulumi.Input<AzureFabricSpecificDetailsResponse>? customDetails;
  /// Encryption details for the fabric.
  final pulumi.Input<EncryptionDetailsResponse>? encryptionDetails;
  /// Friendly name of the fabric.
  final pulumi.Input<String>? friendlyName;
  /// Health of fabric.
  final pulumi.Input<String>? health;
  /// Fabric health error details.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrorDetails;
  /// Dra Registration Id.
  final pulumi.Input<String>? internalIdentifier;
  /// Rollover encryption details for the fabric.
  final pulumi.Input<EncryptionDetailsResponse>? rolloverEncryptionDetails;

  /// Creates a new [FabricPropertiesResponse].
  /// [bcdrState] BCDR state of the fabric.
  /// [customDetails] Fabric specific settings.
  /// [encryptionDetails] Encryption details for the fabric.
  /// [friendlyName] Friendly name of the fabric.
  /// [health] Health of fabric.
  /// [healthErrorDetails] Fabric health error details.
  /// [internalIdentifier] Dra Registration Id.
  /// [rolloverEncryptionDetails] Rollover encryption details for the fabric.
  const FabricPropertiesResponse({
    this.bcdrState,
    this.customDetails,
    this.encryptionDetails,
    this.friendlyName,
    this.health,
    this.healthErrorDetails,
    this.internalIdentifier,
    this.rolloverEncryptionDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bcdrState': ?bcdrState,
      'customDetails': ?pulumi.Input.mapOptionalInputValue<AzureFabricSpecificDetailsResponse, Map<String, dynamic>>(customDetails, (value) => value.toMap()),
      'encryptionDetails': ?pulumi.Input.mapOptionalInputValue<EncryptionDetailsResponse, Map<String, dynamic>>(encryptionDetails, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'health': ?health,
      'healthErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrorDetails, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalIdentifier': ?internalIdentifier,
      'rolloverEncryptionDetails': ?pulumi.Input.mapOptionalInputValue<EncryptionDetailsResponse, Map<String, dynamic>>(rolloverEncryptionDetails, (value) => value.toMap()),
    };
  }

  factory FabricPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FabricPropertiesResponse(
      bcdrState: (() { final guardedValue = map['bcdrState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFabricSpecificDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionDetails: (() { final guardedValue = map['encryptionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthErrorDetails: (() { final guardedValue = map['healthErrorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      internalIdentifier: (() { final guardedValue = map['internalIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloverEncryptionDetails: (() { final guardedValue = map['rolloverEncryptionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

