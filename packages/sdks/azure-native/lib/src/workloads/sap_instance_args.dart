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
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapDiscoverySiteName,
    pulumi.Output<String>? sapInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapDiscoverySiteName = pulumi.Input.asInput<String>(sapDiscoverySiteName),
      sapInstanceName = pulumi.Input.asOptionalInput<String>(sapInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapDiscoverySiteName: pulumi.Output.create<String>(map['sapDiscoverySiteName'] as String),
      sapInstanceName: map['sapInstanceName'] == null ? null : pulumi.Output.create<String>(map['sapInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

