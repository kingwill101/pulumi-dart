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
    pulumi.Output<List<DeviceDeviceProperty>>? deviceProperties,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deviceProperties = pulumi.Input.asOptionalInput<List<DeviceDeviceProperty>>(deviceProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      deviceProperties: map['deviceProperties'] == null ? null : pulumi.Output.create<List<DeviceDeviceProperty>>(pulumi.Input.decodeList<DeviceDeviceProperty>(map['deviceProperties'], (value) => DeviceDeviceProperty.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

