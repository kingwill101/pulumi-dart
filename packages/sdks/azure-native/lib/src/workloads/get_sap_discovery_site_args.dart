// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_discovery_site_args_doc}
/// Arguments for getSapDiscoverySite.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_discovery_site_args_doc}
class GetSapDiscoverySiteArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String> sapDiscoverySiteName;

  /// Creates a new [GetSapDiscoverySiteArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  GetSapDiscoverySiteArgs({
    required this.resourceGroupName,
    required this.sapDiscoverySiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': sapDiscoverySiteName,
    };
  }

  factory GetSapDiscoverySiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSapDiscoverySiteArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapDiscoverySiteName: (map['sapDiscoverySiteName'] as String).input(),
    );
  }
}

