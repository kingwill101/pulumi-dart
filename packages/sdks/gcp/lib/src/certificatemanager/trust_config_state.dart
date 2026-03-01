// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_config_allowlisted_certificate.dart';
import 'trust_config_trust_store.dart';

/// Input properties used for looking up and filtering TrustConfig resources.
class TrustConfigState {
  /// Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigAllowlistedCertificate>>? allowlistedCertificates;
  /// The creation timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// One or more paragraphs of text description of a trust config.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Set of label tags associated with the trust config.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The trust config location.
  final pulumi.Input<String>? location;
  /// A user-defined name of the trust config. Trust config names must be unique globally.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Set of trust stores to perform validation against.
  /// This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigTrustStore>>? trustStores;
  /// The last update timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TrustConfigState].
  /// [allowlistedCertificates] Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// [createTime] The creation timestamp of a TrustConfig.
  /// [description] One or more paragraphs of text description of a trust config.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the trust config.
  /// [location] The trust config location.
  /// [name] A user-defined name of the trust config. Trust config names must be unique globally.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [trustStores] Set of trust stores to perform validation against.
  /// [updateTime] The last update timestamp of a TrustConfig.
  TrustConfigState({
    pulumi.Output<List<TrustConfigAllowlistedCertificate>>? allowlistedCertificates,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<TrustConfigTrustStore>>? trustStores,
    pulumi.Output<String>? updateTime,
  }) :
      allowlistedCertificates = pulumi.Input.asOptionalInput<List<TrustConfigAllowlistedCertificate>>(allowlistedCertificates),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      trustStores = pulumi.Input.asOptionalInput<List<TrustConfigTrustStore>>(trustStores),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistedCertificates': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigAllowlistedCertificate>, List<Map<String, dynamic>>>(allowlistedCertificates, (value) => pulumi.Input.encodeList<TrustConfigAllowlistedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'trustStores': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigTrustStore>, List<Map<String, dynamic>>>(trustStores, (value) => pulumi.Input.encodeList<TrustConfigTrustStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory TrustConfigState.fromMap(Map<String, dynamic> map) {
    return TrustConfigState(
      allowlistedCertificates: map['allowlistedCertificates'] == null ? null : pulumi.Output.create<List<TrustConfigAllowlistedCertificate>>(pulumi.Input.decodeList<TrustConfigAllowlistedCertificate>(map['allowlistedCertificates'], (value) => TrustConfigAllowlistedCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      trustStores: map['trustStores'] == null ? null : pulumi.Output.create<List<TrustConfigTrustStore>>(pulumi.Input.decodeList<TrustConfigTrustStore>(map['trustStores'], (value) => TrustConfigTrustStore.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

