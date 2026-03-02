// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudCertificate resources.
class SpringCloudCertificateState {
  /// The content of uploaded certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? certificateContent;
  /// Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? excludePrivateKey;
  /// Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultCertificateId;
  /// Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serviceName;
  /// The thumbprint of the Spring Cloud certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SpringCloudCertificateState].
  /// [certificateContent] The content of uploaded certificate. Changing this forces a new resource to be created.
  /// [excludePrivateKey] Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`.
  /// [keyVaultCertificateId] Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
  /// [serviceName] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  /// [thumbprint] The thumbprint of the Spring Cloud certificate.
  SpringCloudCertificateState({
    this.certificateContent,
    this.excludePrivateKey,
    this.keyVaultCertificateId,
    this.name,
    this.resourceGroupName,
    this.serviceName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': ?certificateContent,
      'excludePrivateKey': ?excludePrivateKey,
      'keyVaultCertificateId': ?keyVaultCertificateId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serviceName': ?serviceName,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudCertificateState.fromMap(Map<String, dynamic> map) {
    return SpringCloudCertificateState(
      certificateContent: map['certificateContent'] == null ? null : (map['certificateContent'] as String).input(),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : (map['excludePrivateKey'] as bool).input(),
      keyVaultCertificateId: map['keyVaultCertificateId'] == null ? null : (map['keyVaultCertificateId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

