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
    this.allowlistedCertificates,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.trustStores,
    this.updateTime,
  });

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
      allowlistedCertificates: map['allowlistedCertificates'] == null ? null : (pulumi.Input.decodeList<TrustConfigAllowlistedCertificate>(map['allowlistedCertificates'], (value) => TrustConfigAllowlistedCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      trustStores: map['trustStores'] == null ? null : (pulumi.Input.decodeList<TrustConfigTrustStore>(map['trustStores'], (value) => TrustConfigTrustStore.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

