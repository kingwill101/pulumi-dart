// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_sap_instance_args_doc}
/// The set of arguments for SapInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_instance_args_doc}
class SapInstanceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String> sapDiscoverySiteName;
  /// The name of SAP Instance resource for SAP Migration.
  final pulumi.Input<String>? sapInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapInstanceArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  /// [sapInstanceName] The name of SAP Instance resource for SAP Migration.
  /// [tags] Resource tags.
  SapInstanceArgs({
    this.location,
    required this.resourceGroupName,
    required this.sapDiscoverySiteName,
    this.sapInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': sapDiscoverySiteName,
      'sapInstanceName': ?sapInstanceName,
      'tags': ?tags,
    };
  }

  factory SapInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapInstanceArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sapDiscoverySiteName: (map['sapDiscoverySiteName'] as String).input(),
      sapInstanceName: map['sapInstanceName'] == null ? null : (map['sapInstanceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

