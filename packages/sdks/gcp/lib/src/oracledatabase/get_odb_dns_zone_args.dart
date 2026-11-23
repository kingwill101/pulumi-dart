// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_odb_dns_zone_get_odb_dns_zone_args_doc}
/// Arguments for getOdbDnsZone.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_odb_dns_zone_get_odb_dns_zone_args_doc}
class GetOdbDnsZoneArgs {
  /// The location of the resource. If it is not provided, the provider default is used.
  final pulumi.Input<String?>? location;
  /// The ID of the ODB DNS Zone.
  final pulumi.Input<String> odbDnsZoneId;
  /// The ID of the parent ODB Network.
  final pulumi.Input<String> odbnetwork;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetOdbDnsZoneArgs].
  /// [location] The location of the resource. If it is not provided, the provider default is used.
  /// [odbDnsZoneId] The ID of the ODB DNS Zone.
  /// [odbnetwork] The ID of the parent ODB Network.
  /// [project] The project to which the resource belongs. If it
  const GetOdbDnsZoneArgs({
    this.location,
    required this.odbDnsZoneId,
    required this.odbnetwork,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'odbDnsZoneId': odbDnsZoneId,
      'odbnetwork': odbnetwork,
      'project': ?project,
    };
  }

  factory GetOdbDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetOdbDnsZoneArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbDnsZoneId: pulumi.Input.fromValue(map['odbDnsZoneId'] as String),
      odbnetwork: pulumi.Input.fromValue(map['odbnetwork'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
