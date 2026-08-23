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
  const GetDnsAuthorizationArgs({
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
      domain: pulumi.Input.fromValue(map['domain'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
