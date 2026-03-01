// ignore_for_file: unused_element, unnecessary_cast


class ServiceLiveTrace {
  /// Whether the log category `ConnectivityLogs` is enabled? Defaults to `true`
  final bool? connectivityLogsEnabled;
  /// Whether the live trace is enabled? Defaults to `true`.
  final bool? enabled;
  /// Whether the log category `HttpRequestLogs` is enabled? Defaults to `true`
  final bool? httpRequestLogsEnabled;
  /// Whether the log category `MessagingLogs` is enabled? Defaults to `true`
  final bool? messagingLogsEnabled;

  /// Creates a new [ServiceLiveTrace].
  /// [connectivityLogsEnabled] Whether the log category `ConnectivityLogs` is enabled? Defaults to `true`
  /// [enabled] Whether the live trace is enabled? Defaults to `true`.
  /// [httpRequestLogsEnabled] Whether the log category `HttpRequestLogs` is enabled? Defaults to `true`
  /// [messagingLogsEnabled] Whether the log category `MessagingLogs` is enabled? Defaults to `true`
  ServiceLiveTrace({
    this.connectivityLogsEnabled,
    this.enabled,
    this.httpRequestLogsEnabled,
    this.messagingLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityLogsEnabled': ?connectivityLogsEnabled,
      'enabled': ?enabled,
      'httpRequestLogsEnabled': ?httpRequestLogsEnabled,
      'messagingLogsEnabled': ?messagingLogsEnabled,
    };
  }

  factory ServiceLiveTrace.fromMap(Map<String, dynamic> map) {
    return ServiceLiveTrace(
      connectivityLogsEnabled: map['connectivityLogsEnabled'] == null ? null : map['connectivityLogsEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      httpRequestLogsEnabled: map['httpRequestLogsEnabled'] == null ? null : map['httpRequestLogsEnabled'] as bool,
      messagingLogsEnabled: map['messagingLogsEnabled'] == null ? null : map['messagingLogsEnabled'] as bool,
    );
  }
}

