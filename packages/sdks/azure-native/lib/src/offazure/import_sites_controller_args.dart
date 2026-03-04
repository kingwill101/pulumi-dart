// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_import_sites_controller_args_doc}
/// The set of arguments for ImportSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_import_sites_controller_args_doc}
class ImportSitesControllerArgs {
  /// Gets or sets the ARM ID of migration hub solution for SDS.
  final pulumi.Input<String>? discoverySolutionId;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Site name
  final pulumi.Input<String>? siteName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImportSitesControllerArgs].
  /// [discoverySolutionId] Gets or sets the ARM ID of migration hub solution for SDS.
  /// [location] The geo-location where the resource lives
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [tags] Resource tags.
  ImportSitesControllerArgs({
    this.discoverySolutionId,
    this.location,
    this.provisioningState,
    required this.resourceGroupName,
    this.siteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySolutionId': ?discoverySolutionId,
      'location': ?location,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory ImportSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return ImportSitesControllerArgs(
      discoverySolutionId: (() {
        final guardedValue = map['discoverySolutionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteName: (() {
        final guardedValue = map['siteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
