// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_execution_workbench_runtime_vm_image.dart';

class NotebookExecutionWorkbenchRuntime {
  /// Custom Compute Engine VM image for the Workbench instance.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionWorkbenchRuntimeVmImage> vmImage;

  /// Creates a new [NotebookExecutionWorkbenchRuntime].
  /// [vmImage] Custom Compute Engine VM image for the Workbench instance.
  const NotebookExecutionWorkbenchRuntime({
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmImage': pulumi.Input.mapInputValue<NotebookExecutionWorkbenchRuntimeVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory NotebookExecutionWorkbenchRuntime.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionWorkbenchRuntime(
      vmImage: pulumi.Input.fromValue(NotebookExecutionWorkbenchRuntimeVmImage.fromMap((map['vmImage']! as Map).cast<String, dynamic>())),
    );
  }
}
