// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_start_task_container_registry.dart';

class GetPoolStartTaskContainer {
  /// The image to use to create the container in which the task will run.
  final pulumi.Input<String> imageName;

  /// The same reference as `container_registries` block defined as follows.
  final pulumi.Input<List<GetPoolStartTaskContainerRegistry>> registries;

  /// Additional options to the container create command.
  final pulumi.Input<String> runOptions;

  /// A flag to indicate where the container task working directory is.
  final pulumi.Input<String> workingDirectory;

  /// Creates a new [GetPoolStartTaskContainer].
  /// [imageName] The image to use to create the container in which the task will run.
  /// [registries] The same reference as `container_registries` block defined as follows.
  /// [runOptions] Additional options to the container create command.
  /// [workingDirectory] A flag to indicate where the container task working directory is.
  GetPoolStartTaskContainer({
    required this.imageName,
    required this.registries,
    required this.runOptions,
    required this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'registries':
          pulumi.Input.mapInputValue<
            List<GetPoolStartTaskContainerRegistry>,
            List<Map<String, dynamic>>
          >(
            registries,
            (value) =>
                pulumi.Input.encodeList<
                  GetPoolStartTaskContainerRegistry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runOptions': runOptions,
      'workingDirectory': workingDirectory,
    };
  }

  factory GetPoolStartTaskContainer.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTaskContainer(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      registries: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetPoolStartTaskContainerRegistry>(
          map['registries']!,
          (value) => GetPoolStartTaskContainerRegistry.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      runOptions: pulumi.Input.fromValue(map['runOptions'] as String),
      workingDirectory: pulumi.Input.fromValue(
        map['workingDirectory'] as String,
      ),
    );
  }
}
