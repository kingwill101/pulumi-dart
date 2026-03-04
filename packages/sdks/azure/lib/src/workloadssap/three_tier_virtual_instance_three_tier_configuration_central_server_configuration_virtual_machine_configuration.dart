// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration_virtual_machine_configuration_image.dart';
import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration_virtual_machine_configuration_os_profile.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration {
  /// An `image` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<
    ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage
  >
  image;

  /// An `os_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<
    ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfile
  >
  osProfile;

  /// The size of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineSize;

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
      'image':
          pulumi.Input.mapInputValue<
            ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'osProfile':
          pulumi.Input.mapInputValue<
            ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfile,
            Map<String, dynamic>
          >(osProfile, (value) => value.toMap()),
      'virtualMachineSize': virtualMachineSize,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration(
      image: pulumi.Input.fromValue(
        ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationImage.fromMap(
          (map['image']! as Map).cast<String, dynamic>(),
        ),
      ),
      osProfile: pulumi.Input.fromValue(
        ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfigurationOsProfile.fromMap(
          (map['osProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      virtualMachineSize: pulumi.Input.fromValue(
        map['virtualMachineSize'] as String,
      ),
    );
  }
}
