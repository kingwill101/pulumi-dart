// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PersistenceProfileCookie resources.
class PersistenceProfileCookieState {
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
  final pulumi.Input<String>? defaultsFrom;
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
  final pulumi.Input<String>? name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  final pulumi.Input<String>? overrideConnLimit;
  /// Timeout for persistence of the session
  final pulumi.Input<int>? timeout;

  /// Creates a new [PersistenceProfileCookieState].
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
  const PersistenceProfileCookieState({
    this.alwaysSend,
    this.appService,
    this.cookieEncryption,
    this.cookieEncryptionPassphrase,
    this.cookieName,
    this.defaultsFrom,
    this.expiration,
    this.hashLength,
    this.hashOffset,
    this.httponly,
    this.matchAcrossPools,
    this.matchAcrossServices,
    this.matchAcrossVirtuals,
    this.method,
    this.mirror,
    this.name,
    this.overrideConnLimit,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysSend': ?alwaysSend,
      'appService': ?appService,
      'cookieEncryption': ?cookieEncryption,
      'cookieEncryptionPassphrase': ?cookieEncryptionPassphrase,
      'cookieName': ?cookieName,
      'defaultsFrom': ?defaultsFrom,
      'expiration': ?expiration,
      'hashLength': ?hashLength,
      'hashOffset': ?hashOffset,
      'httponly': ?httponly,
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'method': ?method,
      'mirror': ?mirror,
      'name': ?name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileCookieState.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileCookieState(
      alwaysSend: (() { final guardedValue = map['alwaysSend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appService: (() { final guardedValue = map['appService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieEncryption: (() { final guardedValue = map['cookieEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieEncryptionPassphrase: (() { final guardedValue = map['cookieEncryptionPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieName: (() { final guardedValue = map['cookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashLength: (() { final guardedValue = map['hashLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hashOffset: (() { final guardedValue = map['hashOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httponly: (() { final guardedValue = map['httponly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAcrossPools: (() { final guardedValue = map['matchAcrossPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAcrossServices: (() { final guardedValue = map['matchAcrossServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchAcrossVirtuals: (() { final guardedValue = map['matchAcrossVirtuals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirror: (() { final guardedValue = map['mirror']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideConnLimit: (() { final guardedValue = map['overrideConnLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

