// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Live trace category configuration of a Microsoft.SignalRService resource.
class LiveTraceCategory {
  /// Indicates whether or the live trace category is enabled.
  /// Available values: true, false.
  /// Case insensitive.
  final pulumi.Input<String>? enabled;

  /// Gets or sets the live trace category's name.
  /// Available values: ConnectivityLogs, MessagingLogs.
  /// Case insensitive.
  final pulumi.Input<String>? name;

  /// Creates a new [LiveTraceCategory].
  /// [enabled] Indicates whether or the live trace category is enabled.
  /// [name] Gets or sets the live trace category's name.
  LiveTraceCategory({this.enabled, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'name': ?name};
  }

  factory LiveTraceCategory.fromMap(Map<String, dynamic> map) {
    return LiveTraceCategory(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
