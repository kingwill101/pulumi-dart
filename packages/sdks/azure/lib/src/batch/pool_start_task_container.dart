// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_start_task_container_registry.dart';

class PoolStartTaskContainer {
  /// The image to use to create the container in which the task will run. This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  final pulumi.Input<String> imageName;
  /// The `containerRegistries` block defined as below.
  final pulumi.Input<List<PoolStartTaskContainerRegistry>>? registries;
  /// Additional options to the container create command. These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  final pulumi.Input<String>? runOptions;
  /// A flag to indicate where the container task working directory is. Possible values are `TaskWorkingDirectory` and `ContainerImageDefault`.
  final pulumi.Input<String>? workingDirectory;

  /// Creates a new [PoolStartTaskContainer].
  /// [imageName] The image to use to create the container in which the task will run. This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  /// [registries] The `containerRegistries` block defined as below.
  /// [runOptions] Additional options to the container create command. These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  /// [workingDirectory] A flag to indicate where the container task working directory is. Possible values are `TaskWorkingDirectory` and `ContainerImageDefault`.
  const PoolStartTaskContainer({
    required this.imageName,
    this.registries,
    this.runOptions,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'registries': ?pulumi.Input.mapOptionalInputValue<List<PoolStartTaskContainerRegistry>, List<Map<String, dynamic>>>(registries, (value) => pulumi.Input.encodeList<PoolStartTaskContainerRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runOptions': ?runOptions,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory PoolStartTaskContainer.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskContainer(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      registries: (() { final guardedValue = map['registries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolStartTaskContainerRegistry>(guardedValue, (value) => PoolStartTaskContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      runOptions: (() { final guardedValue = map['runOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
