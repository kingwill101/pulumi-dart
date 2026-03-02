// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_configuration_image.dart';
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_configuration_os_profile.dart';

class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration {
  /// An `image` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImage> image;
  /// An `os_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile> osProfile;
  /// The size of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineSize;

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
      'image': pulumi.Input.mapInputValue<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'virtualMachineSize': virtualMachineSize,
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfiguration(
      image: (SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      osProfile: (SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      virtualMachineSize: (map['virtualMachineSize'] as String).input(),
    );
  }
}

