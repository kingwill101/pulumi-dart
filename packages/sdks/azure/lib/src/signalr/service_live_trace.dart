// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLiveTrace {
  /// Whether the log category `ConnectivityLogs` is enabled? Defaults to `true`
  final pulumi.Input<bool?>? connectivityLogsEnabled;
  /// Whether the live trace is enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Whether the log category `HttpRequestLogs` is enabled? Defaults to `true`
  final pulumi.Input<bool?>? httpRequestLogsEnabled;
  /// Whether the log category `MessagingLogs` is enabled? Defaults to `true`
  final pulumi.Input<bool?>? messagingLogsEnabled;

  /// Creates a new [ServiceLiveTrace].
  /// [connectivityLogsEnabled] Whether the log category `ConnectivityLogs` is enabled? Defaults to `true`
  /// [enabled] Whether the live trace is enabled? Defaults to `true`.
  /// [httpRequestLogsEnabled] Whether the log category `HttpRequestLogs` is enabled? Defaults to `true`
  /// [messagingLogsEnabled] Whether the log category `MessagingLogs` is enabled? Defaults to `true`
  const ServiceLiveTrace({
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
      connectivityLogsEnabled: (() { final guardedValue = map['connectivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpRequestLogsEnabled: (() { final guardedValue = map['httpRequestLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messagingLogsEnabled: (() { final guardedValue = map['messagingLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
