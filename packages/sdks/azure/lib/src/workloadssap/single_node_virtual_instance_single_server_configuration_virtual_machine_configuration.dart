// ignore_for_file: unused_element, unnecessary_cast

import 'single_node_virtual_instance_single_server_configuration_virtual_machine_configuration_image.dart';
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_configuration_os_profile.dart';

class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration {
  /// An `image` block as defined below. Changing this forces a new resource to be created.
  final SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImage image;
  /// An `os_profile` block as defined below. Changing this forces a new resource to be created.
  final SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile osProfile;
  /// The size of the Virtual Machine. Changing this forces a new resource to be created.
  final String virtualMachineSize;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration].
  /// [image] An `image` block as defined below. Changing this forces a new resource to be created.
  /// [osProfile] An `os_profile` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineSize] The size of the Virtual Machine. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration({
    required this.image,
    required this.osProfile,
    required this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image.toMap(),
      'osProfile': osProfile.toMap(),
      'virtualMachineSize': virtualMachineSize,
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration(
      image: SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      osProfile: SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      virtualMachineSize: map['virtualMachineSize'] as String,
    );
  }
}

