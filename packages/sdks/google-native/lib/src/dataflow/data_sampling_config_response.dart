// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for sampling elements.
class DataSamplingConfigResponse {
  /// List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  final pulumi.Input<List<String>> behaviors;

  /// Creates a new [DataSamplingConfigResponse].
  /// [behaviors] List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  const DataSamplingConfigResponse({
    required this.behaviors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviors': behaviors,
    };
  }

  factory DataSamplingConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataSamplingConfigResponse(
      behaviors: pulumi.Input.fromValue((map['behaviors'] as List).cast<String>()),
    );
  }
}
