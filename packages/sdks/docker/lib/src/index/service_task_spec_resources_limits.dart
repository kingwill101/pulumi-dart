// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecResourcesLimits {
  /// The amounf of memory in bytes the container allocates
  final pulumi.Input<int>? memoryBytes;
  /// CPU shares in units of `1/1e9` (or `10^-9`) of the CPU. Should be at least `1000000`
  final pulumi.Input<int>? nanoCpus;

  /// Creates a new [ServiceTaskSpecResourcesLimits].
  /// [memoryBytes] The amounf of memory in bytes the container allocates
  /// [nanoCpus] CPU shares in units of `1/1e9` (or `10^-9`) of the CPU. Should be at least `1000000`
  ServiceTaskSpecResourcesLimits({
    this.memoryBytes,
    this.nanoCpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryBytes': ?memoryBytes,
      'nanoCpus': ?nanoCpus,
    };
  }

  factory ServiceTaskSpecResourcesLimits.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecResourcesLimits(
      memoryBytes: map['memoryBytes'] == null ? null : (map['memoryBytes'] as int).input(),
      nanoCpus: map['nanoCpus'] == null ? null : (map['nanoCpus'] as int).input(),
    );
  }
}

