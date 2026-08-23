// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate_managed.dart';

class GetCertificatesCertificate {
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the Certificate resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String> location;
  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  final pulumi.Input<List<GetCertificatesCertificateManaged>> manageds;
  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  final pulumi.Input<List<String>> sanDnsnames;
  /// The scope of the certificate.
  ///
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  ///
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  ///
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  ///
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  final pulumi.Input<String> scope;

  /// Creates a new [GetCertificatesCertificate].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [labels] Set of label tags associated with the Certificate resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [manageds] Configuration and state of a Managed Certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sanDnsnames] The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  /// [scope] The scope of the certificate.
  const GetCertificatesCertificate({
    required this.deletionPolicy,
    required this.description,
    required this.effectiveLabels,
    required this.labels,
    required this.location,
    required this.manageds,
    required this.name,
    required this.project,
    required this.pulumiLabels,
    required this.sanDnsnames,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'labels': labels,
      'location': location,
      'manageds': pulumi.Input.mapInputValue<List<GetCertificatesCertificateManaged>, List<Map<String, dynamic>>>(manageds, (value) => pulumi.Input.encodeList<GetCertificatesCertificateManaged, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'project': project,
      'pulumiLabels': pulumiLabels,
      'sanDnsnames': sanDnsnames,
      'scope': scope,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      manageds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCertificatesCertificateManaged>(map['manageds']!, (value) => GetCertificatesCertificateManaged.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      sanDnsnames: pulumi.Input.fromValue((map['sanDnsnames'] as List).cast<String>()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
