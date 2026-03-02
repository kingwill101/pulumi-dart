// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyTransaction resources.
class KeyTransactionState {
  /// A decimal value, measuring user satisfaction with response times, ranging from 0 (frustrated) to 1 (satisfied).
  final pulumi.Input<double>? apdexIndex;
  /// The GUID of the APM Application comprising transactions, of which one would be made a key transaction.
  final pulumi.Input<String>? applicationGuid;
  /// A decimal value representing the response time threshold for satisfactory experience (e.g., 0.5 seconds).
  ///
  /// > **NOTE:** It may be noted that the `metric_name` and `application_guid` of a Key Transaction _cannot_ be updated in a key transaction that has already been created; since this is not supported. As a consequence, altering the values of `application_guid` and/or `metric_name` of a `newrelic.KeyTransaction` resource created (to try updating these values) would result in `pulumi preview` prompting a forced destruction and re-creation of the resource.
  final pulumi.Input<double>? browserApdexTarget;
  /// The domain of the entity monitored by the key transaction.
  final pulumi.Input<String>? domain;
  /// The name of the underlying metric monitored by the key transaction to be created.
  final pulumi.Input<String>? metricName;
  /// The name of the key transaction.
  final pulumi.Input<String>? name;
  /// The type of the entity monitored by the key transaction.
  final pulumi.Input<String>? type;

  /// Creates a new [KeyTransactionState].
  /// [apdexIndex] A decimal value, measuring user satisfaction with response times, ranging from 0 (frustrated) to 1 (satisfied).
  /// [applicationGuid] The GUID of the APM Application comprising transactions, of which one would be made a key transaction.
  /// [browserApdexTarget] A decimal value representing the response time threshold for satisfactory experience (e.g., 0.5 seconds).
  /// [domain] The domain of the entity monitored by the key transaction.
  /// [metricName] The name of the underlying metric monitored by the key transaction to be created.
  /// [name] The name of the key transaction.
  /// [type] The type of the entity monitored by the key transaction.
  KeyTransactionState({
    this.apdexIndex,
    this.applicationGuid,
    this.browserApdexTarget,
    this.domain,
    this.metricName,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apdexIndex': ?apdexIndex,
      'applicationGuid': ?applicationGuid,
      'browserApdexTarget': ?browserApdexTarget,
      'domain': ?domain,
      'metricName': ?metricName,
      'name': ?name,
      'type': ?type,
    };
  }

  factory KeyTransactionState.fromMap(Map<String, dynamic> map) {
    return KeyTransactionState(
      apdexIndex: map['apdexIndex'] == null ? null : (map['apdexIndex'] as double).input(),
      applicationGuid: map['applicationGuid'] == null ? null : (map['applicationGuid'] as String).input(),
      browserApdexTarget: map['browserApdexTarget'] == null ? null : (map['browserApdexTarget'] as double).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

