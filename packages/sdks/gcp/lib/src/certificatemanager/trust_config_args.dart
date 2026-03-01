// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_config_allowlisted_certificate.dart';
import 'trust_config_trust_store.dart';

/// {@template pulumi_certificatemanager_trust_config_trust_config_args_doc}
/// The set of arguments for TrustConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_trust_config_trust_config_args_doc}
class TrustConfigArgs {
  /// Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigAllowlistedCertificate>>? allowlistedCertificates;
  /// One or more paragraphs of text description of a trust config.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the trust config.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The trust config location.
  final pulumi.Input<String> location;
  /// A user-defined name of the trust config. Trust config names must be unique globally.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Set of trust stores to perform validation against.
  /// This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigTrustStore>>? trustStores;

  /// Creates a new [TrustConfigArgs].
  /// [allowlistedCertificates] Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// [description] One or more paragraphs of text description of a trust config.
  /// [labels] Set of label tags associated with the trust config.
  /// [location] The trust config location.
  /// [name] A user-defined name of the trust config. Trust config names must be unique globally.
  /// [project] The ID of the project in which the resource belongs.
  /// [trustStores] Set of trust stores to perform validation against.
  TrustConfigArgs({
    pulumi.Output<List<TrustConfigAllowlistedCertificate>>? allowlistedCertificates,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<TrustConfigTrustStore>>? trustStores,
  }) :
      allowlistedCertificates = pulumi.Input.asOptionalInput<List<TrustConfigAllowlistedCertificate>>(allowlistedCertificates),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      trustStores = pulumi.Input.asOptionalInput<List<TrustConfigTrustStore>>(trustStores);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistedCertificates': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigAllowlistedCertificate>, List<Map<String, dynamic>>>(allowlistedCertificates, (value) => pulumi.Input.encodeList<TrustConfigAllowlistedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'trustStores': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigTrustStore>, List<Map<String, dynamic>>>(trustStores, (value) => pulumi.Input.encodeList<TrustConfigTrustStore, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return TrustConfigArgs(
      allowlistedCertificates: map['allowlistedCertificates'] == null ? null : pulumi.Output.create<List<TrustConfigAllowlistedCertificate>>(pulumi.Input.decodeList<TrustConfigAllowlistedCertificate>(map['allowlistedCertificates'], (value) => TrustConfigAllowlistedCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trustStores: map['trustStores'] == null ? null : pulumi.Output.create<List<TrustConfigTrustStore>>(pulumi.Input.decodeList<TrustConfigTrustStore>(map['trustStores'], (value) => TrustConfigTrustStore.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

