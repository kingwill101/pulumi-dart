// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_account_resource_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_sovereign_landing_zone_account_operation_args_doc}
/// The set of arguments for LandingZoneAccountOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_landing_zone_account_operation_args_doc}
class LandingZoneAccountOperationArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The landing zone account.
  final pulumi.Input<String>? landingZoneAccountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LandingZoneAccountResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LandingZoneAccountOperationArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [landingZoneAccountName] The landing zone account.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  LandingZoneAccountOperationArgs({
    this.identity,
    this.landingZoneAccountName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'landingZoneAccountName': ?landingZoneAccountName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<LandingZoneAccountResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LandingZoneAccountOperationArgs.fromMap(Map<String, dynamic> map) {
    return LandingZoneAccountOperationArgs(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      landingZoneAccountName: map['landingZoneAccountName'] == null ? null : (map['landingZoneAccountName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (LandingZoneAccountResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

