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
    required pulumi.Output<double> apdexIndex,
    required pulumi.Output<String> applicationGuid,
    required pulumi.Output<double> browserApdexTarget,
    required pulumi.Output<String> metricName,
    pulumi.Output<String>? name,
  }) :
      apdexIndex = pulumi.Input.asInput<double>(apdexIndex),
      applicationGuid = pulumi.Input.asInput<String>(applicationGuid),
      browserApdexTarget = pulumi.Input.asInput<double>(browserApdexTarget),
      metricName = pulumi.Input.asInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      apdexIndex: pulumi.Output.create<double>(map['apdexIndex'] as double),
      applicationGuid: pulumi.Output.create<String>(map['applicationGuid'] as String),
      browserApdexTarget: pulumi.Output.create<double>(map['browserApdexTarget'] as double),
      metricName: pulumi.Output.create<String>(map['metricName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

