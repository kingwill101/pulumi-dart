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
  FabricPropertiesResponse({
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
      bcdrState: map['bcdrState'] == null ? null : (map['bcdrState']! as String).input(),
      customDetails: map['customDetails'] == null ? null : (AzureFabricSpecificDetailsResponse.fromMap((map['customDetails']! as Map).cast<String, dynamic>())).input(),
      encryptionDetails: map['encryptionDetails'] == null ? null : (EncryptionDetailsResponse.fromMap((map['encryptionDetails']! as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      health: map['health'] == null ? null : (map['health']! as String).input(),
      healthErrorDetails: map['healthErrorDetails'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrorDetails']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internalIdentifier: map['internalIdentifier'] == null ? null : (map['internalIdentifier']! as String).input(),
      rolloverEncryptionDetails: map['rolloverEncryptionDetails'] == null ? null : (EncryptionDetailsResponse.fromMap((map['rolloverEncryptionDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

