// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_persistence_profile_ssl_persistence_profile_ssl_args_doc}
/// The set of arguments for PersistenceProfileSsl.
/// {@endtemplate}
/// {@macro pulumi_ltm_persistence_profile_ssl_persistence_profile_ssl_args_doc}
class PersistenceProfileSslArgs {
  final pulumi.Input<String>? appService;

  /// Inherit defaults from parent profile
  final pulumi.Input<String> defaultsFrom;

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

  /// Creates a new [PersistenceProfileSslArgs].
  /// [appService] Optional.
  /// [defaultsFrom] Inherit defaults from parent profile
  /// [matchAcrossPools] To enable _ disable match across pools with given persistence record
  /// [matchAcrossServices] To enable _ disable match across services with given persistence record
  /// [matchAcrossVirtuals] To enable _ disable match across services with given persistence record
  /// [mirror] To enable _ disable
  /// [name] Name of the persistence profile
  /// [overrideConnLimit] To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  /// [timeout] Timeout for persistence of the session
  PersistenceProfileSslArgs({
    this.appService,
    required this.defaultsFrom,
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
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'mirror': ?mirror,
      'name': name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileSslArgs.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileSslArgs(
      appService: (() {
        final guardedValue = map['appService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultsFrom: pulumi.Input.fromValue(map['defaultsFrom'] as String),
      matchAcrossPools: (() {
        final guardedValue = map['matchAcrossPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchAcrossServices: (() {
        final guardedValue = map['matchAcrossServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchAcrossVirtuals: (() {
        final guardedValue = map['matchAcrossVirtuals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mirror: (() {
        final guardedValue = map['mirror'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      overrideConnLimit: (() {
        final guardedValue = map['overrideConnLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
