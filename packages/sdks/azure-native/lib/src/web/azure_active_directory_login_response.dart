// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Azure Active Directory login flow.
class AzureActiveDirectoryLoginResponse {
  /// &lt;code&gt;true&lt;/code&gt; if the www-authenticate provider should be omitted from the request; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? disableWWWAuthenticate;

  /// Login parameters to send to the OpenID Connect authorization endpoint when
  /// a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<List<String>>? loginParameters;

  /// Creates a new [AzureActiveDirectoryLoginResponse].
  /// [disableWWWAuthenticate] &lt;code&gt;true&lt;/code&gt; if the www-authenticate provider should be omitted from the request; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [loginParameters] Login parameters to send to the OpenID Connect authorization endpoint when
  AzureActiveDirectoryLoginResponse({
    this.disableWWWAuthenticate,
    this.loginParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableWWWAuthenticate': ?disableWWWAuthenticate,
      'loginParameters': ?loginParameters,
    };
  }

  factory AzureActiveDirectoryLoginResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryLoginResponse(
      disableWWWAuthenticate: (() {
        final guardedValue = map['disableWWWAuthenticate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loginParameters: (() {
        final guardedValue = map['loginParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
