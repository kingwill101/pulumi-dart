// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_encryption_spec.dart';
import 'ca_pool_issuance_policy.dart';
import 'ca_pool_publishing_options.dart';

/// {@template pulumi_certificateauthority_ca_pool_ca_pool_args_doc}
/// The set of arguments for CaPool.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_ca_pool_ca_pool_args_doc}
class CaPoolArgs {
  /// Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// to encrypt the Subject, SubjectAltNames and PEM-encoded certificate fields. When unspecified,
  /// customer data will remain unencrypted.
  /// Structure is documented below.
  final pulumi.Input<CaPoolEncryptionSpec>? encryptionSpec;

  /// The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicy>? issuancePolicy;

  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String> location;

  /// The name for this CaPool.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolPublishingOptions>? publishingOptions;

  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  final pulumi.Input<String> tier;

  /// Creates a new [CaPoolArgs].
  /// [encryptionSpec] Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// [issuancePolicy] The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Labels with user-defined metadata.
  /// [location] Location of the CaPool. A full list of valid locations can be found by
  /// [name] The name for this CaPool.
  /// [project] The ID of the project in which the resource belongs.
  /// [publishingOptions] The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [tier] The Tier of this CaPool.
  CaPoolArgs({
    this.encryptionSpec,
    this.issuancePolicy,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.publishingOptions,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            CaPoolEncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'issuancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            CaPoolIssuancePolicy,
            Map<String, dynamic>
          >(issuancePolicy, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'publishingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            CaPoolPublishingOptions,
            Map<String, dynamic>
          >(publishingOptions, (value) => value.toMap()),
      'tier': tier,
    };
  }

  factory CaPoolArgs.fromMap(Map<String, dynamic> map) {
    return CaPoolArgs(
      encryptionSpec: (() {
        final guardedValue = map['encryptionSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaPoolEncryptionSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      issuancePolicy: (() {
        final guardedValue = map['issuancePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaPoolIssuancePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
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
      publishingOptions: (() {
        final guardedValue = map['publishingOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaPoolPublishingOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
