// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlRedirectAction {
  /// The URI to redirect to.
  final pulumi.Input<String> redirectUri;

  /// Creates a new [ControlRedirectAction].
  /// [redirectUri] The URI to redirect to.
  ControlRedirectAction({
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUri': redirectUri,
    };
  }

  factory ControlRedirectAction.fromMap(Map<String, dynamic> map) {
    return ControlRedirectAction(
      redirectUri: (map['redirectUri'] as String).input(),
    );
  }
}

