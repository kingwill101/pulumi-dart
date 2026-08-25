// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config.dart';

/// {@template pulumi_certificateauthority_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_certificate_certificate_args_doc}
class CertificateArgs {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument `pool` should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument `certificateAuthority`
  /// should be set to `my-ca`.
  final pulumi.Input<String?>? certificateAuthority;
  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  final pulumi.Input<String?>? certificateTemplate;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfig?>? config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String?>? lifetime;
  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String> location;
  /// The name for this Certificate.
  final pulumi.Input<String?>? name;
  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final pulumi.Input<String?>? pemCsr;
  /// The name of the CaPool this Certificate belongs to.
  final pulumi.Input<String> pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [CertificateArgs].
  /// [certificateAuthority] The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// [certificateTemplate] The resource name for a CertificateTemplate used to issue this certificate,
  /// [config] The config used to create a self-signed X.509 certificate or CSR.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels with user-defined metadata to apply to this resource.
  /// [lifetime] The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// [location] Location of the Certificate. A full list of valid locations can be found by
  /// [name] The name for this Certificate.
  /// [pemCsr] Immutable. A pem-encoded X.509 certificate signing request (CSR).
  /// [pool] The name of the CaPool this Certificate belongs to.
  /// [project] The ID of the project in which the resource belongs.
  const CertificateArgs({
    this.certificateAuthority,
    this.certificateTemplate,
    this.config,
    this.deletionPolicy,
    this.labels,
    this.lifetime,
    required this.location,
    this.name,
    this.pemCsr,
    required this.pool,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'certificateTemplate': ?certificateTemplate,
      'config': ?pulumi.Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': location,
      'name': ?name,
      'pemCsr': ?pemCsr,
      'pool': pool,
      'project': ?project,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateTemplate: (() { final guardedValue = map['certificateTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pemCsr: (() { final guardedValue = map['pemCsr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
