// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_header.dart';

/// [Deprecated] JWT configuration for origin authentication. JWT configuration for origin authentication.
class Jwt {
  /// A JWT containing any of these audiences will be accepted. The service name will be accepted if audiences is empty. Examples: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  final pulumi.Input<List<String>>? audiences;
  /// Identifies the issuer that issued the JWT, which is usually a URL or an email address. Examples: https://securetoken.google.com, 1234567-compute@developer.gserviceaccount.com
  final pulumi.Input<String>? issuer;
  /// The provider's public key set to validate the signature of the JWT.
  final pulumi.Input<String>? jwksPublicKeys;
  /// jwt_headers and jwt_params define where to extract the JWT from an HTTP request. If no explicit location is specified, the following default locations are tried in order: 1. The Authorization header using the Bearer schema. See `here `_. Example: Authorization: Bearer . 2. `access_token` query parameter. See `this `_ Multiple JWTs can be verified for a request. Each JWT has to be extracted from the locations its issuer specified or from the default locations. This field is set if JWT is sent in a request header. This field specifies the header name. For example, if `header=x-goog-iap-jwt-assertion`, the header format will be x-goog-iap-jwt-assertion: .
  final pulumi.Input<List<JwtHeader>>? jwtHeaders;
  /// This field is set if JWT is sent in a query parameter. This field specifies the query parameter name. For example, if jwt_params[0] is jwt_token, the JWT format in the query parameter is /path?jwt_token=.
  final pulumi.Input<List<String>>? jwtParams;

  /// Creates a new [Jwt].
  /// [audiences] A JWT containing any of these audiences will be accepted. The service name will be accepted if audiences is empty. Examples: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  /// [issuer] Identifies the issuer that issued the JWT, which is usually a URL or an email address. Examples: https://securetoken.google.com, 1234567-compute@developer.gserviceaccount.com
  /// [jwksPublicKeys] The provider's public key set to validate the signature of the JWT.
  /// [jwtHeaders] jwt_headers and jwt_params define where to extract the JWT from an HTTP request. If no explicit location is specified, the following default locations are tried in order: 1. The Authorization header using the Bearer schema. See `here `_. Example: Authorization: Bearer . 2. `access_token` query parameter. See `this `_ Multiple JWTs can be verified for a request. Each JWT has to be extracted from the locations its issuer specified or from the default locations. This field is set if JWT is sent in a request header. This field specifies the header name. For example, if `header=x-goog-iap-jwt-assertion`, the header format will be x-goog-iap-jwt-assertion: .
  /// [jwtParams] This field is set if JWT is sent in a query parameter. This field specifies the query parameter name. For example, if jwt_params[0] is jwt_token, the JWT format in the query parameter is /path?jwt_token=.
  Jwt({
    this.audiences,
    this.issuer,
    this.jwksPublicKeys,
    this.jwtHeaders,
    this.jwtParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'issuer': ?issuer,
      'jwksPublicKeys': ?jwksPublicKeys,
      'jwtHeaders': ?pulumi.Input.mapOptionalInputValue<List<JwtHeader>, List<Map<String, dynamic>>>(jwtHeaders, (value) => pulumi.Input.encodeList<JwtHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jwtParams': ?jwtParams,
    };
  }

  factory Jwt.fromMap(Map<String, dynamic> map) {
    return Jwt(
      audiences: map['audiences'] == null ? null : ((map['audiences'] as List).cast<String>()).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      jwksPublicKeys: map['jwksPublicKeys'] == null ? null : (map['jwksPublicKeys'] as String).input(),
      jwtHeaders: map['jwtHeaders'] == null ? null : (pulumi.Input.decodeList<JwtHeader>(map['jwtHeaders'], (value) => JwtHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jwtParams: map['jwtParams'] == null ? null : ((map['jwtParams'] as List).cast<String>()).input(),
    );
  }
}

