// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage {
  /// A list of image aliases.
  final pulumi.Input<List<String>> aliases;
  /// The percentage of the buffer allocated to this image.
  final pulumi.Input<String> buffer;
  /// The resource id of the image.
  final pulumi.Input<String> id;
  /// The image name from a well-known set of images made available to customers.
  final pulumi.Input<String> wellKnownImageName;

  /// Creates a new [GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage].
  /// [aliases] A list of image aliases.
  /// [buffer] The percentage of the buffer allocated to this image.
  /// [id] The resource id of the image.
  /// [wellKnownImageName] The image name from a well-known set of images made available to customers.
  const GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage({
    required this.aliases,
    required this.buffer,
    required this.id,
    required this.wellKnownImageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': aliases,
      'buffer': buffer,
      'id': id,
      'wellKnownImageName': wellKnownImageName,
    };
  }

  factory GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolVirtualMachineScaleSetFabricImage(
      aliases: pulumi.Input.fromValue((map['aliases'] as List).cast<String>()),
      buffer: pulumi.Input.fromValue(map['buffer'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      wellKnownImageName: pulumi.Input.fromValue(map['wellKnownImageName'] as String),
    );
  }
}
