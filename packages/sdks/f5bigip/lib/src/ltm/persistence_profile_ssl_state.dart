// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PersistenceProfileSsl resources.
class PersistenceProfileSslState {
  final pulumi.Input<String>? appService;
  /// Inherit defaults from parent profile
  final pulumi.Input<String>? defaultsFrom;
  /// To enable _ disable match across pools with given persistence record
  final pulumi.Input<String>? matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossServices;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossVirtuals;
  /// To enable _ disable
  final pulumi.Input<String>? mirror;
  /// Name of the persistence profile
  final pulumi.Input<String>? name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  final pulumi.Input<String>? overrideConnLimit;
  /// Timeout for persistence of the session
  final pulumi.Input<int>? timeout;

  /// Creates a new [PersistenceProfileSslState].
  /// [appService] Optional.
  /// [defaultsFrom] Inherit defaults from parent profile
  /// [matchAcrossPools] To enable _ disable match across pools with given persistence record
  /// [matchAcrossServices] To enable _ disable match across services with given persistence record
  /// [matchAcrossVirtuals] To enable _ disable match across services with given persistence record
  /// [mirror] To enable _ disable
  /// [name] Name of the persistence profile
  /// [overrideConnLimit] To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  /// [timeout] Timeout for persistence of the session
  PersistenceProfileSslState({
    this.appService,
    this.defaultsFrom,
    this.matchAcrossPools,
    this.matchAcrossServices,
    this.matchAcrossVirtuals,
    this.mirror,
    this.name,
    this.overrideConnLimit,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'defaultsFrom': ?defaultsFrom,
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'mirror': ?mirror,
      'name': ?name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileSslState.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileSslState(
      appService: map['appService'] == null ? null : (map['appService'] as String).input(),
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom'] as String).input(),
      matchAcrossPools: map['matchAcrossPools'] == null ? null : (map['matchAcrossPools'] as String).input(),
      matchAcrossServices: map['matchAcrossServices'] == null ? null : (map['matchAcrossServices'] as String).input(),
      matchAcrossVirtuals: map['matchAcrossVirtuals'] == null ? null : (map['matchAcrossVirtuals'] as String).input(),
      mirror: map['mirror'] == null ? null : (map['mirror'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      overrideConnLimit: map['overrideConnLimit'] == null ? null : (map['overrideConnLimit'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

