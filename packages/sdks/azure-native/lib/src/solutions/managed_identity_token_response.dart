// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed identity token for the managed app resource.
class ManagedIdentityTokenResponse {
  /// The requested access token.
  final pulumi.Input<String>? accessToken;
  /// The aud (audience) the access token was request for. This is the same as what was provided in the listTokens request.
  final pulumi.Input<String>? authorizationAudience;
  /// The number of seconds the access token will be valid.
  final pulumi.Input<String>? expiresIn;
  /// The timespan when the access token expires. This is represented as the number of seconds from epoch.
  final pulumi.Input<String>? expiresOn;
  /// The timespan when the access token takes effect. This is represented as the number of seconds from epoch.
  final pulumi.Input<String>? notBefore;
  /// The Azure resource ID for the issued token. This is either the managed application ID or the user-assigned identity ID.
  final pulumi.Input<String>? resourceId;
  /// The type of the token.
  final pulumi.Input<String>? tokenType;

  /// Creates a new [ManagedIdentityTokenResponse].
  /// [accessToken] The requested access token.
  /// [authorizationAudience] The aud (audience) the access token was request for. This is the same as what was provided in the listTokens request.
  /// [expiresIn] The number of seconds the access token will be valid.
  /// [expiresOn] The timespan when the access token expires. This is represented as the number of seconds from epoch.
  /// [notBefore] The timespan when the access token takes effect. This is represented as the number of seconds from epoch.
  /// [resourceId] The Azure resource ID for the issued token. This is either the managed application ID or the user-assigned identity ID.
  /// [tokenType] The type of the token.
  ManagedIdentityTokenResponse({
    this.accessToken,
    this.authorizationAudience,
    this.expiresIn,
    this.expiresOn,
    this.notBefore,
    this.resourceId,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'authorizationAudience': ?authorizationAudience,
      'expiresIn': ?expiresIn,
      'expiresOn': ?expiresOn,
      'notBefore': ?notBefore,
      'resourceId': ?resourceId,
      'tokenType': ?tokenType,
    };
  }

  factory ManagedIdentityTokenResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityTokenResponse(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationAudience: (() { final guardedValue = map['authorizationAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresIn: (() { final guardedValue = map['expiresIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

