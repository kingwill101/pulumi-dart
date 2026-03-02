// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_instance_args_doc}
/// Arguments for getSapInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_instance_args_doc}
class GetSapInstanceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String> sapDiscoverySiteName;
  /// The name of SAP Instance resource for SAP Migration.
  final pulumi.Input<String> sapInstanceName;

  /// Creates a new [GetSapInstanceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  /// [sapInstanceName] The name of SAP Instance resource for SAP Migration.
  GetSapInstanceArgs({
    required this.resourceGroupName,
    required this.sapDiscoverySiteName,
    required this.sapInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': sapDiscoverySiteName,
      'sapInstanceName': sapInstanceName,
    };
  }

  factory GetSapInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetSapInstanceArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapDiscoverySiteName: (map['sapDiscoverySiteName'] as String).input(),
      sapInstanceName: (map['sapInstanceName'] as String).input(),
    );
  }
}

