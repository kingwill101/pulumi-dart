// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_ssl_certificate_managed.dart';

/// {@template pulumi_compute_managed_ssl_certificate_managed_ssl_certificate_args_doc}
/// The set of arguments for ManagedSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_managed_ssl_certificate_managed_ssl_certificate_args_doc}
class ManagedSslCertificateArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in `type`).
  /// Structure is documented below.
  final pulumi.Input<ManagedSslCertificateManaged>? managed;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagedSslCertificateArgs].
  /// [description] An optional description of this resource.
  /// [managed] Properties relevant to a managed certificate.  These will be used if the
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [type] Enum field whose value is always `MANAGED` - used to signal to the API
  ManagedSslCertificateArgs({
    this.description,
    this.managed,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managed':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedSslCertificateManaged,
            Map<String, dynamic>
          >(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'type': ?type,
    };
  }

  factory ManagedSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ManagedSslCertificateArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managed: (() {
        final guardedValue = map['managed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedSslCertificateManaged.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
