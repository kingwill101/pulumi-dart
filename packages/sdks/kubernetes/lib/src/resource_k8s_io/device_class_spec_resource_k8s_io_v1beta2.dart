// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_class_configuration_resource_k8s_io_v1beta2.dart';
import 'device_selector_resource_k8s_io_v1beta2.dart';

/// DeviceClassSpec is used in a [DeviceClass] to define what can be allocated and how to configure it.
class DeviceClassSpecResourceK8sIoV1beta2 {
  /// Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  ///
  /// They are passed to the driver, but are not considered while allocating the claim.
  final List<DeviceClassConfigurationResourceK8sIoV1beta2>? config;
  /// ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  ///
  /// This is an alpha field.
  final String? extendedResourceName;
  /// Each selector must be satisfied by a device which is claimed via this class.
  final List<DeviceSelectorResourceK8sIoV1beta2>? selectors;

  /// Creates a new [DeviceClassSpecResourceK8sIoV1beta2].
  /// [config] Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  /// [extendedResourceName] ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  /// [selectors] Each selector must be satisfied by a device which is claimed via this class.
  DeviceClassSpecResourceK8sIoV1beta2({
    this.config,
    this.extendedResourceName,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceClassConfigurationResourceK8sIoV1beta2, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'extendedResourceName': ?extendedResourceName,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<DeviceSelectorResourceK8sIoV1beta2, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
    };
  }

  factory DeviceClassSpecResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceClassSpecResourceK8sIoV1beta2(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceClassConfigurationResourceK8sIoV1beta2>(map['config'], (value) => DeviceClassConfigurationResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      extendedResourceName: map['extendedResourceName'] == null ? null : map['extendedResourceName'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<DeviceSelectorResourceK8sIoV1beta2>(map['selectors'], (value) => DeviceSelectorResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

