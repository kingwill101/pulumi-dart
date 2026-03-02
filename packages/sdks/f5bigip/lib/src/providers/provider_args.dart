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
      address: map['address'] == null ? null : (map['address'] as String).input(),
      apiRetries: map['apiRetries'] == null ? null : (map['apiRetries'] as int).input(),
      apiTimeout: map['apiTimeout'] == null ? null : (map['apiTimeout'] as int).input(),
      loginRef: map['loginRef'] == null ? null : (map['loginRef'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
      teemDisable: map['teemDisable'] == null ? null : (map['teemDisable'] as bool).input(),
      tokenAuth: map['tokenAuth'] == null ? null : (map['tokenAuth'] as bool).input(),
      tokenTimeout: map['tokenTimeout'] == null ? null : (map['tokenTimeout'] as int).input(),
      tokenValue: map['tokenValue'] == null ? null : (map['tokenValue'] as String).input(),
      trustedCertPath: map['trustedCertPath'] == null ? null : (map['trustedCertPath'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
      validateCertsDisable: map['validateCertsDisable'] == null ? null : (map['validateCertsDisable'] as bool).input(),
    );
  }
}

