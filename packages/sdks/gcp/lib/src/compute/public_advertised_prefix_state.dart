// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicAdvertisedPrefix resources.
class PublicAdvertisedPrefixState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// The IPv4 address to be used for reverse DNS verification.
  final pulumi.Input<String?>? dnsVerificationIp;
  /// The address range, in CIDR format, represented by this public advertised prefix.
  final pulumi.Input<String?>? ipCidrRange;
  /// The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// set to one of following:
  /// * EXTERNAL: Default access type. The prefix will be announced to the
  /// internet. All children PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String?>? ipv6AccessType;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Specifies how child public delegated prefix will be scoped. pdpScope
  /// must be one of: GLOBAL, REGIONAL
  /// * REGIONAL: The public delegated prefix is regional only. The
  /// provisioning will take a few minutes.
  /// * GLOBAL: The public delegated prefix is global only. The provisioning
  /// will take ~4 weeks.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  final pulumi.Input<String?>? pdpScope;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// Output Only. The shared secret to be used for reverse DNS verification.
  final pulumi.Input<String?>? sharedSecret;

  /// Creates a new [PublicAdvertisedPrefixState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [dnsVerificationIp] The IPv4 address to be used for reverse DNS verification.
  /// [ipCidrRange] The address range, in CIDR format, represented by this public advertised prefix.
  /// [ipv6AccessType] The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [pdpScope] Specifies how child public delegated prefix will be scoped. pdpScope
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [sharedSecret] Output Only. The shared secret to be used for reverse DNS verification.
  const PublicAdvertisedPrefixState({
    this.deletionPolicy,
    this.description,
    this.dnsVerificationIp,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.name,
    this.pdpScope,
    this.project,
    this.selfLink,
    this.sharedSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'dnsVerificationIp': ?dnsVerificationIp,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType': ?ipv6AccessType,
      'name': ?name,
      'pdpScope': ?pdpScope,
      'project': ?project,
      'selfLink': ?selfLink,
      'sharedSecret': ?sharedSecret,
    };
  }

  factory PublicAdvertisedPrefixState.fromMap(Map<String, dynamic> map) {
    return PublicAdvertisedPrefixState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsVerificationIp: (() { final guardedValue = map['dnsVerificationIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pdpScope: (() { final guardedValue = map['pdpScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedSecret: (() { final guardedValue = map['sharedSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
