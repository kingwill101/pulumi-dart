// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A backend rule provides configuration for an individual API element.
class BackendRuleResponse {
  /// The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.
  final pulumi.Input<String> address;
  /// The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.
  final pulumi.Input<double> deadline;
  /// When disable_auth is true, a JWT ID token won't be generated and the original "Authorization" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.
  final pulumi.Input<bool> disableAuth;
  /// The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP "authorization" header, and sent to the backend.
  final pulumi.Input<String> jwtAudience;
  /// Deprecated, do not use.
  final pulumi.Input<double> minDeadline;
  /// The number of seconds to wait for the completion of a long running operation. The default is no deadline.
  final pulumi.Input<double> operationDeadline;
  /// The map between request protocol and the backend address.
  final pulumi.Input<Map<String, String>> overridesByRequestProtocol;
  final pulumi.Input<String> pathTranslation;
  /// The protocol used for sending a request to the backend. The supported values are "http/1.1" and "h2". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this field to "h2" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.
  final pulumi.Input<String> protocol;
  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [BackendRuleResponse].
  /// [address] The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.
  /// [deadline] The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.
  /// [disableAuth] When disable_auth is true, a JWT ID token won't be generated and the original "Authorization" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.
  /// [jwtAudience] The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP "authorization" header, and sent to the backend.
  /// [minDeadline] Deprecated, do not use.
  /// [operationDeadline] The number of seconds to wait for the completion of a long running operation. The default is no deadline.
  /// [overridesByRequestProtocol] The map between request protocol and the backend address.
  /// [pathTranslation] Required.
  /// [protocol] The protocol used for sending a request to the backend. The supported values are "http/1.1" and "h2". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this field to "h2" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  BackendRuleResponse({
    required this.address,
    required this.deadline,
    required this.disableAuth,
    required this.jwtAudience,
    required this.minDeadline,
    required this.operationDeadline,
    required this.overridesByRequestProtocol,
    required this.pathTranslation,
    required this.protocol,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'deadline': deadline,
      'disableAuth': disableAuth,
      'jwtAudience': jwtAudience,
      'minDeadline': minDeadline,
      'operationDeadline': operationDeadline,
      'overridesByRequestProtocol': overridesByRequestProtocol,
      'pathTranslation': pathTranslation,
      'protocol': protocol,
      'selector': selector,
    };
  }

  factory BackendRuleResponse.fromMap(Map<String, dynamic> map) {
    return BackendRuleResponse(
      address: (map['address'] as String).input(),
      deadline: (map['deadline'] as double).input(),
      disableAuth: (map['disableAuth'] as bool).input(),
      jwtAudience: (map['jwtAudience'] as String).input(),
      minDeadline: (map['minDeadline'] as double).input(),
      operationDeadline: (map['operationDeadline'] as double).input(),
      overridesByRequestProtocol: ((map['overridesByRequestProtocol'] as Map).cast<String, String>()).input(),
      pathTranslation: (map['pathTranslation'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      selector: (map['selector'] as String).input(),
    );
  }
}

