// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Domain name/IP of the BigIP
  final pulumi.Input<String>? address;
  /// Amount of times to retry AS3 API requests. Default: 10.
  final pulumi.Input<int>? apiRetries;
  /// A timeout for AS3 requests, represented as a number of seconds. Default: 60
  final pulumi.Input<int>? apiTimeout;
  /// Login reference for token authentication (see BIG-IP REST docs for details)
  final pulumi.Input<String>? loginRef;
  /// The user's password. Leave empty if using token_value
  final pulumi.Input<String>? password;
  /// Management Port to connect to Bigip
  final pulumi.Input<String>? port;
  /// If this flag set to true,sending telemetry data to TEEM will be disabled
  final pulumi.Input<bool>? teemDisable;
  /// Enable to use token authentication. Can be set via the BIGIP_TOKEN_AUTH environment variable
  final pulumi.Input<bool>? tokenAuth;
  /// A lifespan to request for the AS3 auth token, represented as a number of seconds. Default: 1200
  final pulumi.Input<int>? tokenTimeout;
  /// A token generated outside the provider, in place of password
  final pulumi.Input<String>? tokenValue;
  /// Valid Trusted Certificate path
  final pulumi.Input<String>? trustedCertPath;
  /// Username with API access to the BigIP
  final pulumi.Input<String>? username;
  /// If set to true, Disables TLS certificate check on BIG-IP. Default : True
  final pulumi.Input<bool>? validateCertsDisable;

  /// Creates a new [ProviderArgs].
  /// [address] Domain name/IP of the BigIP
  /// [apiRetries] Amount of times to retry AS3 API requests. Default: 10.
  /// [apiTimeout] A timeout for AS3 requests, represented as a number of seconds. Default: 60
  /// [loginRef] Login reference for token authentication (see BIG-IP REST docs for details)
  /// [password] The user's password. Leave empty if using token_value
  /// [port] Management Port to connect to Bigip
  /// [teemDisable] If this flag set to true,sending telemetry data to TEEM will be disabled
  /// [tokenAuth] Enable to use token authentication. Can be set via the BIGIP_TOKEN_AUTH environment variable
  /// [tokenTimeout] A lifespan to request for the AS3 auth token, represented as a number of seconds. Default: 1200
  /// [tokenValue] A token generated outside the provider, in place of password
  /// [trustedCertPath] Valid Trusted Certificate path
  /// [username] Username with API access to the BigIP
  /// [validateCertsDisable] If set to true, Disables TLS certificate check on BIG-IP. Default : True
  ProviderArgs({
    this.address,
    this.apiRetries,
    this.apiTimeout,
    this.loginRef,
    this.password,
    this.port,
    this.teemDisable,
    this.tokenAuth,
    this.tokenTimeout,
    this.tokenValue,
    this.trustedCertPath,
    this.username,
    this.validateCertsDisable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'apiRetries': ?apiRetries,
      'apiTimeout': ?apiTimeout,
      'loginRef': ?loginRef,
      'password': ?password,
      'port': ?port,
      'teemDisable': ?teemDisable,
      'tokenAuth': ?tokenAuth,
      'tokenTimeout': ?tokenTimeout,
      'tokenValue': ?tokenValue,
      'trustedCertPath': ?trustedCertPath,
      'username': ?username,
      'validateCertsDisable': ?validateCertsDisable,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiRetries: (() { final guardedValue = map['apiRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      apiTimeout: (() { final guardedValue = map['apiTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loginRef: (() { final guardedValue = map['loginRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teemDisable: (() { final guardedValue = map['teemDisable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenAuth: (() { final guardedValue = map['tokenAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenTimeout: (() { final guardedValue = map['tokenTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tokenValue: (() { final guardedValue = map['tokenValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedCertPath: (() { final guardedValue = map['trustedCertPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validateCertsDisable: (() { final guardedValue = map['validateCertsDisable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

