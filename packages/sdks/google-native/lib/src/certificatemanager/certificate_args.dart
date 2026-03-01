// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_scope.dart';
import 'managed_certificate.dart';
import 'self_managed_certificate.dart';

/// {@template pulumi_certificatemanager_v1_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_certificate_args_doc}
class CertificateArgs {
  /// Required. A user-provided name of the certificate.
  final pulumi.Input<String> certificateId;
  /// One or more paragraphs of text description of a certificate.
  final pulumi.Input<String>? description;
  /// Set of labels associated with a Certificate.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// If set, contains configuration and state of a managed certificate.
  final pulumi.Input<ManagedCertificate>? managed;
  /// A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Immutable. The scope of the certificate.
  final pulumi.Input<CertificateScope>? scope;
  /// If set, defines data of a self-managed certificate.
  final pulumi.Input<SelfManagedCertificate>? selfManaged;

  /// Creates a new [CertificateArgs].
  /// [certificateId] Required. A user-provided name of the certificate.
  /// [description] One or more paragraphs of text description of a certificate.
  /// [labels] Set of labels associated with a Certificate.
  /// [location] Optional.
  /// [managed] If set, contains configuration and state of a managed certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  /// [project] Optional.
  /// [scope] Immutable. The scope of the certificate.
  /// [selfManaged] If set, defines data of a self-managed certificate.
  CertificateArgs({
    required pulumi.Output<String> certificateId,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedCertificate>? managed,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<CertificateScope>? scope,
    pulumi.Output<SelfManagedCertificate>? selfManaged,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      managed = pulumi.Input.asOptionalInput<ManagedCertificate>(managed),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      scope = pulumi.Input.asOptionalInput<CertificateScope>(scope),
      selfManaged = pulumi.Input.asOptionalInput<SelfManagedCertificate>(selfManaged);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'managed': ?pulumi.Input.mapOptionalInputValue<ManagedCertificate, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'scope': ?pulumi.Input.mapOptionalInputValue<CertificateScope, String>(scope, (value) => value.value),
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<SelfManagedCertificate, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateId: pulumi.Output.create<String>(map['certificateId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managed: map['managed'] == null ? null : pulumi.Output.create<ManagedCertificate>(ManagedCertificate.fromMap((map['managed'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<CertificateScope>(CertificateScope.fromValue(map['scope'] as String)),
      selfManaged: map['selfManaged'] == null ? null : pulumi.Output.create<SelfManagedCertificate>(SelfManagedCertificate.fromMap((map['selfManaged'] as Map).cast<String, dynamic>())),
    );
  }
}

