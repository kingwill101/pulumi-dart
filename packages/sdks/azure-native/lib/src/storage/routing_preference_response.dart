// ignore_for_file: unused_element, unnecessary_cast


/// Routing preference defines the type of network, either microsoft or internet routing to be used to deliver the user data, the default option is microsoft routing
class RoutingPreferenceResponse {
  /// A boolean flag which indicates whether internet routing storage endpoints are to be published
  final bool? publishInternetEndpoints;
  /// A boolean flag which indicates whether microsoft routing storage endpoints are to be published
  final bool? publishMicrosoftEndpoints;
  /// Routing Choice defines the kind of network routing opted by the user.
  final String? routingChoice;

  /// Creates a new [RoutingPreferenceResponse].
  /// [publishInternetEndpoints] A boolean flag which indicates whether internet routing storage endpoints are to be published
  /// [publishMicrosoftEndpoints] A boolean flag which indicates whether microsoft routing storage endpoints are to be published
  /// [routingChoice] Routing Choice defines the kind of network routing opted by the user.
  RoutingPreferenceResponse({
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

  factory RoutingPreferenceResponse.fromMap(Map<String, dynamic> map) {
    return RoutingPreferenceResponse(
      publishInternetEndpoints: map['publishInternetEndpoints'] == null ? null : map['publishInternetEndpoints'] as bool,
      publishMicrosoftEndpoints: map['publishMicrosoftEndpoints'] == null ? null : map['publishMicrosoftEndpoints'] as bool,
      routingChoice: map['routingChoice'] == null ? null : map['routingChoice'] as String,
    );
  }
}

