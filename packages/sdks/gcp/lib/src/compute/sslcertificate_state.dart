// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SSLCertificate resources.
class SSLCertificateState {
  /// The certificate in PEM format.
  /// The certificate chain must be no greater than 5 certs long.
  /// The chain must include at least one intermediate cert.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? certificate;
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
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the
  /// specified prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  /// Resulting name for a `namePrefix` &lt;= 37 characters:
  /// `namePrefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `namePrefix` 38 - 54 characters:
  /// `namePrefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String?>? namePrefix;
  /// The write-only private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? privateKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The write-only private key in PEM format.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `privateKey` or `privateKeyWo` can only be set.
  final pulumi.Input<String?>? privateKeyWo;
  /// Triggers update of `privateKeyWo` write-only. Increment this value when an update to `privateKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? privateKeyWoVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [SSLCertificateState].
  /// [certificate] The certificate in PEM format.
  /// [certificateId] The unique identifier for the resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [expireTime] Expire time of the certificate in RFC3339 text format.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [namePrefix] Creates a unique name beginning with the
  /// [privateKey] The write-only private key in PEM format.
  /// [privateKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [privateKeyWoVersion] Triggers update of `privateKeyWo` write-only. Increment this value when an update to `privateKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  const SSLCertificateState({
    this.certificate,
    this.certificateId,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.expireTime,
    this.name,
    this.namePrefix,
    this.privateKey,
    this.privateKeyWo,
    this.privateKeyWoVersion,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'expireTime': ?expireTime,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'privateKey': ?privateKey,
      'privateKeyWo': ?privateKeyWo,
      'privateKeyWoVersion': ?privateKeyWoVersion,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory SSLCertificateState.fromMap(Map<String, dynamic> map) {
    return SSLCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyWo: (() { final guardedValue = map['privateKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyWoVersion: (() { final guardedValue = map['privateKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
