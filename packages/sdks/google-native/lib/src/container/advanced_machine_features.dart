// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<String>? threadsPerCore;

  /// Creates a new [AdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  const AdvancedMachineFeatures({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory AdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeatures(
      threadsPerCore: (() { final guardedValue = map['threadsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
