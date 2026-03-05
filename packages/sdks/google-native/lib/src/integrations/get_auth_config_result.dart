// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_credential_response.dart';

/// Result data returned by getAuthConfig.
class GetAuthConfigResult {
  /// Certificate id for client certificate
  final String certificateId;
  /// The timestamp when the auth config is created.
  final String createTime;
  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String creatorEmail;
  /// Credential type of the encrypted credential.
  final String credentialType;
  /// Raw auth credentials.
  final GoogleCloudIntegrationsV1alphaCredentialResponse decryptedCredential;
  /// A description of the auth config.
  final String description;
  /// The name of the auth config.
  final String displayName;
  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  final String encryptedCredential;
  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  final List<String> expiryNotificationDuration;
  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String lastModifierEmail;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  final String name;
  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  final String overrideValidTime;
  /// The reason / details of the current status.
  final String reason;
  /// The status of the auth config.
  final String state;
  /// The timestamp when the auth config is modified.
  final String updateTime;
  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  final String validTime;
  /// The visibility of the auth config.
  final String visibility;

  /// Creates a new [GetAuthConfigResult].
  /// [certificateId] Certificate id for client certificate
  /// [createTime] The timestamp when the auth config is created.
  /// [creatorEmail] The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [credentialType] Credential type of the encrypted credential.
  /// [decryptedCredential] Raw auth credentials.
  /// [description] A description of the auth config.
  /// [displayName] The name of the auth config.
  /// [encryptedCredential] Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  /// [expiryNotificationDuration] User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// [lastModifierEmail] The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  /// [overrideValidTime] User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// [reason] The reason / details of the current status.
  /// [state] The status of the auth config.
  /// [updateTime] The timestamp when the auth config is modified.
  /// [validTime] The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  /// [visibility] The visibility of the auth config.
  GetAuthConfigResult({
    required this.certificateId,
    required this.createTime,
    required this.creatorEmail,
    required this.credentialType,
    required this.decryptedCredential,
    required this.description,
    required this.displayName,
    required this.encryptedCredential,
    required this.expiryNotificationDuration,
    required this.lastModifierEmail,
    required this.name,
    required this.overrideValidTime,
    required this.reason,
    required this.state,
    required this.updateTime,
    required this.validTime,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'createTime': createTime,
      'creatorEmail': creatorEmail,
      'credentialType': credentialType,
      'decryptedCredential': decryptedCredential.toMap(),
      'description': description,
      'displayName': displayName,
      'encryptedCredential': encryptedCredential,
      'expiryNotificationDuration': expiryNotificationDuration,
      'lastModifierEmail': lastModifierEmail,
      'name': name,
      'overrideValidTime': overrideValidTime,
      'reason': reason,
      'state': state,
      'updateTime': updateTime,
      'validTime': validTime,
      'visibility': visibility,
    };
  }

  factory GetAuthConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAuthConfigResult(
      certificateId: map['certificateId'] as String,
      createTime: map['createTime'] as String,
      creatorEmail: map['creatorEmail'] as String,
      credentialType: map['credentialType'] as String,
      decryptedCredential: GoogleCloudIntegrationsV1alphaCredentialResponse.fromMap((map['decryptedCredential']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      encryptedCredential: map['encryptedCredential'] as String,
      expiryNotificationDuration: (map['expiryNotificationDuration'] as List).cast<String>(),
      lastModifierEmail: map['lastModifierEmail'] as String,
      name: map['name'] as String,
      overrideValidTime: map['overrideValidTime'] as String,
      reason: map['reason'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      validTime: map['validTime'] as String,
      visibility: map['visibility'] as String,
    );
  }
}

