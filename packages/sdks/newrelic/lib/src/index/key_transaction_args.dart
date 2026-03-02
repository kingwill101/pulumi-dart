// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_key_transaction_key_transaction_args_doc}
/// The set of arguments for KeyTransaction.
/// {@endtemplate}
/// {@macro pulumi_index_key_transaction_key_transaction_args_doc}
class KeyTransactionArgs {
  /// A decimal value, measuring user satisfaction with response times, ranging from 0 (frustrated) to 1 (satisfied).
  final pulumi.Input<double> apdexIndex;
  /// The GUID of the APM Application comprising transactions, of which one would be made a key transaction.
  final pulumi.Input<String> applicationGuid;
  /// A decimal value representing the response time threshold for satisfactory experience (e.g., 0.5 seconds).
  ///
  /// > **NOTE:** It may be noted that the `metric_name` and `application_guid` of a Key Transaction _cannot_ be updated in a key transaction that has already been created; since this is not supported. As a consequence, altering the values of `application_guid` and/or `metric_name` of a `newrelic.KeyTransaction` resource created (to try updating these values) would result in `pulumi preview` prompting a forced destruction and re-creation of the resource.
  final pulumi.Input<double> browserApdexTarget;
  /// The name of the underlying metric monitored by the key transaction to be created.
  final pulumi.Input<String> metricName;
  /// The name of the key transaction.
  final pulumi.Input<String>? name;

  /// Creates a new [KeyTransactionArgs].
  /// [apdexIndex] A decimal value, measuring user satisfaction with response times, ranging from 0 (frustrated) to 1 (satisfied).
  /// [applicationGuid] The GUID of the APM Application comprising transactions, of which one would be made a key transaction.
  /// [browserApdexTarget] A decimal value representing the response time threshold for satisfactory experience (e.g., 0.5 seconds).
  /// [metricName] The name of the underlying metric monitored by the key transaction to be created.
  /// [name] The name of the key transaction.
  KeyTransactionArgs({
    required this.apdexIndex,
    required this.applicationGuid,
    required this.browserApdexTarget,
    required this.metricName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apdexIndex': apdexIndex,
      'applicationGuid': applicationGuid,
      'browserApdexTarget': browserApdexTarget,
      'metricName': metricName,
      'name': ?name,
    };
  }

  factory KeyTransactionArgs.fromMap(Map<String, dynamic> map) {
    return KeyTransactionArgs(
      apdexIndex: (map['apdexIndex'] as double).input(),
      applicationGuid: (map['applicationGuid'] as String).input(),
      browserApdexTarget: (map['browserApdexTarget'] as double).input(),
      metricName: (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

