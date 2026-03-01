// ignore_for_file: unused_element, unnecessary_cast


/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponseContainerV1beta1 {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final String threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesResponseContainerV1beta1].
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  AdvancedMachineFeaturesResponseContainerV1beta1({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': threadsPerCore,
    };
  }

  factory AdvancedMachineFeaturesResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponseContainerV1beta1(
      threadsPerCore: map['threadsPerCore'] as String,
    );
  }
}

