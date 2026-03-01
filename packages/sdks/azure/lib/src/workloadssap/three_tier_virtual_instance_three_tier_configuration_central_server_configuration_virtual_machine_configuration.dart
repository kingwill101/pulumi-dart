// ignore_for_file: unused_element, unnecessary_cast

import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration_virtual_machine_configuration_image.dart';
import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration_virtual_machine_configuration_os_profile.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration {
  /// An `image` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage image;
  /// An `os_profile` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfile osProfile;
  /// The size of the Virtual Machine. Changing this forces a new resource to be created.
  final String virtualMachineSize;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration].
  /// [image] An `image` block as defined below. Changing this forces a new resource to be created.
  /// [osProfile] An `os_profile` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineSize] The size of the Virtual Machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration({
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

  factory ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration(
      image: ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      osProfile: ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      virtualMachineSize: map['virtualMachineSize'] as String,
    );
  }
}

