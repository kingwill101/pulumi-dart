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
  const CertificateArgs({
    required this.certificateId,
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
      'certificateId': certificateId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'managed': ?pulumi.Input.mapOptionalInputValue<ManagedCertificate, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'scope': ?pulumi.Input.mapOptionalInputValue<CertificateScope, String>(scope, (value) => value.wireValue),
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<SelfManagedCertificate, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateScope.fromValue(guardedValue as String)); })(),
      selfManaged: (() { final guardedValue = map['selfManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfManagedCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

