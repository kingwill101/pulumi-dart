// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_device_property.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// A `deviceProperties` block as defined below.
  final List<GetDeviceDeviceProperty> deviceProperties;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Databox Edge Device should exist.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The `skuName` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `skuName` defines the `name` of the SKU. The second segment defines the `tier` of the `skuName`. For more information see the product documentation.
  final String skuName;
  /// A mapping of tags which should be assigned to the Databox Edge Device.
  final Map<String, String> tags;

  /// Creates a new [GetDeviceResult].
  /// [deviceProperties] A `deviceProperties` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Databox Edge Device should exist.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The `skuName` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `skuName` defines the `name` of the SKU. The second segment defines the `tier` of the `skuName`. For more information see the product documentation.
  /// [tags] A mapping of tags which should be assigned to the Databox Edge Device.
  const GetDeviceResult({
    required this.deviceProperties,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceProperties': pulumi.Input.encodeList<GetDeviceDeviceProperty, Map<String, dynamic>>(deviceProperties, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      deviceProperties: pulumi.Input.decodeList<GetDeviceDeviceProperty>(map['deviceProperties']!, (value) => GetDeviceDeviceProperty.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
