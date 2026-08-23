// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePrincipalSamlSingleSignOn {
  /// The relative URI the service provider would redirect to after completion of the single sign-on flow.
  final pulumi.Input<String> relayState;

  /// Creates a new [GetServicePrincipalSamlSingleSignOn].
  /// [relayState] The relative URI the service provider would redirect to after completion of the single sign-on flow.
  const GetServicePrincipalSamlSingleSignOn({
    required this.relayState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayState': relayState,
    };
  }

  factory GetServicePrincipalSamlSingleSignOn.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalSamlSingleSignOn(
      relayState: pulumi.Input.fromValue(map['relayState'] as String),
    );
  }
}
