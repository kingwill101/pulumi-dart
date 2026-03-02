// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_managed.dart';
import 'certificate_self_managed.dart';

/// {@template pulumi_certificatemanager_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_certificate_args_doc}
class CertificateArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the Certificate resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  /// Structure is documented below.
  final pulumi.Input<CertificateManaged>? managed;
  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The scope of the certificate.
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  final pulumi.Input<String>? scope;
  /// Certificate data for a SelfManaged Certificate.
  /// SelfManaged Certificates are uploaded by the user. Updating such
  /// certificates before they expire remains the user's responsibility.
  /// Structure is documented below.
  final pulumi.Input<CertificateSelfManaged>? selfManaged;

  /// Creates a new [CertificateArgs].
  /// [description] A human-readable description of the resource.
  /// [labels] Set of label tags associated with the Certificate resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [managed] Configuration and state of a Managed Certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] The scope of the certificate.
  /// [selfManaged] Certificate data for a SelfManaged Certificate.
  CertificateArgs({
    this.description,
    this.labels,
    this.location,
    this.managed,
    this.name,
    this.project,
    this.scope,
    this.selfManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'managed': ?pulumi.Input.mapOptionalInputValue<CertificateManaged, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'scope': ?scope,
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<CertificateSelfManaged, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managed: map['managed'] == null ? null : (CertificateManaged.fromMap((map['managed']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      selfManaged: map['selfManaged'] == null ? null : (CertificateSelfManaged.fromMap((map['selfManaged']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

