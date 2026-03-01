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
    pulumi.Output<String>? discoverySolutionId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? siteName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      discoverySolutionId = pulumi.Input.asOptionalInput<String>(discoverySolutionId),
      location = pulumi.Input.asOptionalInput<String>(location),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      discoverySolutionId: map['discoverySolutionId'] == null ? null : pulumi.Output.create<String>(map['discoverySolutionId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

