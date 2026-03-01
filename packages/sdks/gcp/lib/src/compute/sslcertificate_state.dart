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
    pulumi.Output<String>? certificate,
    pulumi.Output<int>? certificateId,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
  }) :
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      certificateId = pulumi.Input.asOptionalInput<int>(certificateId),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

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
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<int>(map['certificateId'] as int),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

