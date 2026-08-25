// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_managed.dart';
import 'certificate_self_managed.dart';

/// {@template pulumi_certificatemanager_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_certificate_args_doc}
class CertificateArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String?>? description;
  /// Set of label tags associated with the Certificate resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String?>? location;
  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  /// Structure is documented below.
  final pulumi.Input<CertificateManaged?>? managed;
  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The scope of the certificate.
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  final pulumi.Input<String?>? scope;
  /// Certificate data for a SelfManaged Certificate.
  /// SelfManaged Certificates are uploaded by the user. Updating such
  /// certificates before they expire remains the user's responsibility.
  /// The certificate data can be updated in place; changes to `pemCertificate`
  /// and `pemPrivateKey` are applied via the API's PATCH method instead of
  /// forcing recreation of the certificate.
  /// Structure is documented below.
  final pulumi.Input<CertificateSelfManaged?>? selfManaged;

  /// Creates a new [CertificateArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [labels] Set of label tags associated with the Certificate resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [managed] Configuration and state of a Managed Certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique
  /// [project] The ID of the project in which the resource belongs.
  /// [scope] The scope of the certificate.
  /// [selfManaged] Certificate data for a SelfManaged Certificate.
  const CertificateArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfManaged: (() { final guardedValue = map['selfManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateSelfManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
