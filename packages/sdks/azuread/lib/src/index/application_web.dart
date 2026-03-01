// ignore_for_file: unused_element, unnecessary_cast

import 'application_web_implicit_grant.dart';

class ApplicationWeb {
  /// Home page or landing page of the application.
  final String? homepageUrl;
  /// An `implicit_grant` block as documented above.
  final ApplicationWebImplicitGrant? implicitGrant;
  /// The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  final String? logoutUrl;
  /// A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `http` URL or a URN.
  final List<String>? redirectUris;

  /// Creates a new [ApplicationWeb].
  /// [homepageUrl] Home page or landing page of the application.
  /// [implicitGrant] An `implicit_grant` block as documented above.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  /// [redirectUris] A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `http` URL or a URN.
  ApplicationWeb({
    this.homepageUrl,
    this.implicitGrant,
    this.logoutUrl,
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homepageUrl': ?homepageUrl,
      'implicitGrant': ?implicitGrant == null ? null : implicitGrant!.toMap(),
      'logoutUrl': ?logoutUrl,
      'redirectUris': ?redirectUris,
    };
  }

  factory ApplicationWeb.fromMap(Map<String, dynamic> map) {
    return ApplicationWeb(
      homepageUrl: map['homepageUrl'] == null ? null : map['homepageUrl'] as String,
      implicitGrant: map['implicitGrant'] == null ? null : ApplicationWebImplicitGrant.fromMap((map['implicitGrant'] as Map).cast<String, dynamic>()),
      logoutUrl: map['logoutUrl'] == null ? null : map['logoutUrl'] as String,
      redirectUris: map['redirectUris'] == null ? null : (map['redirectUris'] as List).cast<String>(),
    );
  }
}

