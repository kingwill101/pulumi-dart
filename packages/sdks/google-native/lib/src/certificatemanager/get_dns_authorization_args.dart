// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_dns_authorization_args_doc}
/// Arguments for getDnsAuthorization.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_dns_authorization_args_doc}
class GetDnsAuthorizationArgs {
  final pulumi.Input<String> dnsAuthorizationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDnsAuthorizationArgs].
  /// [dnsAuthorizationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDnsAuthorizationArgs({
    required this.dnsAuthorizationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAuthorizationId': dnsAuthorizationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationArgs(
      dnsAuthorizationId: pulumi.Input.fromValue(map['dnsAuthorizationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

