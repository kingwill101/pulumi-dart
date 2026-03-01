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
    pulumi.Output<String>? certificateContent,
    pulumi.Output<bool>? excludePrivateKey,
    pulumi.Output<String>? keyVaultCertificateId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      certificateContent = pulumi.Input.asOptionalInput<String>(certificateContent),
      excludePrivateKey = pulumi.Input.asOptionalInput<bool>(excludePrivateKey),
      keyVaultCertificateId = pulumi.Input.asOptionalInput<String>(keyVaultCertificateId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      certificateContent: map['certificateContent'] == null ? null : pulumi.Output.create<String>(map['certificateContent'] as String),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : pulumi.Output.create<bool>(map['excludePrivateKey'] as bool),
      keyVaultCertificateId: map['keyVaultCertificateId'] == null ? null : pulumi.Output.create<String>(map['keyVaultCertificateId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

