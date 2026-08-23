// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_get_static_ips_get_static_ips_args_doc}
/// Arguments for getStaticIps.
/// {@endtemplate}
/// {@macro pulumi_datastream_get_static_ips_get_static_ips_args_doc}
class GetStaticIpsArgs {
  /// The location to list Datastream IPs for. For example: `us-east1`.
  final pulumi.Input<String> location;
  /// Project from which to list static IP addresses. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Creates a new [GetStaticIpsArgs].
  /// [location] The location to list Datastream IPs for. For example: `us-east1`.
  /// [project] Project from which to list static IP addresses. Defaults to project declared in the provider.
  const GetStaticIpsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetStaticIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticIpsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
