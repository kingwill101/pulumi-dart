// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_web_implicit_grant.dart';

class ApplicationWeb {
  /// Home page or landing page of the application.
  final pulumi.Input<String>? homepageUrl;
  /// An `implicit_grant` block as documented above.
  final pulumi.Input<ApplicationWebImplicitGrant>? implicitGrant;
  /// The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  final pulumi.Input<String>? logoutUrl;
  /// A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `http` URL or a URN.
  final pulumi.Input<List<String>>? redirectUris;

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
      'implicitGrant': ?pulumi.Input.mapOptionalInputValue<ApplicationWebImplicitGrant, Map<String, dynamic>>(implicitGrant, (value) => value.toMap()),
      'logoutUrl': ?logoutUrl,
      'redirectUris': ?redirectUris,
    };
  }

  factory ApplicationWeb.fromMap(Map<String, dynamic> map) {
    return ApplicationWeb(
      homepageUrl: map['homepageUrl'] == null ? null : (map['homepageUrl']! as String).input(),
      implicitGrant: map['implicitGrant'] == null ? null : (ApplicationWebImplicitGrant.fromMap((map['implicitGrant']! as Map).cast<String, dynamic>())).input(),
      logoutUrl: map['logoutUrl'] == null ? null : (map['logoutUrl']! as String).input(),
      redirectUris: map['redirectUris'] == null ? null : ((map['redirectUris']! as List).cast<String>()).input(),
    );
  }
}

