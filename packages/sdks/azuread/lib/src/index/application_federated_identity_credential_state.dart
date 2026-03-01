// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationFederatedIdentityCredential resources.
class ApplicationFederatedIdentityCredentialState {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  final pulumi.Input<List<String>>? audiences;
  /// A UUID used to uniquely identify this federated identity credential.
  final pulumi.Input<String>? credentialId;
  /// A description for the federated identity credential.
  final pulumi.Input<String>? description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app.
  final pulumi.Input<String>? issuer;
  /// The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app.
  final pulumi.Input<String>? subject;

  /// Creates a new [ApplicationFederatedIdentityCredentialState].
  /// [applicationId] The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  /// [audiences] List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  /// [credentialId] A UUID used to uniquely identify this federated identity credential.
  /// [description] A description for the federated identity credential.
  /// [displayName] A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  /// [issuer] The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app.
  /// [subject] The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app.
  ApplicationFederatedIdentityCredentialState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<String>>? audiences,
    pulumi.Output<String>? credentialId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? issuer,
    pulumi.Output<String>? subject,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      audiences = pulumi.Input.asOptionalInput<List<String>>(audiences),
      credentialId = pulumi.Input.asOptionalInput<String>(credentialId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      issuer = pulumi.Input.asOptionalInput<String>(issuer),
      subject = pulumi.Input.asOptionalInput<String>(subject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'audiences': ?audiences,
      'credentialId': ?credentialId,
      'description': ?description,
      'displayName': ?displayName,
      'issuer': ?issuer,
      'subject': ?subject,
    };
  }

  factory ApplicationFederatedIdentityCredentialState.fromMap(Map<String, dynamic> map) {
    return ApplicationFederatedIdentityCredentialState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      audiences: map['audiences'] == null ? null : pulumi.Output.create<List<String>>((map['audiences'] as List).cast<String>()),
      credentialId: map['credentialId'] == null ? null : pulumi.Output.create<String>(map['credentialId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      issuer: map['issuer'] == null ? null : pulumi.Output.create<String>(map['issuer'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<String>(map['subject'] as String),
    );
  }
}

