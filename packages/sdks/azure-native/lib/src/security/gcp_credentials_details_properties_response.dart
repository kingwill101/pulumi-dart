// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GCP cloud account connector based service to service credentials, the credentials are composed of the organization ID and a JSON API key (write only)
class GcpCredentialsDetailsPropertiesResponse {
  /// Auth provider x509 certificate URL field of the API key (write only)
  final pulumi.Input<String> authProviderX509CertUrl;
  /// Auth URI field of the API key (write only)
  final pulumi.Input<String> authUri;
  /// State of the multi-cloud connector
  final pulumi.Input<String> authenticationProvisioningState;
  /// Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// Expected value is 'gcpCredentials'.
  final pulumi.Input<String> authenticationType;
  /// Client email field of the API key (write only)
  final pulumi.Input<String> clientEmail;
  /// Client ID field of the API key (write only)
  final pulumi.Input<String> clientId;
  /// Client x509 certificate URL field of the API key (write only)
  final pulumi.Input<String> clientX509CertUrl;
  /// The permissions detected in the cloud account.
  final pulumi.Input<List<String>> grantedPermissions;
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

  /// Creates a new [GcpCredentialsDetailsPropertiesResponse].
  /// [authProviderX509CertUrl] Auth provider x509 certificate URL field of the API key (write only)
  /// [authUri] Auth URI field of the API key (write only)
  /// [authenticationProvisioningState] State of the multi-cloud connector
  /// [authenticationType] Connect to your cloud account, for AWS use either account credentials or role-based authentication. For GCP use account organization credentials.
  /// [clientEmail] Client email field of the API key (write only)
  /// [clientId] Client ID field of the API key (write only)
  /// [clientX509CertUrl] Client x509 certificate URL field of the API key (write only)
  /// [grantedPermissions] The permissions detected in the cloud account.
  /// [organizationId] The organization ID of the GCP cloud account
  /// [privateKey] Private key field of the API key (write only)
  /// [privateKeyId] Private key ID field of the API key (write only)
  /// [projectId] Project ID field of the API key (write only)
  /// [tokenUri] Token URI field of the API key (write only)
  /// [type] Type field of the API key (write only)
  GcpCredentialsDetailsPropertiesResponse({
    required this.authProviderX509CertUrl,
    required this.authUri,
    required this.authenticationProvisioningState,
    required this.authenticationType,
    required this.clientEmail,
    required this.clientId,
    required this.clientX509CertUrl,
    required this.grantedPermissions,
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
      'authenticationProvisioningState': authenticationProvisioningState,
      'authenticationType': authenticationType,
      'clientEmail': clientEmail,
      'clientId': clientId,
      'clientX509CertUrl': clientX509CertUrl,
      'grantedPermissions': grantedPermissions,
      'organizationId': organizationId,
      'privateKey': privateKey,
      'privateKeyId': privateKeyId,
      'projectId': projectId,
      'tokenUri': tokenUri,
      'type': type,
    };
  }

  factory GcpCredentialsDetailsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GcpCredentialsDetailsPropertiesResponse(
      authProviderX509CertUrl: pulumi.Input.fromValue(map['authProviderX509CertUrl'] as String),
      authUri: pulumi.Input.fromValue(map['authUri'] as String),
      authenticationProvisioningState: pulumi.Input.fromValue(map['authenticationProvisioningState'] as String),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      clientEmail: pulumi.Input.fromValue(map['clientEmail'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientX509CertUrl: pulumi.Input.fromValue(map['clientX509CertUrl'] as String),
      grantedPermissions: pulumi.Input.fromValue((map['grantedPermissions'] as List).cast<String>()),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      privateKeyId: pulumi.Input.fromValue(map['privateKeyId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tokenUri: pulumi.Input.fromValue(map['tokenUri'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

