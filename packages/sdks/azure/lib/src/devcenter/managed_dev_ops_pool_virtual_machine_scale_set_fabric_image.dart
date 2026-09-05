// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolVirtualMachineScaleSetFabricImage {
  /// List of aliases to reference the image by.
  final pulumi.Input<List<String>?>? aliases;
  /// The percentage of the buffer to be allocated to this image. Possible values are `*` or between `0` and `100`. Defaults to `*`.
  final pulumi.Input<String?>? buffer;
  /// The resource id of the image.
  final pulumi.Input<String?>? id;
  /// The image to use from a well-known set of images made available to customers.
  ///
  /// &gt; **Note:** More information about supported images can be found in [list of Azure Pipelines image predefined aliases](https://learn.microsoft.com/azure/devops/managed-devops-pools/configure-images?view=azure-devops&tabs=arm#azure-pipelines-images). You can optionally specify a version in your `wellKnownImageName`, for example `windows-2022/latest` or `windows-2022/20250427.1.0`. If you don't specify a version, latest is used.
  ///
  /// &gt; **Note:** Exactly one of `id` or `wellKnownImageName` are required per `image`
  final pulumi.Input<String?>? wellKnownImageName;

  /// Creates a new [ManagedDevOpsPoolVirtualMachineScaleSetFabricImage].
  /// [aliases] List of aliases to reference the image by.
  /// [buffer] The percentage of the buffer to be allocated to this image. Possible values are `*` or between `0` and `100`. Defaults to `*`.
  /// [id] The resource id of the image.
  /// [wellKnownImageName] The image to use from a well-known set of images made available to customers.
  const ManagedDevOpsPoolVirtualMachineScaleSetFabricImage({
    this.aliases,
    this.buffer,
    this.id,
    this.wellKnownImageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'buffer': ?buffer,
      'id': ?id,
      'wellKnownImageName': ?wellKnownImageName,
    };
  }

  factory ManagedDevOpsPoolVirtualMachineScaleSetFabricImage.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolVirtualMachineScaleSetFabricImage(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      buffer: (() { final guardedValue = map['buffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wellKnownImageName: (() { final guardedValue = map['wellKnownImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
