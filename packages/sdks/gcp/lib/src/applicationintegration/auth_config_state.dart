// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_client_certificate.dart';
import 'auth_config_decrypted_credential.dart';

/// Input properties used for looking up and filtering AuthConfig resources.
class AuthConfigState {
  /// Certificate id for client certificate.
  final pulumi.Input<String>? certificateId;
  /// Raw client certificate
  /// Structure is documented below.
  final pulumi.Input<AuthConfigClientCertificate>? clientCertificate;
  /// The timestamp when the auth config is created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? creatorEmail;
  /// Credential type of the encrypted credential.
  final pulumi.Input<String>? credentialType;
  /// Raw auth credentials.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredential>? decryptedCredential;
  /// A description of the auth config.
  final pulumi.Input<String>? description;
  /// The name of the auth config.
  final pulumi.Input<String>? displayName;
  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  /// A base64-encoded string.
  final pulumi.Input<String>? encryptedCredential;
  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<List<String>>? expiryNotificationDurations;
  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  /// Location in which client needs to be provisioned.
  final pulumi.Input<String>? location;
  /// Resource name of the auth config.
  final pulumi.Input<String>? name;
  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? overrideValidTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reason / details of the current status.
  final pulumi.Input<String>? reason;
  /// The status of the auth config.
  final pulumi.Input<String>? state;
  /// The timestamp when the auth config is modified.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? validTime;
  /// The visibility of the auth config.
  /// Possible values are: `PRIVATE`, `CLIENT_VISIBLE`.
  final pulumi.Input<String>? visibility;

  /// Creates a new [AuthConfigState].
  /// [certificateId] Certificate id for client certificate.
  /// [clientCertificate] Raw client certificate
  /// [createTime] The timestamp when the auth config is created.
  /// [creatorEmail] The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [credentialType] Credential type of the encrypted credential.
  /// [decryptedCredential] Raw auth credentials.
  /// [description] A description of the auth config.
  /// [displayName] The name of the auth config.
  /// [encryptedCredential] Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  /// [expiryNotificationDurations] User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// [lastModifierEmail] The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Location in which client needs to be provisioned.
  /// [name] Resource name of the auth config.
  /// [overrideValidTime] User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// [project] The ID of the project in which the resource belongs.
  /// [reason] The reason / details of the current status.
  /// [state] The status of the auth config.
  /// [updateTime] The timestamp when the auth config is modified.
  /// [validTime] The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  /// [visibility] The visibility of the auth config.
  AuthConfigState({
    this.certificateId,
    this.clientCertificate,
    this.createTime,
    this.creatorEmail,
    this.credentialType,
    this.decryptedCredential,
    this.description,
    this.displayName,
    this.encryptedCredential,
    this.expiryNotificationDurations,
    this.lastModifierEmail,
    this.location,
    this.name,
    this.overrideValidTime,
    this.project,
    this.reason,
    this.state,
    this.updateTime,
    this.validTime,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<AuthConfigClientCertificate, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'createTime': ?createTime,
      'creatorEmail': ?creatorEmail,
      'credentialType': ?credentialType,
      'decryptedCredential': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredential, Map<String, dynamic>>(decryptedCredential, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'encryptedCredential': ?encryptedCredential,
      'expiryNotificationDurations': ?expiryNotificationDurations,
      'lastModifierEmail': ?lastModifierEmail,
      'location': ?location,
      'name': ?name,
      'overrideValidTime': ?overrideValidTime,
      'project': ?project,
      'reason': ?reason,
      'state': ?state,
      'updateTime': ?updateTime,
      'validTime': ?validTime,
      'visibility': ?visibility,
    };
  }

  factory AuthConfigState.fromMap(Map<String, dynamic> map) {
    return AuthConfigState(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as String).input(),
      clientCertificate: map['clientCertificate'] == null ? null : (AuthConfigClientCertificate.fromMap((map['clientCertificate']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      creatorEmail: map['creatorEmail'] == null ? null : (map['creatorEmail']! as String).input(),
      credentialType: map['credentialType'] == null ? null : (map['credentialType']! as String).input(),
      decryptedCredential: map['decryptedCredential'] == null ? null : (AuthConfigDecryptedCredential.fromMap((map['decryptedCredential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      expiryNotificationDurations: map['expiryNotificationDurations'] == null ? null : ((map['expiryNotificationDurations']! as List).cast<String>()).input(),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : (map['lastModifierEmail']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      overrideValidTime: map['overrideValidTime'] == null ? null : (map['overrideValidTime']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      validTime: map['validTime'] == null ? null : (map['validTime']! as String).input(),
      visibility: map['visibility'] == null ? null : (map['visibility']! as String).input(),
    );
  }
}

