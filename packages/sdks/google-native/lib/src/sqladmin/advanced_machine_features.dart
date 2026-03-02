// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core.
  final pulumi.Input<int>? threadsPerCore;

  /// Creates a new [AdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per physical core.
  AdvancedMachineFeatures({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory AdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeatures(
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore']! as int).input(),
    );
  }
}

