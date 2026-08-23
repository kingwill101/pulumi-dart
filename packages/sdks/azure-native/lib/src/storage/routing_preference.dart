// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing preference defines the type of network, either microsoft or internet routing to be used to deliver the user data, the default option is microsoft routing
class RoutingPreference {
  /// A boolean flag which indicates whether internet routing storage endpoints are to be published
  final pulumi.Input<bool>? publishInternetEndpoints;
  /// A boolean flag which indicates whether microsoft routing storage endpoints are to be published
  final pulumi.Input<bool>? publishMicrosoftEndpoints;
  /// Routing Choice defines the kind of network routing opted by the user.
  final pulumi.Input<String>? routingChoice;

  /// Creates a new [RoutingPreference].
  /// [publishInternetEndpoints] A boolean flag which indicates whether internet routing storage endpoints are to be published
  /// [publishMicrosoftEndpoints] A boolean flag which indicates whether microsoft routing storage endpoints are to be published
  /// [routingChoice] Routing Choice defines the kind of network routing opted by the user.
  const RoutingPreference({
    this.publishInternetEndpoints,
    this.publishMicrosoftEndpoints,
    this.routingChoice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishInternetEndpoints': ?publishInternetEndpoints,
      'publishMicrosoftEndpoints': ?publishMicrosoftEndpoints,
      'routingChoice': ?routingChoice,
    };
  }

  factory RoutingPreference.fromMap(Map<String, dynamic> map) {
    return RoutingPreference(
      publishInternetEndpoints: (() { final guardedValue = map['publishInternetEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publishMicrosoftEndpoints: (() { final guardedValue = map['publishMicrosoftEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routingChoice: (() { final guardedValue = map['routingChoice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
