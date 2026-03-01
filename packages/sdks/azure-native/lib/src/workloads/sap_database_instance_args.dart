// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_sap_database_instance_args_doc}
/// The set of arguments for SapDatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_database_instance_args_doc}
class SapDatabaseInstanceArgs {
  /// Database resource name string modeled as parameter for auto generation to work correctly.
  final pulumi.Input<String>? databaseInstanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapDatabaseInstanceArgs].
  /// [databaseInstanceName] Database resource name string modeled as parameter for auto generation to work correctly.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  SapDatabaseInstanceArgs({
    pulumi.Output<String>? databaseInstanceName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapVirtualInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databaseInstanceName = pulumi.Input.asOptionalInput<String>(databaseInstanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstanceName': ?databaseInstanceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapDatabaseInstanceArgs(
      databaseInstanceName: map['databaseInstanceName'] == null ? null : pulumi.Output.create<String>(map['databaseInstanceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Output.create<String>(map['sapVirtualInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

