// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_certificate_authority_config.dart';

/// {@template pulumi_certificatemanager_certificate_issuance_config_certificate_issuance_config_args_doc}
/// The set of arguments for CertificateIssuanceConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_issuance_config_certificate_issuance_config_args_doc}
class CertificateIssuanceConfigArgs {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  final pulumi.Input<CertificateIssuanceConfigCertificateAuthorityConfig> certificateAuthorityConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final pulumi.Input<String>? description;
  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  final pulumi.Input<String> keyAlgorithm;
  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  final pulumi.Input<String> lifetime;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  final pulumi.Input<int> rotationWindowPercentage;

  /// Creates a new [CertificateIssuanceConfigArgs].
  /// [certificateAuthorityConfig] The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] One or more paragraphs of text description of a CertificateIssuanceConfig.
  /// [keyAlgorithm] Key algorithm to use when generating the private key.
  /// [labels] 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// [lifetime] Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] A user-defined name of the certificate issuance config.
  /// [project] The ID of the project in which the resource belongs.
  /// [rotationWindowPercentage] It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  const CertificateIssuanceConfigArgs({
    required this.certificateAuthorityConfig,
    this.deletionPolicy,
    this.description,
    required this.keyAlgorithm,
    this.labels,
    required this.lifetime,
    this.location,
    this.name,
    this.project,
    required this.rotationWindowPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig': pulumi.Input.mapInputValue<CertificateIssuanceConfigCertificateAuthorityConfig, Map<String, dynamic>>(certificateAuthorityConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'keyAlgorithm': keyAlgorithm,
      'labels': ?labels,
      'lifetime': lifetime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rotationWindowPercentage': rotationWindowPercentage,
    };
  }

  factory CertificateIssuanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigArgs(
      certificateAuthorityConfig: pulumi.Input.fromValue(CertificateIssuanceConfigCertificateAuthorityConfig.fromMap((map['certificateAuthorityConfig']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyAlgorithm: pulumi.Input.fromValue(map['keyAlgorithm'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifetime: pulumi.Input.fromValue(map['lifetime'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotationWindowPercentage: pulumi.Input.fromValue(map['rotationWindowPercentage'] as int),
    );
  }
}
