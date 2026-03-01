// ignore_for_file: unused_element, unnecessary_cast


/// Feature of a resource, which controls the runtime behavior.
class SignalRFeature {
  /// FeatureFlags is the supported features of Azure SignalR service.
  /// - ServiceMode: Flag for backend server for SignalR service. Values allowed: "Default": have your own backend server; "Serverless": your application doesn't have a backend server; "Classic": for backward compatibility. Support both Default and Serverless mode but not recommended; "PredefinedOnly": for future use.
  /// - EnableConnectivityLogs: "true"/"false", to enable/disable the connectivity log category respectively.
  /// - EnableMessagingLogs: "true"/"false", to enable/disable the connectivity log category respectively.
  /// - EnableLiveTrace: Live Trace allows you to know what's happening inside Azure SignalR service, it will give you live traces in real time, it will be helpful when you developing your own Azure SignalR based web application or self-troubleshooting some issues. Please note that live traces are counted as outbound messages that will be charged. Values allowed: "true"/"false", to enable/disable live trace feature.
  final String flag;
  /// Optional properties related to this feature.
  final Map<String, String>? properties;
  /// Value of the feature flag. See Azure SignalR service document https://docs.microsoft.com/azure/azure-signalr/ for allowed values.
  final String value;

  /// Creates a new [SignalRFeature].
  /// [flag] FeatureFlags is the supported features of Azure SignalR service.
  /// [properties] Optional properties related to this feature.
  /// [value] Value of the feature flag. See Azure SignalR service document https://docs.microsoft.com/azure/azure-signalr/ for allowed values.
  SignalRFeature({
    required this.flag,
    this.properties,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flag': flag,
      'properties': ?properties,
      'value': value,
    };
  }

  factory SignalRFeature.fromMap(Map<String, dynamic> map) {
    return SignalRFeature(
      flag: map['flag'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      value: map['value'] as String,
    );
  }
}

