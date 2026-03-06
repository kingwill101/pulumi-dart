// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_management_dns_zone_binding_args_doc}
/// Arguments for getManagementDnsZoneBinding.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_management_dns_zone_binding_args_doc}
class GetManagementDnsZoneBindingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementDnsZoneBindingId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagementDnsZoneBindingArgs].
  /// [location] Required.
  /// [managementDnsZoneBindingId] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  const GetManagementDnsZoneBindingArgs({
    required this.location,
    required this.managementDnsZoneBindingId,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'managementDnsZoneBindingId': managementDnsZoneBindingId,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetManagementDnsZoneBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementDnsZoneBindingArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      managementDnsZoneBindingId: pulumi.Input.fromValue(map['managementDnsZoneBindingId'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

