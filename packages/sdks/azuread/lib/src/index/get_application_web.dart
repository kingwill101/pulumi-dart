// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_web_implicit_grant.dart';

class GetApplicationWeb {
  /// Home page or landing page of the application.
  final pulumi.Input<String> homepageUrl;
  /// An `implicit_grant` block as documented above.
  final pulumi.Input<List<GetApplicationWebImplicitGrant>> implicitGrants;
  /// The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  final pulumi.Input<String> logoutUrl;
  /// A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  final pulumi.Input<List<String>> redirectUris;

  /// Creates a new [GetApplicationWeb].
  /// [homepageUrl] Home page or landing page of the application.
  /// [implicitGrants] An `implicit_grant` block as documented above.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  /// [redirectUris] A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  GetApplicationWeb({
    required this.homepageUrl,
    required this.implicitGrants,
    required this.logoutUrl,
    required this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homepageUrl': homepageUrl,
      'implicitGrants': pulumi.Input.mapInputValue<List<GetApplicationWebImplicitGrant>, List<Map<String, dynamic>>>(implicitGrants, (value) => pulumi.Input.encodeList<GetApplicationWebImplicitGrant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logoutUrl': logoutUrl,
      'redirectUris': redirectUris,
    };
  }

  factory GetApplicationWeb.fromMap(Map<String, dynamic> map) {
    return GetApplicationWeb(
      homepageUrl: (map['homepageUrl'] as String).input(),
      implicitGrants: (pulumi.Input.decodeList<GetApplicationWebImplicitGrant>(map['implicitGrants'], (value) => GetApplicationWebImplicitGrant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logoutUrl: (map['logoutUrl'] as String).input(),
      redirectUris: ((map['redirectUris'] as List).cast<String>()).input(),
    );
  }
}

