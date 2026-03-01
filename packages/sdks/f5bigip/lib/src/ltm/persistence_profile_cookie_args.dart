// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_persistence_profile_cookie_persistence_profile_cookie_args_doc}
/// The set of arguments for PersistenceProfileCookie.
/// {@endtemplate}
/// {@macro pulumi_ltm_persistence_profile_cookie_persistence_profile_cookie_args_doc}
class PersistenceProfileCookieArgs {
  /// To enable _ disable always sending cookies
  final pulumi.Input<String>? alwaysSend;
  final pulumi.Input<String>? appService;
  /// To required, preferred, or disabled policy for cookie encryption
  final pulumi.Input<String>? cookieEncryption;
  /// Passphrase for encrypted cookies
  final pulumi.Input<String>? cookieEncryptionPassphrase;
  /// Name of the cookie to track persistence
  final pulumi.Input<String>? cookieName;
  /// Inherit defaults from parent profile
  final pulumi.Input<String> defaultsFrom;
  /// Expiration TTL for cookie specified in D:H:M:S or in seconds
  final pulumi.Input<String>? expiration;
  /// Length of hash to apply to cookie
  final pulumi.Input<int>? hashLength;
  /// Number of characters to skip in the cookie for the hash
  final pulumi.Input<int>? hashOffset;
  /// To enable _ disable sending only over http
  final pulumi.Input<String>? httponly;
  /// To enable _ disable match across pools with given persistence record
  final pulumi.Input<String>? matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossServices;
  /// To enable _ disable match across virtual servers with given persistence record
  final pulumi.Input<String>? matchAcrossVirtuals;
  /// Specifies the type of cookie processing that the system uses
  final pulumi.Input<String>? method;
  /// To enable _ disable
  final pulumi.Input<String>? mirror;
  /// Name of the persistence profile
  final pulumi.Input<String> name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  final pulumi.Input<String>? overrideConnLimit;
  /// Timeout for persistence of the session
  final pulumi.Input<int>? timeout;

