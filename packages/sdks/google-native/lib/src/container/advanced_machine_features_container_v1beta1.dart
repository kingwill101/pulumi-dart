// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesContainerV1beta1 {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<String>? threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesContainerV1beta1].
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  AdvancedMachineFeaturesContainerV1beta1({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory AdvancedMachineFeaturesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesContainerV1beta1(
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore']! as String).input(),
    );
  }
}

