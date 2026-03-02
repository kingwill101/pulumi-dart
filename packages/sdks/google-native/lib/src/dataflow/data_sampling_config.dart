// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sampling_config_behaviors_item.dart';

/// Configuration options for sampling elements.
class DataSamplingConfig {
  /// List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  final pulumi.Input<List<DataSamplingConfigBehaviorsItem>>? behaviors;

  /// Creates a new [DataSamplingConfig].
  /// [behaviors] List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  DataSamplingConfig({
    this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviors': ?pulumi.Input.mapOptionalInputValue<List<DataSamplingConfigBehaviorsItem>, List<String>>(behaviors, (value) => pulumi.Input.encodeList<DataSamplingConfigBehaviorsItem, String>(value, (value) => value.value)),
    };
  }

  factory DataSamplingConfig.fromMap(Map<String, dynamic> map) {
    return DataSamplingConfig(
      behaviors: map['behaviors'] == null ? null : (pulumi.Input.decodeList<DataSamplingConfigBehaviorsItem>(map['behaviors']!, (value) => DataSamplingConfigBehaviorsItem.fromValue(value as String))).input(),
    );
  }
}

