// ignore_for_file: unused_element, unnecessary_cast


/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final String? threadsPerCore;

  /// Creates a new [AdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
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
      threadsPerCore: map['threadsPerCore'] == null ? null : map['threadsPerCore'] as String,
    );
  }
}