  /// Creates a new [PersistenceProfileCookieArgs].
  /// [alwaysSend] To enable _ disable always sending cookies
  /// [appService] Optional.
  /// [cookieEncryption] To required, preferred, or disabled policy for cookie encryption
  /// [cookieEncryptionPassphrase] Passphrase for encrypted cookies
  /// [cookieName] Name of the cookie to track persistence
  /// [defaultsFrom] Inherit defaults from parent profile
  /// [expiration] Expiration TTL for cookie specified in D:H:M:S or in seconds
  /// [hashLength] Length of hash to apply to cookie
  /// [hashOffset] Number of characters to skip in the cookie for the hash
  /// [httponly] To enable _ disable sending only over http
  /// [matchAcrossPools] To enable _ disable match across pools with given persistence record
  /// [matchAcrossServices] To enable _ disable match across services with given persistence record
  /// [matchAcrossVirtuals] To enable _ disable match across virtual servers with given persistence record
  /// [method] Specifies the type of cookie processing that the system uses
  /// [mirror] To enable _ disable
  /// [name] Name of the persistence profile
  /// [overrideConnLimit] To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  /// [timeout] Timeout for persistence of the session
  PersistenceProfileCookieArgs({
    pulumi.Output<String>? alwaysSend,
    pulumi.Output<String>? appService,
    pulumi.Output<String>? cookieEncryption,
    pulumi.Output<String>? cookieEncryptionPassphrase,
    pulumi.Output<String>? cookieName,
    required pulumi.Output<String> defaultsFrom,
    pulumi.Output<String>? expiration,
    pulumi.Output<int>? hashLength,
    pulumi.Output<int>? hashOffset,
    pulumi.Output<String>? httponly,
    pulumi.Output<String>? matchAcrossPools,
    pulumi.Output<String>? matchAcrossServices,
    pulumi.Output<String>? matchAcrossVirtuals,
    pulumi.Output<String>? method,
    pulumi.Output<String>? mirror,
    required pulumi.Output<String> name,
    pulumi.Output<String>? overrideConnLimit,
    pulumi.Output<int>? timeout,
  }) :
      alwaysSend = pulumi.Input.asOptionalInput<String>(alwaysSend),
      appService = pulumi.Input.asOptionalInput<String>(appService),
      cookieEncryption = pulumi.Input.asOptionalInput<String>(cookieEncryption),
      cookieEncryptionPassphrase = pulumi.Input.asOptionalInput<String>(cookieEncryptionPassphrase),
      cookieName = pulumi.Input.asOptionalInput<String>(cookieName),
      defaultsFrom = pulumi.Input.asInput<String>(defaultsFrom),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      hashLength = pulumi.Input.asOptionalInput<int>(hashLength),
      hashOffset = pulumi.Input.asOptionalInput<int>(hashOffset),
      httponly = pulumi.Input.asOptionalInput<String>(httponly),
      matchAcrossPools = pulumi.Input.asOptionalInput<String>(matchAcrossPools),
      matchAcrossServices = pulumi.Input.asOptionalInput<String>(matchAcrossServices),
      matchAcrossVirtuals = pulumi.Input.asOptionalInput<String>(matchAcrossVirtuals),
      method = pulumi.Input.asOptionalInput<String>(method),
      mirror = pulumi.Input.asOptionalInput<String>(mirror),
      name = pulumi.Input.asInput<String>(name),
      overrideConnLimit = pulumi.Input.asOptionalInput<String>(overrideConnLimit),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysSend': ?alwaysSend,
      'appService': ?appService,
      'cookieEncryption': ?cookieEncryption,
      'cookieEncryptionPassphrase': ?cookieEncryptionPassphrase,
      'cookieName': ?cookieName,
      'defaultsFrom': defaultsFrom,
      'expiration': ?expiration,
      'hashLength': ?hashLength,
      'hashOffset': ?hashOffset,
      'httponly': ?httponly,
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'method': ?method,
      'mirror': ?mirror,
      'name': name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileCookieArgs.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileCookieArgs(
      alwaysSend: map['alwaysSend'] == null ? null : pulumi.Output.create<String>(map['alwaysSend'] as String),
      appService: map['appService'] == null ? null : pulumi.Output.create<String>(map['appService'] as String),
      cookieEncryption: map['cookieEncryption'] == null ? null : pulumi.Output.create<String>(map['cookieEncryption'] as String),
      cookieEncryptionPassphrase: map['cookieEncryptionPassphrase'] == null ? null : pulumi.Output.create<String>(map['cookieEncryptionPassphrase'] as String),
      cookieName: map['cookieName'] == null ? null : pulumi.Output.create<String>(map['cookieName'] as String),
      defaultsFrom: pulumi.Output.create<String>(map['defaultsFrom'] as String),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      hashLength: map['hashLength'] == null ? null : pulumi.Output.create<int>(map['hashLength'] as int),
      hashOffset: map['hashOffset'] == null ? null : pulumi.Output.create<int>(map['hashOffset'] as int),
      httponly: map['httponly'] == null ? null : pulumi.Output.create<String>(map['httponly'] as String),
      matchAcrossPools: map['matchAcrossPools'] == null ? null : pulumi.Output.create<String>(map['matchAcrossPools'] as String),
      matchAcrossServices: map['matchAcrossServices'] == null ? null : pulumi.Output.create<String>(map['matchAcrossServices'] as String),
      matchAcrossVirtuals: map['matchAcrossVirtuals'] == null ? null : pulumi.Output.create<String>(map['matchAcrossVirtuals'] as String),
      method: map['method'] == null ? null : pulumi.Output.create<String>(map['method'] as String),
      mirror: map['mirror'] == null ? null : pulumi.Output.create<String>(map['mirror'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      overrideConnLimit: map['overrideConnLimit'] == null ? null : pulumi.Output.create<String>(map['overrideConnLimit'] as String),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
    );
  }
}

