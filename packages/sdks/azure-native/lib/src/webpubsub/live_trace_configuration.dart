// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_trace_category.dart';

/// Live trace configuration of a Microsoft.SignalRService resource.
class LiveTraceConfiguration {
  /// Gets or sets the list of category configurations.
  final pulumi.Input<List<LiveTraceCategory>?>? categories;
  /// Indicates whether or not enable live trace.
  /// When it's set to true, live trace client can connect to the service.
  /// Otherwise, live trace client can't connect to the service, so that you are unable to receive any log, no matter what you configure in "categories".
  /// Available values: true, false.
  /// Case insensitive.
  final pulumi.Input<String?>? enabled;

  /// Creates a new [LiveTraceConfiguration].
  /// [categories] Gets or sets the list of category configurations.
  /// [enabled] Indicates whether or not enable live trace.
  LiveTraceConfiguration({
    this.categories,
    pulumi.Input<String?>? enabled,
  }) : enabled = enabled ?? pulumi.Input.fromValue('false');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?pulumi.Input.mapOptionalInputValue<List<LiveTraceCategory>, List<Map<String, dynamic>>>(categories, (value) => pulumi.Input.encodeList<LiveTraceCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
    };
  }

  factory LiveTraceConfiguration.fromMap(Map<String, dynamic> map) {
    return LiveTraceConfiguration(
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LiveTraceCategory>(guardedValue, (value) => LiveTraceCategory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
