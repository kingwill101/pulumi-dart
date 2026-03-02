// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_reference_response.dart';
import 'osprofile_response.dart';

/// Defines the virtual machine configuration.
class VirtualMachineConfigurationResponse {
  /// The image reference.
  final pulumi.Input<ImageReferenceResponse> imageReference;
  /// The OS profile.
  final pulumi.Input<OSProfileResponse> osProfile;
  /// The virtual machine size.
  final pulumi.Input<String> vmSize;

  /// Creates a new [VirtualMachineConfigurationResponse].
  /// [imageReference] The image reference.
  /// [osProfile] The OS profile.
  /// [vmSize] The virtual machine size.
  VirtualMachineConfigurationResponse({
    required this.imageReference,
    required this.osProfile,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageReference': pulumi.Input.mapInputValue<ImageReferenceResponse, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osProfile': pulumi.Input.mapInputValue<OSProfileResponse, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'vmSize': vmSize,
    };
  }

  factory VirtualMachineConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationResponse(
      imageReference: (ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>())).input(),
      osProfile: (OSProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      vmSize: (map['vmSize'] as String).input(),
    );
  }
}

