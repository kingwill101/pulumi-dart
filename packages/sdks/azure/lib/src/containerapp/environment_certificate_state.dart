// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_certificate_certificate_key_vault.dart';

/// Input properties used for looking up and filtering EnvironmentCertificate resources.
class EnvironmentCertificateState {
  /// The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of `certificate_blob_base64` and `certificate_key_vault` must be set.
  final pulumi.Input<String>? certificateBlobBase64;
  /// A `certificate_key_vault` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** one of `certificate_blob_base64` and `certificate_key_vault` must be set.
  final pulumi.Input<EnvironmentCertificateCertificateKeyVault>? certificateKeyVault;
  /// The password for the Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** required if `certificate_blob_base64` is specified.
  final pulumi.Input<String>? certificatePassword;
  /// The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// The expiration date for the Certificate.
  final pulumi.Input<String>? expirationDate;
  /// The date of issue for the Certificate.
  final pulumi.Input<String>? issueDate;
  /// The Certificate Issuer.
  final pulumi.Input<String>? issuer;
  /// The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Subject Name for the Certificate.
  final pulumi.Input<String>? subjectName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Thumbprint of the Certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [EnvironmentCertificateState].
  /// [certificateBlobBase64] The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created.
  /// [certificateKeyVault] A `certificate_key_vault` block as defined below. Changing this forces a new resource to be created.
  /// [certificatePassword] The password for the Certificate. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentId] The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created.
  /// [expirationDate] The expiration date for the Certificate.
  /// [issueDate] The date of issue for the Certificate.
  /// [issuer] The Certificate Issuer.
  /// [name] The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created.
  /// [subjectName] The Subject Name for the Certificate.
  /// [tags] A mapping of tags to assign to the resource.
  /// [thumbprint] The Thumbprint of the Certificate.
  EnvironmentCertificateState({
    this.certificateBlobBase64,
    this.certificateKeyVault,
    this.certificatePassword,
    this.containerAppEnvironmentId,
    this.expirationDate,
    this.issueDate,
    this.issuer,
    this.name,
    this.subjectName,
    this.tags,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBlobBase64': ?certificateBlobBase64,
      'certificateKeyVault': ?pulumi.Input.mapOptionalInputValue<EnvironmentCertificateCertificateKeyVault, Map<String, dynamic>>(certificateKeyVault, (value) => value.toMap()),
      'certificatePassword': ?certificatePassword,
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'expirationDate': ?expirationDate,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'name': ?name,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
    };
  }

  factory EnvironmentCertificateState.fromMap(Map<String, dynamic> map) {
    return EnvironmentCertificateState(
      certificateBlobBase64: map['certificateBlobBase64'] == null ? null : (map['certificateBlobBase64']! as String).input(),
      certificateKeyVault: map['certificateKeyVault'] == null ? null : (EnvironmentCertificateCertificateKeyVault.fromMap((map['certificateKeyVault']! as Map).cast<String, dynamic>())).input(),
      certificatePassword: map['certificatePassword'] == null ? null : (map['certificatePassword']! as String).input(),
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : (map['containerAppEnvironmentId']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      issueDate: map['issueDate'] == null ? null : (map['issueDate']! as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      subjectName: map['subjectName'] == null ? null : (map['subjectName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

