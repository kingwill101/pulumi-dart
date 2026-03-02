// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_get_dns_authorization_get_dns_authorization_args_doc}
/// Arguments for getDnsAuthorization.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_get_dns_authorization_get_dns_authorization_args_doc}
class GetDnsAuthorizationArgs {
  /// The name of the DNS Authorization.
  final pulumi.Input<String> domain;
  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;
  /// The name of the DNS Authorization.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDnsAuthorizationArgs].
  /// [domain] The name of the DNS Authorization.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [name] The name of the DNS Authorization.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  GetDnsAuthorizationArgs({
    required this.domain,
    this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetDnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationArgs(
      domain: (map['domain'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

