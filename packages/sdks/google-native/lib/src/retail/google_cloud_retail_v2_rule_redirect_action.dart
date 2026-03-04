// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Redirects a shopper to a specific page. * Rule Condition: Must specify Condition.query_terms. * Action Input: Request Query * Action Result: Redirects shopper to provided uri.
class GoogleCloudRetailV2RuleRedirectAction {
  /// URL must have length equal or less than 2000 characters.
  final pulumi.Input<String>? redirectUri;

  /// Creates a new [GoogleCloudRetailV2RuleRedirectAction].
  /// [redirectUri] URL must have length equal or less than 2000 characters.
  GoogleCloudRetailV2RuleRedirectAction({this.redirectUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'redirectUri': ?redirectUri};
  }

  factory GoogleCloudRetailV2RuleRedirectAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2RuleRedirectAction(
      redirectUri: (() {
        final guardedValue = map['redirectUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
