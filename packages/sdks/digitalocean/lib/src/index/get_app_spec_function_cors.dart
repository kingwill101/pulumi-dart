// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_cors_allow_origins.dart';

class GetAppSpecFunctionCors {
  /// Whether browsers should expose the response to the client-side JavaScript code when the request's credentials mode is `include`. This configures the `Access-Control-Allow-Credentials` header.
  final pulumi.Input<bool>? allowCredentials;
  /// The set of allowed HTTP request headers. This configures the `Access-Control-Allow-Headers` header.
  final pulumi.Input<List<String>>? allowHeaders;
  /// The set of allowed HTTP methods. This configures the `Access-Control-Allow-Methods` header.
  final pulumi.Input<List<String>>? allowMethods;
  /// The `Access-Control-Allow-Origin` can be
  final pulumi.Input<GetAppSpecFunctionCorsAllowOrigins>? allowOrigins;
  /// The set of HTTP response headers that browsers are allowed to access. This configures the `Access-Control-Expose-Headers` header.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  final pulumi.Input<String>? maxAge;

  /// Creates a new [GetAppSpecFunctionCors].
  /// [allowCredentials] Whether browsers should expose the response to the client-side JavaScript code when the request's credentials mode is `include`. This configures the `Access-Control-Allow-Credentials` header.
  /// [allowHeaders] The set of allowed HTTP request headers. This configures the `Access-Control-Allow-Headers` header.
  /// [allowMethods] The set of allowed HTTP methods. This configures the `Access-Control-Allow-Methods` header.
  /// [allowOrigins] The `Access-Control-Allow-Origin` can be
  /// [exposeHeaders] The set of HTTP response headers that browsers are allowed to access. This configures the `Access-Control-Expose-Headers` header.
  /// [maxAge] An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  const GetAppSpecFunctionCors({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionCorsAllowOrigins, Map<String, dynamic>>(allowOrigins, (value) => value.toMap()),
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory GetAppSpecFunctionCors.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionCors(
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowHeaders: (() { final guardedValue = map['allowHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowMethods: (() { final guardedValue = map['allowMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowOrigins: (() { final guardedValue = map['allowOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionCorsAllowOrigins.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
