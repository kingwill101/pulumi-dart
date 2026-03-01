// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_certificate_authority_config.dart';

/// Input properties used for looking up and filtering CertificateIssuanceConfig resources.
class CertificateIssuanceConfigState {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  final pulumi.Input<CertificateIssuanceConfigCertificateAuthorityConfig>? certificateAuthorityConfig;
  /// The creation timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  final pulumi.Input<String>? keyAlgorithm;
  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  final pulumi.Input<String>? lifetime;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  final pulumi.Input<int>? rotationWindowPercentage;
  /// The last update timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CertificateIssuanceConfigState].
  /// [certificateAuthorityConfig] The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// [createTime] The creation timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// [description] One or more paragraphs of text description of a CertificateIssuanceConfig.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [keyAlgorithm] Key algorithm to use when generating the private key.
  /// [labels] 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// [lifetime] Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] A user-defined name of the certificate issuance config.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rotationWindowPercentage] It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// [updateTime] The last update timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  CertificateIssuanceConfigState({
    pulumi.Output<CertificateIssuanceConfigCertificateAuthorityConfig>? certificateAuthorityConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? keyAlgorithm,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lifetime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<int>? rotationWindowPercentage,
    pulumi.Output<String>? updateTime,
  }) :
      certificateAuthorityConfig = pulumi.Input.asOptionalInput<CertificateIssuanceConfigCertificateAuthorityConfig>(certificateAuthorityConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      keyAlgorithm = pulumi.Input.asOptionalInput<String>(keyAlgorithm),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifetime = pulumi.Input.asOptionalInput<String>(lifetime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rotationWindowPercentage = pulumi.Input.asOptionalInput<int>(rotationWindowPercentage),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig': ?pulumi.Input.mapOptionalInputValue<CertificateIssuanceConfigCertificateAuthorityConfig, Map<String, dynamic>>(certificateAuthorityConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'keyAlgorithm': ?keyAlgorithm,
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rotationWindowPercentage': ?rotationWindowPercentage,
      'updateTime': ?updateTime,
    };
  }

  factory CertificateIssuanceConfigState.fromMap(Map<String, dynamic> map) {
    return CertificateIssuanceConfigState(
      certificateAuthorityConfig: map['certificateAuthorityConfig'] == null ? null : pulumi.Output.create<CertificateIssuanceConfigCertificateAuthorityConfig>(CertificateIssuanceConfigCertificateAuthorityConfig.fromMap((map['certificateAuthorityConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : pulumi.Output.create<String>(map['keyAlgorithm'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lifetime: map['lifetime'] == null ? null : pulumi.Output.create<String>(map['lifetime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rotationWindowPercentage: map['rotationWindowPercentage'] == null ? null : pulumi.Output.create<int>(map['rotationWindowPercentage'] as int),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

