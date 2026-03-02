// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GCP cloud account connector based service to service credentials, the credentials are composed of the organization ID and a JSON API key (write only)
class GcpCredentialsDetailsProperties {
  /// Auth provider x509 certificate URL field of the API key (write only)
  final pulumi.Input<String> authProviderX509CertUrl;
  /// Auth URI field of the API key (write only)
  final pulumi.Input<String> authUri;
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'gcpCredentials'.
  final pulumi.Input<String> authenticationType;
  /// Client email field of the API key (write only)
  final pulumi.Input<String> clientEmail;
  /// Client ID field of the API key (write only)
  final pulumi.Input<String> clientId;
  /// Client x509 certificate URL field of the API key (write only)
  final pulumi.Input<String> clientX509CertUrl;
  /// The organization ID of the GCP cloud account
  final pulumi.Input<String> organizationId;
  /// Private key field of the API key (write only)
  final pulumi.Input<String> privateKey;
  /// Private key ID field of the API key (write only)
  final pulumi.Input<String> privateKeyId;
  /// Project ID field of the API key (write only)
  final pulumi.Input<String> projectId;
  /// Token URI field of the API key (write only)
  final pulumi.Input<String> tokenUri;
  /// Type field of the API key (write only)
  final pulumi.Input<String> type;

  /// Creates a new [GcpCredentialsDetailsProperties].
  /// [authProviderX509CertUrl] Auth provider x509 certificate URL field of the API key (write only)
  /// [authUri] Auth URI field of the API key (write only)
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [clientEmail] Client email field of the API key (write only)
  /// [clientId] Client ID field of the API key (write only)
  /// [clientX509CertUrl] Client x509 certificate URL field of the API key (write only)
  /// [organizationId] The organization ID of the GCP cloud account
  /// [privateKey] Private key field of the API key (write only)
  /// [privateKeyId] Private key ID field of the API key (write only)
  /// [projectId] Project ID field of the API key (write only)
  /// [tokenUri] Token URI field of the API key (write only)
  /// [type] Type field of the API key (write only)
  GcpCredentialsDetailsProperties({
    required this.authProviderX509CertUrl,
    required this.authUri,
    required this.authenticationType,
    required this.clientEmail,
    required this.clientId,
    required this.clientX509CertUrl,
    required this.organizationId,
    required this.privateKey,
    required this.privateKeyId,
    required this.projectId,
    required this.tokenUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProviderX509CertUrl': authProviderX509CertUrl,
      'authUri': authUri,
      'authenticationType': authenticationType,
      'clientEmail': clientEmail,
      'clientId': clientId,
      'clientX509CertUrl': clientX509CertUrl,
      'organizationId': organizationId,
      'privateKey': privateKey,
      'privateKeyId': privateKeyId,
      'projectId': projectId,
      'tokenUri': tokenUri,
      'type': type,
    };
  }

  factory GcpCredentialsDetailsProperties.fromMap(Map<String, dynamic> map) {
    return GcpCredentialsDetailsProperties(
      authProviderX509CertUrl: (map['authProviderX509CertUrl'] as String).input(),
      authUri: (map['authUri'] as String).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      clientEmail: (map['clientEmail'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientX509CertUrl: (map['clientX509CertUrl'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
      privateKeyId: (map['privateKeyId'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      tokenUri: (map['tokenUri'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

