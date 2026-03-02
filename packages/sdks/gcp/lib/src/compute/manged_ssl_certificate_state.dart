// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manged_ssl_certificate_managed.dart';

/// Input properties used for looking up and filtering MangedSslCertificate resources.
class MangedSslCertificateState {
  /// The unique identifier for the resource.
  final pulumi.Input<int>? certificateId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Expire time of the certificate in RFC3339 text format.
  final pulumi.Input<String>? expireTime;
  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in `type`).
  /// Structure is documented below.
  final pulumi.Input<MangedSslCertificateManaged>? managed;
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
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Domains associated with the certificate via Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  final pulumi.Input<String>? type;

  /// Creates a new [MangedSslCertificateState].
  /// [certificateId] The unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [expireTime] Expire time of the certificate in RFC3339 text format.
  /// [managed] Properties relevant to a managed certificate.  These will be used if the
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [subjectAlternativeNames] Domains associated with the certificate via Subject Alternative Name.
  /// [type] Enum field whose value is always `MANAGED` - used to signal to the API
  MangedSslCertificateState({
    this.certificateId,
    this.creationTimestamp,
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
      'description': ?description,
      'expireTime': ?expireTime,
      'managed': ?pulumi.Input.mapOptionalInputValue<MangedSslCertificateManaged, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'type': ?type,
    };
  }

  factory MangedSslCertificateState.fromMap(Map<String, dynamic> map) {
    return MangedSslCertificateState(
      certificateId: map['certificateId'] == null ? null : (map['certificateId']! as int).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime']! as String).input(),
      managed: map['managed'] == null ? null : (MangedSslCertificateManaged.fromMap((map['managed']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : ((map['subjectAlternativeNames']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

