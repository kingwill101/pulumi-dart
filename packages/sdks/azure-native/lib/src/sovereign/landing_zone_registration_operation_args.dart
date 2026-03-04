// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_registration_resource_properties.dart';

/// {@template pulumi_sovereign_landing_zone_registration_operation_args_doc}
/// The set of arguments for LandingZoneRegistrationOperation.
/// {@endtemplate}
/// {@macro pulumi_sovereign_landing_zone_registration_operation_args_doc}
class LandingZoneRegistrationOperationArgs {
  /// The landing zone account.
  final pulumi.Input<String> landingZoneAccountName;

  /// The name of the landing zone registration resource.
  final pulumi.Input<String>? landingZoneRegistrationName;

  /// The resource-specific properties for this resource.
  final pulumi.Input<LandingZoneRegistrationResourceProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [LandingZoneRegistrationOperationArgs].
  /// [landingZoneAccountName] The landing zone account.
  /// [landingZoneRegistrationName] The name of the landing zone registration resource.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  LandingZoneRegistrationOperationArgs({
    required this.landingZoneAccountName,
    this.landingZoneRegistrationName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingZoneAccountName': landingZoneAccountName,
      'landingZoneRegistrationName': ?landingZoneRegistrationName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            LandingZoneRegistrationResourceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory LandingZoneRegistrationOperationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LandingZoneRegistrationOperationArgs(
      landingZoneAccountName: pulumi.Input.fromValue(
        map['landingZoneAccountName'] as String,
      ),
      landingZoneRegistrationName: (() {
        final guardedValue = map['landingZoneRegistrationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LandingZoneRegistrationResourceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
