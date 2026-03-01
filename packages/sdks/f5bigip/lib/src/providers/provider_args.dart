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
    pulumi.Output<String>? address,
    pulumi.Output<int>? apiRetries,
    pulumi.Output<int>? apiTimeout,
    pulumi.Output<String>? loginRef,
    pulumi.Output<String>? password,
    pulumi.Output<String>? port,
    pulumi.Output<bool>? teemDisable,
    pulumi.Output<bool>? tokenAuth,
    pulumi.Output<int>? tokenTimeout,
    pulumi.Output<String>? tokenValue,
    pulumi.Output<String>? trustedCertPath,
    pulumi.Output<String>? username,
    pulumi.Output<bool>? validateCertsDisable,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      apiRetries = pulumi.Input.asOptionalInput<int>(apiRetries),
      apiTimeout = pulumi.Input.asOptionalInput<int>(apiTimeout),
      loginRef = pulumi.Input.asOptionalInput<String>(loginRef),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<String>(port),
      teemDisable = pulumi.Input.asOptionalInput<bool>(teemDisable),
      tokenAuth = pulumi.Input.asOptionalInput<bool>(tokenAuth),
      tokenTimeout = pulumi.Input.asOptionalInput<int>(tokenTimeout),
      tokenValue = pulumi.Input.asOptionalInput<String>(tokenValue),
      trustedCertPath = pulumi.Input.asOptionalInput<String>(trustedCertPath),
      username = pulumi.Input.asOptionalInput<String>(username),
      validateCertsDisable = pulumi.Input.asOptionalInput<bool>(validateCertsDisable);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      apiRetries: map['apiRetries'] == null ? null : pulumi.Output.create<int>(map['apiRetries'] as int),
      apiTimeout: map['apiTimeout'] == null ? null : pulumi.Output.create<int>(map['apiTimeout'] as int),
      loginRef: map['loginRef'] == null ? null : pulumi.Output.create<String>(map['loginRef'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      teemDisable: map['teemDisable'] == null ? null : pulumi.Output.create<bool>(map['teemDisable'] as bool),
      tokenAuth: map['tokenAuth'] == null ? null : pulumi.Output.create<bool>(map['tokenAuth'] as bool),
      tokenTimeout: map['tokenTimeout'] == null ? null : pulumi.Output.create<int>(map['tokenTimeout'] as int),
      tokenValue: map['tokenValue'] == null ? null : pulumi.Output.create<String>(map['tokenValue'] as String),
      trustedCertPath: map['trustedCertPath'] == null ? null : pulumi.Output.create<String>(map['trustedCertPath'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      validateCertsDisable: map['validateCertsDisable'] == null ? null : pulumi.Output.create<bool>(map['validateCertsDisable'] as bool),
    );
  }
}

