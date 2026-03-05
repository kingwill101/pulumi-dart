// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cookie_expiration.dart';
import 'login_routes.dart';
import 'nonce.dart';
import 'token_store.dart';

/// The configuration settings of the login flow of users using App Service Authentication/Authorization.
class Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The configuration settings of the session cookie's expiration.
  final pulumi.Input<CookieExpiration>? cookieExpiration;
  /// The configuration settings of the nonce used in the login flow.
  final pulumi.Input<Nonce>? nonce;
  /// &lt;code&gt;true&lt;/code&gt; if the fragments from the request are preserved after the login request is made; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? preserveUrlFragmentsForLogins;
  /// The routes that specify the endpoints used for login and logout requests.
  final pulumi.Input<LoginRoutes>? routes;
  /// The configuration settings of the token store.
  final pulumi.Input<TokenStore>? tokenStore;

  /// Creates a new [Login].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// [cookieExpiration] The configuration settings of the session cookie's expiration.
  /// [nonce] The configuration settings of the nonce used in the login flow.
  /// [preserveUrlFragmentsForLogins] &lt;code&gt;true&lt;/code&gt; if the fragments from the request are preserved after the login request is made; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [routes] The routes that specify the endpoints used for login and logout requests.
  /// [tokenStore] The configuration settings of the token store.
  Login({
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
      'cookieExpiration': ?pulumi.Input.mapOptionalInputValue<CookieExpiration, Map<String, dynamic>>(cookieExpiration, (value) => value.toMap()),
      'nonce': ?pulumi.Input.mapOptionalInputValue<Nonce, Map<String, dynamic>>(nonce, (value) => value.toMap()),
      'preserveUrlFragmentsForLogins': ?preserveUrlFragmentsForLogins,
      'routes': ?pulumi.Input.mapOptionalInputValue<LoginRoutes, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'tokenStore': ?pulumi.Input.mapOptionalInputValue<TokenStore, Map<String, dynamic>>(tokenStore, (value) => value.toMap()),
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      allowedExternalRedirectUrls: (() { final guardedValue = map['allowedExternalRedirectUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cookieExpiration: (() { final guardedValue = map['cookieExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CookieExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nonce: (() { final guardedValue = map['nonce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Nonce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preserveUrlFragmentsForLogins: (() { final guardedValue = map['preserveUrlFragmentsForLogins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoginRoutes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenStore: (() { final guardedValue = map['tokenStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

