// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_accelerator_config_type.dart';

/// Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about [accelerators for training](/ml-engine/docs/using-gpus) and [accelerators for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
class GoogleCloudMlV1AcceleratorConfig {
  /// The number of accelerators to attach to each machine running the job.
  final pulumi.Input<String>? count;
  /// The type of accelerator to use.
  final pulumi.Input<GoogleCloudMlV1AcceleratorConfigType>? type;

  /// Creates a new [GoogleCloudMlV1AcceleratorConfig].
  /// [count] The number of accelerators to attach to each machine running the job.
  /// [type] The type of accelerator to use.
  GoogleCloudMlV1AcceleratorConfig({
    this.count,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1AcceleratorConfigType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudMlV1AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AcceleratorConfig(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1AcceleratorConfigType.fromValue(guardedValue as String)); })(),
    );
  }
}

