// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePrincipalSamlSingleSignOn {
  /// The relative URI the service provider would redirect to after completion of the single sign-on flow.
  final pulumi.Input<String>? relayState;

  /// Creates a new [ServicePrincipalSamlSingleSignOn].
  /// [relayState] The relative URI the service provider would redirect to after completion of the single sign-on flow.
  ServicePrincipalSamlSingleSignOn({
    this.relayState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayState': ?relayState,
    };
  }

  factory ServicePrincipalSamlSingleSignOn.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalSamlSingleSignOn(
      relayState: (() { final guardedValue = map['relayState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

