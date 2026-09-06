// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_sap_central_server_instance_args_doc}
/// The set of arguments for SapCentralServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_central_server_instance_args_doc}
class SapCentralServerInstanceArgs {
  /// Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  final pulumi.Input<String?>? centralInstanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SapCentralServerInstanceArgs].
  /// [centralInstanceName] Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  const SapCentralServerInstanceArgs({
    this.centralInstanceName,
    this.location,
    required this.resourceGroupName,
    required this.sapVirtualInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralInstanceName': ?centralInstanceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapCentralServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapCentralServerInstanceArgs(
      centralInstanceName: (() { final guardedValue = map['centralInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapVirtualInstanceName: pulumi.Input.fromValue(map['sapVirtualInstanceName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
