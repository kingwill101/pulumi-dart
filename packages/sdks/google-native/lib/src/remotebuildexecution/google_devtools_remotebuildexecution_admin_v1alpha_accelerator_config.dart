// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AcceleratorConfig defines the accelerator cards to attach to the VM.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig {
  /// The number of guest accelerator cards exposed to each VM.
  final pulumi.Input<String>? acceleratorCount;

  /// The type of accelerator to attach to each VM, e.g. "nvidia-tesla-k80" for nVidia Tesla K80.
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig].
  /// [acceleratorCount] The number of guest accelerator cards exposed to each VM.
  /// [acceleratorType] The type of accelerator to attach to each VM, e.g. "nvidia-tesla-k80" for nVidia Tesla K80.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig(
      acceleratorCount: (() {
        final guardedValue = map['acceleratorCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
