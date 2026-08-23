// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_class_configuration_patch_resource_k8s_io_v1beta2.dart';
import 'device_selector_patch_resource_k8s_io_v1beta2.dart';

/// DeviceClassSpec is used in a [DeviceClass] to define what can be allocated and how to configure it.
class DeviceClassSpecPatchResourceK8sIoV1beta2 {
  /// Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  ///
  /// They are passed to the driver, but are not considered while allocating the claim.
  final pulumi.Input<List<DeviceClassConfigurationPatchResourceK8sIoV1beta2>>? config;
  /// ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  ///
  /// This is a beta field.
  final pulumi.Input<String>? extendedResourceName;
  /// Each selector must be satisfied by a device which is claimed via this class.
  final pulumi.Input<List<DeviceSelectorPatchResourceK8sIoV1beta2>>? selectors;

  /// Creates a new [DeviceClassSpecPatchResourceK8sIoV1beta2].
  /// [config] Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  /// [extendedResourceName] ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  /// [selectors] Each selector must be satisfied by a device which is claimed via this class.
  const DeviceClassSpecPatchResourceK8sIoV1beta2({
    this.config,
    this.extendedResourceName,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<List<DeviceClassConfigurationPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeList<DeviceClassConfigurationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedResourceName': ?extendedResourceName,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<DeviceSelectorPatchResourceK8sIoV1beta2>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceClassSpecPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceClassSpecPatchResourceK8sIoV1beta2(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceClassConfigurationPatchResourceK8sIoV1beta2>(guardedValue, (value) => DeviceClassConfigurationPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedResourceName: (() { final guardedValue = map['extendedResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1beta2>(guardedValue, (value) => DeviceSelectorPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
