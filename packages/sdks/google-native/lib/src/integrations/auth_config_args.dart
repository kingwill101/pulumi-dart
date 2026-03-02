// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_credential_type.dart';
import 'auth_config_state.dart';
import 'auth_config_visibility.dart';
import 'google_cloud_integrations_v1alpha_credential.dart';

/// {@template pulumi_integrations_v1alpha_auth_config_args_doc}
/// The set of arguments for AuthConfig.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_auth_config_args_doc}
class AuthConfigArgs {
  /// Certificate id for client certificate
  final pulumi.Input<String>? certificateId;
  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  final pulumi.Input<String>? clientCertificateEncryptedPrivateKey;
  /// 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  final pulumi.Input<String>? clientCertificatePassphrase;
  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  final pulumi.Input<String>? clientCertificateSslCertificate;
  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? creatorEmail;
  /// Credential type of the encrypted credential.
  final pulumi.Input<AuthConfigCredentialType>? credentialType;
  /// Raw auth credentials.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCredential>? decryptedCredential;
  /// A description of the auth config.
  final pulumi.Input<String>? description;
  /// The name of the auth config.
  final pulumi.Input<String> displayName;
  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  final pulumi.Input<String>? encryptedCredential;
  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  final pulumi.Input<List<String>>? expiryNotificationDuration;
  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  final pulumi.Input<String>? name;
  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  final pulumi.Input<String>? overrideValidTime;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// The reason / details of the current status.
  final pulumi.Input<String>? reason;
  /// The status of the auth config.
  final pulumi.Input<AuthConfigState>? state;
  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  final pulumi.Input<String>? validTime;
  /// The visibility of the auth config.
  final pulumi.Input<AuthConfigVisibility>? visibility;

  /// Creates a new [AuthConfigArgs].
  /// [certificateId] Certificate id for client certificate
  /// [clientCertificateEncryptedPrivateKey] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  /// [clientCertificatePassphrase] 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  /// [clientCertificateSslCertificate] The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  /// [creatorEmail] The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [credentialType] Credential type of the encrypted credential.
  /// [decryptedCredential] Raw auth credentials.
  /// [description] A description of the auth config.
  /// [displayName] The name of the auth config.
  /// [encryptedCredential] Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  /// [expiryNotificationDuration] User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// [lastModifierEmail] The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Optional.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  /// [overrideValidTime] User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// [productId] Required.
  /// [project] Optional.
  /// [reason] The reason / details of the current status.
  /// [state] The status of the auth config.
  /// [validTime] The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  /// [visibility] The visibility of the auth config.
  AuthConfigArgs({
    this.certificateId,
    this.clientCertificateEncryptedPrivateKey,
    this.clientCertificatePassphrase,
    this.clientCertificateSslCertificate,
    this.creatorEmail,
    this.credentialType,
    this.decryptedCredential,
    this.description,
    required this.displayName,
    this.encryptedCredential,
    this.expiryNotificationDuration,
    this.lastModifierEmail,
    this.location,
    this.name,
    this.overrideValidTime,
    required this.productId,
    this.project,
    this.reason,
    this.state,
    this.validTime,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'clientCertificateEncryptedPrivateKey': ?clientCertificateEncryptedPrivateKey,
      'clientCertificatePassphrase': ?clientCertificatePassphrase,
      'clientCertificateSslCertificate': ?clientCertificateSslCertificate,
      'creatorEmail': ?creatorEmail,
      'credentialType': ?pulumi.Input.mapOptionalInputValue<AuthConfigCredentialType, String>(credentialType, (value) => value.value),
      'decryptedCredential': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaCredential, Map<String, dynamic>>(decryptedCredential, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'encryptedCredential': ?encryptedCredential,
      'expiryNotificationDuration': ?expiryNotificationDuration,
      'lastModifierEmail': ?lastModifierEmail,
      'location': ?location,
      'name': ?name,
      'overrideValidTime': ?overrideValidTime,
      'productId': productId,
      'project': ?project,
      'reason': ?reason,
      'state': ?pulumi.Input.mapOptionalInputValue<AuthConfigState, String>(state, (value) => value.value),
      'validTime': ?validTime,
      'visibility': ?pulumi.Input.mapOptionalInputValue<AuthConfigVisibility, String>(visibility, (value) => value.value),
    };
  }

  factory AuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return AuthConfigArgs(
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as String).input(),
      clientCertificateEncryptedPrivateKey: map['clientCertificateEncryptedPrivateKey'] == null ? null : (map['clientCertificateEncryptedPrivateKey'] as String).input(),
      clientCertificatePassphrase: map['clientCertificatePassphrase'] == null ? null : (map['clientCertificatePassphrase'] as String).input(),
      clientCertificateSslCertificate: map['clientCertificateSslCertificate'] == null ? null : (map['clientCertificateSslCertificate'] as String).input(),
      creatorEmail: map['creatorEmail'] == null ? null : (map['creatorEmail'] as String).input(),
      credentialType: map['credentialType'] == null ? null : (AuthConfigCredentialType.fromValue(map['credentialType'] as String)).input(),
      decryptedCredential: map['decryptedCredential'] == null ? null : (GoogleCloudIntegrationsV1alphaCredential.fromMap((map['decryptedCredential'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      expiryNotificationDuration: map['expiryNotificationDuration'] == null ? null : ((map['expiryNotificationDuration'] as List).cast<String>()).input(),
      lastModifierEmail: map['lastModifierEmail'] == null ? null : (map['lastModifierEmail'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      overrideValidTime: map['overrideValidTime'] == null ? null : (map['overrideValidTime'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      state: map['state'] == null ? null : (AuthConfigState.fromValue(map['state'] as String)).input(),
      validTime: map['validTime'] == null ? null : (map['validTime'] as String).input(),
      visibility: map['visibility'] == null ? null : (AuthConfigVisibility.fromValue(map['visibility'] as String)).input(),
    );
  }
}

