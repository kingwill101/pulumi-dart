// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuance_config_certificate_authority_config.dart';

/// Input properties used for looking up and filtering CertificateIssuanceConfig resources.
class CertificateIssuanceConfigState {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  final pulumi.Input<CertificateIssuanceConfigCertificateAuthorityConfig>?
  certificateAuthorityConfig;

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
    this.certificateAuthorityConfig,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.keyAlgorithm,
    this.labels,
    this.lifetime,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rotationWindowPercentage,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateIssuanceConfigCertificateAuthorityConfig,
            Map<String, dynamic>
          >(certificateAuthorityConfig, (value) => value.toMap()),
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
      certificateAuthorityConfig: (() {
        final guardedValue = map['certificateAuthorityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateIssuanceConfigCertificateAuthorityConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      keyAlgorithm: (() {
        final guardedValue = map['keyAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      lifetime: (() {
        final guardedValue = map['lifetime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      rotationWindowPercentage: (() {
        final guardedValue = map['rotationWindowPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
