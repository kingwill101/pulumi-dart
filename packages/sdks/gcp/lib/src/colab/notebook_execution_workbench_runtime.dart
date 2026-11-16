// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_execution_workbench_runtime_custom_container_image.dart';
import 'notebook_execution_workbench_runtime_vm_image.dart';

class NotebookExecutionWorkbenchRuntime {
  /// Use a container image to start the workbench instance.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionWorkbenchRuntimeCustomContainerImage?>? customContainerImage;
  /// Custom Compute Engine VM image for the Workbench instance.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionWorkbenchRuntimeVmImage?>? vmImage;

  /// Creates a new [NotebookExecutionWorkbenchRuntime].
  /// [customContainerImage] Use a container image to start the workbench instance.
  /// [vmImage] Custom Compute Engine VM image for the Workbench instance.
  const NotebookExecutionWorkbenchRuntime({
    this.customContainerImage,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customContainerImage': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionWorkbenchRuntimeCustomContainerImage, Map<String, dynamic>>(customContainerImage, (value) => value.toMap()),
      'vmImage': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionWorkbenchRuntimeVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory NotebookExecutionWorkbenchRuntime.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionWorkbenchRuntime(
      customContainerImage: (() { final guardedValue = map['customContainerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionWorkbenchRuntimeCustomContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookExecutionWorkbenchRuntimeVmImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
