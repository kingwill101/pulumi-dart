// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_sku.dart';
import 'dedicated_capacity_administrators.dart';

/// {@template pulumi_powerbidedicated_capacity_details_args_doc}
/// The set of arguments for CapacityDetails.
/// {@endtemplate}
/// {@macro pulumi_powerbidedicated_capacity_details_args_doc}
class CapacityDetailsArgs {
  /// A collection of Dedicated capacity administrators
  final pulumi.Input<DedicatedCapacityAdministrators>? administration;

  /// The name of the dedicated capacity. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? dedicatedCapacityName;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Specifies the generation of the Power BI Embedded capacity. If no value is specified, the default value 'Gen2' is used. [Learn More](https://docs.microsoft.com/power-bi/developer/embedded/power-bi-embedded-generation-2)
  final pulumi.Input<String>? mode;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The SKU of the PowerBI Dedicated capacity resource.
  final pulumi.Input<CapacitySku> sku;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityDetailsArgs].
  /// [administration] A collection of Dedicated capacity administrators
  /// [dedicatedCapacityName] The name of the dedicated capacity. It must be a minimum of 3 characters, and a maximum of 63.
  /// [location] The geo-location where the resource lives
  /// [mode] Specifies the generation of the Power BI Embedded capacity. If no value is specified, the default value 'Gen2' is used. [Learn More](https://docs.microsoft.com/power-bi/developer/embedded/power-bi-embedded-generation-2)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the PowerBI Dedicated capacity resource.
  /// [tags] Resource tags.
  CapacityDetailsArgs({
    this.administration,
    this.dedicatedCapacityName,
    this.location,
    this.mode,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration':
          ?pulumi.Input.mapOptionalInputValue<
            DedicatedCapacityAdministrators,
            Map<String, dynamic>
          >(administration, (value) => value.toMap()),
      'dedicatedCapacityName': ?dedicatedCapacityName,
      'location': ?location,
      'mode': ?mode,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<CapacitySku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory CapacityDetailsArgs.fromMap(Map<String, dynamic> map) {
    return CapacityDetailsArgs(
      administration: (() {
        final guardedValue = map['administration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DedicatedCapacityAdministrators.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dedicatedCapacityName: (() {
        final guardedValue = map['dedicatedCapacityName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(
        CapacitySku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
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
