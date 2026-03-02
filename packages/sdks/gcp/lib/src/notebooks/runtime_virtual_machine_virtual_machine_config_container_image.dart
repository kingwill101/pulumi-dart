// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeVirtualMachineVirtualMachineConfigContainerImage {
  /// The path to the container image repository.
  /// For example: gcr.io/{project_id}/{imageName}
  final pulumi.Input<String> repository;
  /// The tag of the container image. If not specified, this defaults to the latest tag.
  final pulumi.Input<String>? tag;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigContainerImage].
  /// [repository] The path to the container image repository.
  /// [tag] The tag of the container image. If not specified, this defaults to the latest tag.
  RuntimeVirtualMachineVirtualMachineConfigContainerImage({
    required this.repository,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repository': repository,
      'tag': ?tag,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfigContainerImage.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfigContainerImage(
      repository: (map['repository'] as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

