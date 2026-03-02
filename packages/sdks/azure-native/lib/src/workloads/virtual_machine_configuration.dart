// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference.dart';
import 'osprofile.dart';

/// Defines the virtual machine configuration.
class VirtualMachineConfiguration {
  /// The image reference.
  final pulumi.Input<ImageReference> imageReference;
  /// The OS profile.
  final pulumi.Input<OSProfile> osProfile;
  /// The virtual machine size.
  final pulumi.Input<String> vmSize;

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
      'imageReference': pulumi.Input.mapInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<OSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'vmSize': vmSize,
    };
  }

  factory VirtualMachineConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfiguration(
      imageReference: (ImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>())).input(),
      osProfile: (OSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      vmSize: (map['vmSize'] as String).input(),
    );
  }
}

