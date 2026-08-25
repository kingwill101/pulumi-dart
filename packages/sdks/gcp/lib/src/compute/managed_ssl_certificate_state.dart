// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_ssl_certificate_managed.dart';

/// Input properties used for looking up and filtering ManagedSslCertificate resources.
class ManagedSslCertificateState {
  /// The unique identifier for the resource.
  final pulumi.Input<int?>? certificateId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Expire time of the certificate in RFC3339 text format.
  final pulumi.Input<String?>? expireTime;
  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in `type`).
  /// Structure is documented below.
  final pulumi.Input<ManagedSslCertificateManaged?>? managed;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// Domains associated with the certificate via Subject Alternative Name.
  final pulumi.Input<List<String>?>? subjectAlternativeNames;
  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  final pulumi.Input<String?>? type;

  /// Creates a new [ManagedSslCertificateState].
  /// [certificateId] The unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [expireTime] Expire time of the certificate in RFC3339 text format.
  /// [managed] Properties relevant to a managed certificate.  These will be used if the
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [subjectAlternativeNames] Domains associated with the certificate via Subject Alternative Name.
  /// [type] Enum field whose value is always `MANAGED` - used to signal to the API
  const ManagedSslCertificateState({
    this.certificateId,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.expireTime,
    this.managed,
    this.name,
    this.project,
    this.selfLink,
    this.subjectAlternativeNames,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'expireTime': ?expireTime,
      'managed': ?pulumi.Input.mapOptionalInputValue<ManagedSslCertificateManaged, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'type': ?type,
    };
  }

  factory ManagedSslCertificateState.fromMap(Map<String, dynamic> map) {
    return ManagedSslCertificateState(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedSslCertificateManaged.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
