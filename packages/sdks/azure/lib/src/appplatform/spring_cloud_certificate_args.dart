// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_certificate_spring_cloud_certificate_args_doc}
/// The set of arguments for SpringCloudCertificate.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_certificate_spring_cloud_certificate_args_doc}
class SpringCloudCertificateArgs {
  /// The content of uploaded certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? certificateContent;
  /// Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? excludePrivateKey;
  /// Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultCertificateId;
  /// Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceName;

  /// Creates a new [SpringCloudCertificateArgs].
  /// [certificateContent] The content of uploaded certificate. Changing this forces a new resource to be created.
  /// [excludePrivateKey] Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`.
  /// [keyVaultCertificateId] Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
  /// [serviceName] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  SpringCloudCertificateArgs({
    this.certificateContent,
    this.excludePrivateKey,
    this.keyVaultCertificateId,
    this.name,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': ?certificateContent,
      'excludePrivateKey': ?excludePrivateKey,
      'keyVaultCertificateId': ?keyVaultCertificateId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory SpringCloudCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudCertificateArgs(
      certificateContent: map['certificateContent'] == null ? null : (map['certificateContent'] as String).input(),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : (map['excludePrivateKey'] as bool).input(),
      keyVaultCertificateId: map['keyVaultCertificateId'] == null ? null : (map['keyVaultCertificateId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

