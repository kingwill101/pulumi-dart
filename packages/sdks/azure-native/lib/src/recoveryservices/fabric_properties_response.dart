// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fabric_specific_details_response.dart';
import 'encryption_details_response.dart';
import 'health_error_response.dart';

/// Fabric properties.
class FabricPropertiesResponse {
  /// BCDR state of the fabric.
  final String? bcdrState;
  /// Fabric specific settings.
  final AzureFabricSpecificDetailsResponse? customDetails;
  /// Encryption details for the fabric.
  final EncryptionDetailsResponse? encryptionDetails;
  /// Friendly name of the fabric.
  final String? friendlyName;
  /// Health of fabric.
  final String? health;
  /// Fabric health error details.
  final List<HealthErrorResponse>? healthErrorDetails;
  /// Dra Registration Id.
  final String? internalIdentifier;
  /// Rollover encryption details for the fabric.
  final EncryptionDetailsResponse? rolloverEncryptionDetails;

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
      'customDetails': ?customDetails == null ? null : customDetails!.toMap(),
      'encryptionDetails': ?encryptionDetails == null ? null : encryptionDetails!.toMap(),
      'friendlyName': ?friendlyName,
      'health': ?health,
      'healthErrorDetails': ?healthErrorDetails == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrorDetails!, (value) => value.toMap()),
      'internalIdentifier': ?internalIdentifier,
      'rolloverEncryptionDetails': ?rolloverEncryptionDetails == null ? null : rolloverEncryptionDetails!.toMap(),
    };
  }

  factory FabricPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FabricPropertiesResponse(
      bcdrState: map['bcdrState'] == null ? null : map['bcdrState'] as String,
      customDetails: map['customDetails'] == null ? null : AzureFabricSpecificDetailsResponse.fromMap((map['customDetails'] as Map).cast<String, dynamic>()),
      encryptionDetails: map['encryptionDetails'] == null ? null : EncryptionDetailsResponse.fromMap((map['encryptionDetails'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      health: map['health'] == null ? null : map['health'] as String,
      healthErrorDetails: map['healthErrorDetails'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrorDetails'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      internalIdentifier: map['internalIdentifier'] == null ? null : map['internalIdentifier'] as String,
      rolloverEncryptionDetails: map['rolloverEncryptionDetails'] == null ? null : EncryptionDetailsResponse.fromMap((map['rolloverEncryptionDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

