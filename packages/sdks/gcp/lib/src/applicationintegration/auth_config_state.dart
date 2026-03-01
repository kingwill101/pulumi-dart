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
    pulumi.Output<String>? certificateId,
    pulumi.Output<AuthConfigClientCertificate>? clientCertificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creatorEmail,
    pulumi.Output<String>? credentialType,
    pulumi.Output<AuthConfigDecryptedCredential>? decryptedCredential,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? encryptedCredential,
    pulumi.Output<List<String>>? expiryNotificationDurations,
    pulumi.Output<String>? lastModifierEmail,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? overrideValidTime,
    pulumi.Output<String>? project,
    pulumi.Output<String>? reason,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? validTime,
    pulumi.Output<String>? visibility,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      clientCertificate = pulumi.Input.asOptionalInput<AuthConfigClientCertificate>(clientCertificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creatorEmail = pulumi.Input.asOptionalInput<String>(creatorEmail),
      credentialType = pulumi.Input.asOptionalInput<String>(credentialType),
      decryptedCredential = pulumi.Input.asOptionalInput<AuthConfigDecryptedCredential>(decryptedCredential),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      encryptedCredential = pulumi.Input.asOptionalInput<String>(encryptedCredential),
      expiryNotificationDurations = pulumi.Input.asOptionalInput<List<String>>(expiryNotificationDurations),
      lastModifierEmail = pulumi.Input.asOptionalInput<String>(lastModifierEmail),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      overrideValidTime = pulumi.Input.asOptionalInput<String>(overrideValidTime),
      project = pulumi.Input.asOptionalInput<String>(project),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      validTime = pulumi.Input.asOptionalInput<String>(validTime),
      visibility = pulumi.Input.asOptionalInput<String>(visibility);

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
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<AuthConfigClientCertificate>(AuthConfigClientCertificate.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creatorEmail: map['creatorEmail'] == null ? null : pulumi.Output.create<String>(map['creatorEmail'] as String),
      credentialType: map['credentialType'] == null ? null : pulumi.Output.create<String>(map['credentialType'] as String),
      decryptedCredential: map['decryptedCredential'] == null ? null : pulumi.Output.create<AuthConfigDecryptedCredential>(AuthConfigDecryptedCredential.fromMap((map['decryptedCredential'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      encryptedCredential: map['encryptedCredential'] == null ? null : pulumi.Output.create<String>(map['encryptedCredential'] as String),
      expiryNotificationDurations: map['expiryNotificationDurations'] == null ? null : pulumi.Output.create<List<String>>((map['expiryNotificationDurations'] as List).cast<String>()),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : pulumi.Output.create<String>(map['lastModifierEmail'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      overrideValidTime: map['overrideValidTime'] == null ? null : pulumi.Output.create<String>(map['overrideValidTime'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      validTime: map['validTime'] == null ? null : pulumi.Output.create<String>(map['validTime'] as String),
      visibility: map['visibility'] == null ? null : pulumi.Output.create<String>(map['visibility'] as String),
    );
  }
}

