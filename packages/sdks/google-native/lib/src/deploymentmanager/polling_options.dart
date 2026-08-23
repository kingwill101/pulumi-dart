// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic.dart';

class PollingOptions {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final pulumi.Input<List<Diagnostic>>? diagnostics;
  /// JsonPath expression that determines if the request failed.
  final pulumi.Input<String>? failCondition;
  /// JsonPath expression that determines if the request is completed.
  final pulumi.Input<String>? finishCondition;
  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final pulumi.Input<String>? pollingLink;
  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final pulumi.Input<String>? targetLink;

  /// Creates a new [PollingOptions].
  /// [diagnostics] An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  /// [failCondition] JsonPath expression that determines if the request failed.
  /// [finishCondition] JsonPath expression that determines if the request is completed.
  /// [pollingLink] JsonPath expression that evaluates to string, it indicates where to poll.
  /// [targetLink] JsonPath expression, after polling is completed, indicates where to fetch the resource.
  const PollingOptions({
    this.diagnostics,
    this.failCondition,
    this.finishCondition,
    this.pollingLink,
    this.targetLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<List<Diagnostic>, List<Map<String, dynamic>>>(diagnostics, (value) => pulumi.Input.encodeList<Diagnostic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failCondition': ?failCondition,
      'finishCondition': ?finishCondition,
      'pollingLink': ?pollingLink,
      'targetLink': ?targetLink,
    };
  }

  factory PollingOptions.fromMap(Map<String, dynamic> map) {
    return PollingOptions(
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Diagnostic>(guardedValue, (value) => Diagnostic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failCondition: (() { final guardedValue = map['failCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishCondition: (() { final guardedValue = map['finishCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollingLink: (() { final guardedValue = map['pollingLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLink: (() { final guardedValue = map['targetLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
