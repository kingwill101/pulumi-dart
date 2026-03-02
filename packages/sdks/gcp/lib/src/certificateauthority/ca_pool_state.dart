// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_encryption_spec.dart';
import 'ca_pool_issuance_policy.dart';
import 'ca_pool_publishing_options.dart';

/// Input properties used for looking up and filtering CaPool resources.
class CaPoolState {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
  /// The name for this CaPool.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolPublishingOptions>? publishingOptions;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  final pulumi.Input<String>? tier;

  /// Creates a new [CaPoolState].
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// [issuancePolicy] The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Labels with user-defined metadata.
  /// [location] Location of the CaPool. A full list of valid locations can be found by
  /// [name] The name for this CaPool.
  /// [project] The ID of the project in which the resource belongs.
  /// [publishingOptions] The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [tier] The Tier of this CaPool.
  CaPoolState({
    this.effectiveLabels,
    this.encryptionSpec,
    this.issuancePolicy,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.publishingOptions,
    this.pulumiLabels,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<CaPoolEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'issuancePolicy': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicy, Map<String, dynamic>>(issuancePolicy, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'publishingOptions': ?pulumi.Input.mapOptionalInputValue<CaPoolPublishingOptions, Map<String, dynamic>>(publishingOptions, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'tier': ?tier,
    };
  }

  factory CaPoolState.fromMap(Map<String, dynamic> map) {
    return CaPoolState(
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (CaPoolEncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      issuancePolicy: map['issuancePolicy'] == null ? null : (CaPoolIssuancePolicy.fromMap((map['issuancePolicy']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      publishingOptions: map['publishingOptions'] == null ? null : (CaPoolPublishingOptions.fromMap((map['publishingOptions']! as Map).cast<String, dynamic>())).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

