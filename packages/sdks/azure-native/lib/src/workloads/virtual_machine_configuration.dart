// ignore_for_file: unused_element, unnecessary_cast

import 'image_reference.dart';
import 'osprofile.dart';

/// Defines the virtual machine configuration.
class VirtualMachineConfiguration {
  /// The image reference.
  final ImageReference imageReference;
  /// The OS profile.
  final OSProfile osProfile;
  /// The virtual machine size.
  final String vmSize;

  /// Creates a new [VirtualMachineConfiguration].
  /// [imageReference] The image reference.
  /// [osProfile] The OS profile.
  /// [vmSize] The virtual machine size.
  VirtualMachineConfiguration({
    required this.imageReference,
    required this.osProfile,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageReference': imageReference.toMap(),
      'osProfile': osProfile.toMap(),
      'vmSize': vmSize,
    };
  }

  factory VirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfiguration(
      imageReference: ImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osProfile: OSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      vmSize: map['vmSize'] as String,
    );
  }
}

