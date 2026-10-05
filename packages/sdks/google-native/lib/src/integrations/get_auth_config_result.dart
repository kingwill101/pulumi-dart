// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_credential_response.dart';

/// Result data returned by getAuthConfig.
class GetAuthConfigResult {
  /// Certificate id for client certificate
  final String? certificateId;
  /// The timestamp when the auth config is created.
  final String? createTime;
  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String? creatorEmail;
  /// Credential type of the encrypted credential.
  final String? credentialType;
  /// Raw auth credentials.
  final GoogleCloudIntegrationsV1alphaCredentialResponse? decryptedCredential;
  /// A description of the auth config.
  final String? description;
  /// The name of the auth config.
  final String? displayName;
  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  final String? encryptedCredential;
  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  final List<String>? expiryNotificationDuration;
  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final String? lastModifierEmail;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  final String? name;
  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  final String? overrideValidTime;
  /// The reason / details of the current status.
  final String? reason;
  /// The status of the auth config.
  final String? state;
  /// The timestamp when the auth config is modified.
  final String? updateTime;
  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  final String? validTime;
  /// The visibility of the auth config.
  final String? visibility;

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
  const GetAuthConfigResult({
    this.certificateId,
    this.createTime,
    this.creatorEmail,
    this.credentialType,
    this.decryptedCredential,
    this.description,
    this.displayName,
    this.encryptedCredential,
    this.expiryNotificationDuration,
    this.lastModifierEmail,
    this.name,
    this.overrideValidTime,
    this.reason,
    this.state,
    this.updateTime,
    this.validTime,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'createTime': ?createTime,
      'creatorEmail': ?creatorEmail,
      'credentialType': ?credentialType,
      'decryptedCredential': ?decryptedCredential?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'encryptedCredential': ?encryptedCredential,
      'expiryNotificationDuration': ?expiryNotificationDuration,
      'lastModifierEmail': ?lastModifierEmail,
      'name': ?name,
      'overrideValidTime': ?overrideValidTime,
      'reason': ?reason,
      'state': ?state,
      'updateTime': ?updateTime,
      'validTime': ?validTime,
      'visibility': ?visibility,
    };
  }

  factory GetAuthConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAuthConfigResult(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorEmail: (() { final guardedValue = map['creatorEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      decryptedCredential: (() { final guardedValue = map['decryptedCredential']; if (guardedValue == null) return null; return GoogleCloudIntegrationsV1alphaCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryNotificationDuration: (() { final guardedValue = map['expiryNotificationDuration']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      lastModifierEmail: (() { final guardedValue = map['lastModifierEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      overrideValidTime: (() { final guardedValue = map['overrideValidTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validTime: (() { final guardedValue = map['validTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
