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
  GetManagementDnsZoneBindingArgs({
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
      location: (map['location'] as String).input(),
      managementDnsZoneBindingId: (map['managementDnsZoneBindingId'] as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

