// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_device_property.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// A `deviceProperties` block as defined below.
  final List<GetDeviceDeviceProperty>? deviceProperties;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Databox Edge Device should exist.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The `skuName` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `skuName` defines the `name` of the SKU. The second segment defines the `tier` of the `skuName`. For more information see the product documentation.
  final String? skuName;
  /// A mapping of tags which should be assigned to the Databox Edge Device.
  final Map<String, String>? tags;

  /// Creates a new [GetDeviceResult].
  /// [deviceProperties] A `deviceProperties` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Databox Edge Device should exist.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The `skuName` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `skuName` defines the `name` of the SKU. The second segment defines the `tier` of the `skuName`. For more information see the product documentation.
  /// [tags] A mapping of tags which should be assigned to the Databox Edge Device.
  const GetDeviceResult({
    this.deviceProperties,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceProperties': ?(() { final guardedValue = deviceProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeviceDeviceProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      deviceProperties: (() { final guardedValue = map['deviceProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeviceDeviceProperty>(guardedValue, (value) => GetDeviceDeviceProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
