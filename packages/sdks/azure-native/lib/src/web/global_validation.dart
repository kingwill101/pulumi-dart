// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unauthenticated_client_action_v2.dart';

/// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
class GlobalValidation {
  /// The paths for which unauthenticated flow would not be redirected to the login page.
  final pulumi.Input<List<String>>? excludedPaths;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final pulumi.Input<String>? redirectToProvider;
  /// &lt;code&gt;true&lt;/code&gt; if the authentication flow is required any request is made; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? requireAuthentication;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<UnauthenticatedClientActionV2>? unauthenticatedClientAction;

  /// Creates a new [GlobalValidation].
  /// [excludedPaths] The paths for which unauthenticated flow would not be redirected to the login page.
  /// [redirectToProvider] The default authentication provider to use when multiple providers are configured.
  /// [requireAuthentication] &lt;code&gt;true&lt;/code&gt; if the authentication flow is required any request is made; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  const GlobalValidation({
    this.excludedPaths,
    this.redirectToProvider,
    this.requireAuthentication,
    this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPaths': ?excludedPaths,
      'redirectToProvider': ?redirectToProvider,
      'requireAuthentication': ?requireAuthentication,
      'unauthenticatedClientAction': ?pulumi.Input.mapOptionalInputValue<UnauthenticatedClientActionV2, String>(unauthenticatedClientAction, (value) => value.wireValue),
    };
  }

  factory GlobalValidation.fromMap(Map<String, dynamic> map) {
    return GlobalValidation(
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectToProvider: (() { final guardedValue = map['redirectToProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireAuthentication: (() { final guardedValue = map['requireAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unauthenticatedClientAction: (() { final guardedValue = map['unauthenticatedClientAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnauthenticatedClientActionV2.fromValue(guardedValue as String)); })(),
    );
  }
}
