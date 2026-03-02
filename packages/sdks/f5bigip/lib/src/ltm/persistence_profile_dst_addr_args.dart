// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_persistence_profile_dst_addr_persistence_profile_dst_addr_args_doc}
/// The set of arguments for PersistenceProfileDstAddr.
/// {@endtemplate}
/// {@macro pulumi_ltm_persistence_profile_dst_addr_persistence_profile_dst_addr_args_doc}
class PersistenceProfileDstAddrArgs {
  final pulumi.Input<String>? appService;
  /// Inherit defaults from parent profile
  final pulumi.Input<String> defaultsFrom;
  /// Specify the hash algorithm
  final pulumi.Input<String>? hashAlgorithm;
  /// Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
  final pulumi.Input<String>? mask;
  /// To enable _ disable match across pools with given persistence record
  final pulumi.Input<String>? matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossServices;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossVirtuals;
  /// To enable _ disable
  final pulumi.Input<String>? mirror;
  /// Name of the persistence profile
  final pulumi.Input<String> name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  final pulumi.Input<String>? overrideConnLimit;
  /// Timeout for persistence of the session
  final pulumi.Input<int>? timeout;

  /// Creates a new [PersistenceProfileDstAddrArgs].
  /// [appService] Optional.
  /// [defaultsFrom] Inherit defaults from parent profile
  /// [hashAlgorithm] Specify the hash algorithm
  /// [mask] Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
  /// [matchAcrossPools] To enable _ disable match across pools with given persistence record
  /// [matchAcrossServices] To enable _ disable match across services with given persistence record
  /// [matchAcrossVirtuals] To enable _ disable match across services with given persistence record
  /// [mirror] To enable _ disable
  /// [name] Name of the persistence profile
  /// [overrideConnLimit] To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  /// [timeout] Timeout for persistence of the session
  PersistenceProfileDstAddrArgs({
    this.appService,
    required this.defaultsFrom,
    this.hashAlgorithm,
    this.mask,
    this.matchAcrossPools,
    this.matchAcrossServices,
    this.matchAcrossVirtuals,
    this.mirror,
    required this.name,
    this.overrideConnLimit,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'defaultsFrom': defaultsFrom,
      'hashAlgorithm': ?hashAlgorithm,
      'mask': ?mask,
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'mirror': ?mirror,
      'name': name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileDstAddrArgs.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileDstAddrArgs(
      appService: map['appService'] == null ? null : (map['appService'] as String).input(),
      defaultsFrom: (map['defaultsFrom'] as String).input(),
      hashAlgorithm: map['hashAlgorithm'] == null ? null : (map['hashAlgorithm'] as String).input(),
      mask: map['mask'] == null ? null : (map['mask'] as String).input(),
      matchAcrossPools: map['matchAcrossPools'] == null ? null : (map['matchAcrossPools'] as String).input(),
      matchAcrossServices: map['matchAcrossServices'] == null ? null : (map['matchAcrossServices'] as String).input(),
      matchAcrossVirtuals: map['matchAcrossVirtuals'] == null ? null : (map['matchAcrossVirtuals'] as String).input(),
      mirror: map['mirror'] == null ? null : (map['mirror'] as String).input(),
      name: (map['name'] as String).input(),
      overrideConnLimit: map['overrideConnLimit'] == null ? null : (map['overrideConnLimit'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

