// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_master_sites_controller_args_doc}
/// The set of arguments for MasterSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_master_sites_controller_args_doc}
class MasterSitesControllerArgs {
  /// Gets or sets a value indicating whether multiple sites per site type are
  /// allowed.
  final pulumi.Input<bool>? allowMultipleSites;
  /// Gets or sets a value for customer storage account ARM id.
  final pulumi.Input<String>? customerStorageAccountArmId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Gets or sets the state of public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String>? siteName;
  /// Gets or sets the sites that are a part of Master Site.
  /// The key
  /// should contain the Site ARM name.
  final pulumi.Input<List<String>>? sites;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MasterSitesControllerArgs].
  /// [allowMultipleSites] Gets or sets a value indicating whether multiple sites per site type are
  /// [customerStorageAccountArmId] Gets or sets a value for customer storage account ARM id.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Gets or sets the state of public network access.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [sites] Gets or sets the sites that are a part of Master Site.
  /// [tags] Resource tags.
  MasterSitesControllerArgs({
    this.allowMultipleSites,
    this.customerStorageAccountArmId,
    this.location,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.siteName,
    this.sites,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultipleSites': ?allowMultipleSites,
      'customerStorageAccountArmId': ?customerStorageAccountArmId,
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'sites': ?sites,
      'tags': ?tags,
    };
  }

  factory MasterSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return MasterSitesControllerArgs(
      allowMultipleSites: (() { final guardedValue = map['allowMultipleSites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customerStorageAccountArmId: (() { final guardedValue = map['customerStorageAccountArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sites: (() { final guardedValue = map['sites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

