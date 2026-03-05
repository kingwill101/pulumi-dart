// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_device_property.dart';

/// Input properties used for looking up and filtering Device resources.
class DeviceState {
  /// A `device_properties` block as defined below.
  final pulumi.Input<List<DeviceDeviceProperty>>? deviceProperties;
  /// The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the product documentation. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the Databox Edge Device.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeviceState].
  /// [deviceProperties] A `device_properties` block as defined below.
  /// [location] The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  /// [name] The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created.
  /// [resourceGroupName] The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  /// [skuName] The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the product documentation. Changing this forces a new Databox Edge Device to be created.
  /// [tags] A mapping of tags which should be assigned to the Databox Edge Device.
  DeviceState({
    this.deviceProperties,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceProperties': ?pulumi.Input.mapOptionalInputValue<List<DeviceDeviceProperty>, List<Map<String, dynamic>>>(deviceProperties, (value) => pulumi.Input.encodeList<DeviceDeviceProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory DeviceState.fromMap(Map<String, dynamic> map) {
    return DeviceState(
      deviceProperties: (() { final guardedValue = map['deviceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceDeviceProperty>(guardedValue, (value) => DeviceDeviceProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

