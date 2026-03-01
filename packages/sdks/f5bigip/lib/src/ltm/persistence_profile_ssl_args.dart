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
    pulumi.Output<String>? appService,
    required pulumi.Output<String> defaultsFrom,
    pulumi.Output<String>? matchAcrossPools,
    pulumi.Output<String>? matchAcrossServices,
    pulumi.Output<String>? matchAcrossVirtuals,
    pulumi.Output<String>? mirror,
    required pulumi.Output<String> name,
    pulumi.Output<String>? overrideConnLimit,
    pulumi.Output<int>? timeout,
  }) :
      appService = pulumi.Input.asOptionalInput<String>(appService),
      defaultsFrom = pulumi.Input.asInput<String>(defaultsFrom),
      matchAcrossPools = pulumi.Input.asOptionalInput<String>(matchAcrossPools),
      matchAcrossServices = pulumi.Input.asOptionalInput<String>(matchAcrossServices),
      matchAcrossVirtuals = pulumi.Input.asOptionalInput<String>(matchAcrossVirtuals),
      mirror = pulumi.Input.asOptionalInput<String>(mirror),
      name = pulumi.Input.asInput<String>(name),
      overrideConnLimit = pulumi.Input.asOptionalInput<String>(overrideConnLimit),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

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
      appService: map['appService'] == null ? null : pulumi.Output.create<String>(map['appService'] as String),
      defaultsFrom: pulumi.Output.create<String>(map['defaultsFrom'] as String),
      matchAcrossPools: map['matchAcrossPools'] == null ? null : pulumi.Output.create<String>(map['matchAcrossPools'] as String),
      matchAcrossServices: map['matchAcrossServices'] == null ? null : pulumi.Output.create<String>(map['matchAcrossServices'] as String),
      matchAcrossVirtuals: map['matchAcrossVirtuals'] == null ? null : pulumi.Output.create<String>(map['matchAcrossVirtuals'] as String),
      mirror: map['mirror'] == null ? null : pulumi.Output.create<String>(map['mirror'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      overrideConnLimit: map['overrideConnLimit'] == null ? null : pulumi.Output.create<String>(map['overrideConnLimit'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
    );
  }
}

