// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SSLCertificate resources.
class SSLCertificateState {
  /// The certificate in PEM format.
  /// The certificate chain must be no greater than 5 certs long.
  /// The chain must include at least one intermediate cert.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? certificate;
  /// The unique identifier for the resource.
  final pulumi.Input<int>? certificateId;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Expire time of the certificate in RFC3339 text format.
  final pulumi.Input<String>? expireTime;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the
  /// specified prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String>? namePrefix;
  /// The write-only private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [SSLCertificateState].
  /// [certificate] The certificate in PEM format.
  /// [certificateId] The unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [expireTime] Expire time of the certificate in RFC3339 text format.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [namePrefix] Creates a unique name beginning with the
  /// [privateKey] The write-only private key in PEM format.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  SSLCertificateState({
    this.certificate,
    this.certificateId,
    this.creationTimestamp,
    this.description,
    this.expireTime,
    this.name,
    this.namePrefix,
    this.privateKey,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'expireTime': ?expireTime,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'privateKey': ?privateKey,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory SSLCertificateState.fromMap(Map<String, dynamic> map) {
    return SSLCertificateState(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      certificateId: map['certificateId'] == null ? null : (map['certificateId'] as int).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
    );
  }
}

