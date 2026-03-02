// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cookie_expiration_response.dart';
import 'login_routes_response.dart';
import 'nonce_response.dart';
import 'token_store_response.dart';

/// The configuration settings of the login flow of users using App Service Authentication/Authorization.
class LoginResponse {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The configuration settings of the session cookie's expiration.
  final pulumi.Input<CookieExpirationResponse>? cookieExpiration;
  /// The configuration settings of the nonce used in the login flow.
  final pulumi.Input<NonceResponse>? nonce;
  /// <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  final pulumi.Input<bool>? preserveUrlFragmentsForLogins;
  /// The routes that specify the endpoints used for login and logout requests.
  final pulumi.Input<LoginRoutesResponse>? routes;
  /// The configuration settings of the token store.
  final pulumi.Input<TokenStoreResponse>? tokenStore;

  /// Creates a new [LoginResponse].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// [cookieExpiration] The configuration settings of the session cookie's expiration.
  /// [nonce] The configuration settings of the nonce used in the login flow.
  /// [preserveUrlFragmentsForLogins] <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  /// [routes] The routes that specify the endpoints used for login and logout requests.
  /// [tokenStore] The configuration settings of the token store.
  LoginResponse({
    this.allowedExternalRedirectUrls,
    this.cookieExpiration,
    this.nonce,
    this.preserveUrlFragmentsForLogins,
    this.routes,
    this.tokenStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'cookieExpiration': ?pulumi.Input.mapOptionalInputValue<CookieExpirationResponse, Map<String, dynamic>>(cookieExpiration, (value) => value.toMap()),
      'nonce': ?pulumi.Input.mapOptionalInputValue<NonceResponse, Map<String, dynamic>>(nonce, (value) => value.toMap()),
      'preserveUrlFragmentsForLogins': ?preserveUrlFragmentsForLogins,
      'routes': ?pulumi.Input.mapOptionalInputValue<LoginRoutesResponse, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'tokenStore': ?pulumi.Input.mapOptionalInputValue<TokenStoreResponse, Map<String, dynamic>>(tokenStore, (value) => value.toMap()),
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : ((map['allowedExternalRedirectUrls'] as List).cast<String>()).input(),
      cookieExpiration: map['cookieExpiration'] == null ? null : (CookieExpirationResponse.fromMap((map['cookieExpiration'] as Map).cast<String, dynamic>())).input(),
      nonce: map['nonce'] == null ? null : (NonceResponse.fromMap((map['nonce'] as Map).cast<String, dynamic>())).input(),
      preserveUrlFragmentsForLogins: map['preserveUrlFragmentsForLogins'] == null ? null : (map['preserveUrlFragmentsForLogins'] as bool).input(),
      routes: map['routes'] == null ? null : (LoginRoutesResponse.fromMap((map['routes'] as Map).cast<String, dynamic>())).input(),
      tokenStore: map['tokenStore'] == null ? null : (TokenStoreResponse.fromMap((map['tokenStore'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

