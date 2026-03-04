// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_virtual_machine_configuration_image.dart';
import 'three_tier_virtual_instance_three_tier_configuration_database_server_configuration_virtual_machine_configuration_os_profile.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration {
  /// An `image` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<
    ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImage
  >
  image;

  /// An `os_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<
    ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile
  >
  osProfile;

  /// The size of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineSize;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration].
  /// [image] An `image` block as defined below. Changing this forces a new resource to be created.
  /// [osProfile] An `os_profile` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachineSize] The size of the Virtual Machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration({
    required this.image,
    required this.osProfile,
    required this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image':
          pulumi.Input.mapInputValue<
            ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImage,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'osProfile':
          pulumi.Input.mapInputValue<
            ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile,
            Map<String, dynamic>
          >(osProfile, (value) => value.toMap()),
      'virtualMachineSize': virtualMachineSize,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfiguration(
      image: pulumi.Input.fromValue(
        ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationImage.fromMap(
          (map['image']! as Map).cast<String, dynamic>(),
        ),
      ),
      osProfile: pulumi.Input.fromValue(
        ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile.fromMap(
          (map['osProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      virtualMachineSize: pulumi.Input.fromValue(
        map['virtualMachineSize'] as String,
      ),
    );
  }
}
