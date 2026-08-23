// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_vcore_sku.dart';

/// {@template pulumi_powerbidedicated_auto_scale_vcore_args_doc}
/// The set of arguments for AutoScaleVCore.
/// {@endtemplate}
/// {@macro pulumi_powerbidedicated_auto_scale_vcore_args_doc}
class AutoScaleVCoreArgs {
  /// The maximum capacity of an auto scale v-core resource.
  final pulumi.Input<int>? capacityLimit;
  /// The object ID of the capacity resource associated with the auto scale v-core resource.
  final pulumi.Input<String>? capacityObjectId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the auto scale v-core resource.
  final pulumi.Input<AutoScaleVCoreSku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? vcoreName;

  /// Creates a new [AutoScaleVCoreArgs].
  /// [capacityLimit] The maximum capacity of an auto scale v-core resource.
  /// [capacityObjectId] The object ID of the capacity resource associated with the auto scale v-core resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the auto scale v-core resource.
  /// [tags] Resource tags.
  /// [vcoreName] The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  const AutoScaleVCoreArgs({
    this.capacityLimit,
    this.capacityObjectId,
    this.location,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
    this.vcoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityLimit': ?capacityLimit,
      'capacityObjectId': ?capacityObjectId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<AutoScaleVCoreSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vcoreName': ?vcoreName,
    };
  }

  factory AutoScaleVCoreArgs.fromMap(Map<String, dynamic> map) {
    return AutoScaleVCoreArgs(
      capacityLimit: (() { final guardedValue = map['capacityLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      capacityObjectId: (() { final guardedValue = map['capacityObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(AutoScaleVCoreSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vcoreName: (() { final guardedValue = map['vcoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
