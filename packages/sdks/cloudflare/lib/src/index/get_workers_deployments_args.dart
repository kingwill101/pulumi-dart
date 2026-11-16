// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_deployments_get_workers_deployments_args_doc}
/// Arguments for getWorkersDeployments.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_deployments_get_workers_deployments_args_doc}
class GetWorkersDeploymentsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the script.
  final pulumi.Input<String> scriptName;
  /// Start of the deployment creation time range, inclusive.
  final pulumi.Input<String?>? since;
  /// End of the deployment creation time range, inclusive.
  final pulumi.Input<String?>? until;

  /// Creates a new [GetWorkersDeploymentsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [scriptName] Name of the script.
  /// [since] Start of the deployment creation time range, inclusive.
  /// [until] End of the deployment creation time range, inclusive.
  const GetWorkersDeploymentsArgs({
    required this.accountId,
    this.maxItems,
    required this.scriptName,
    this.since,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
      'scriptName': scriptName,
      'since': ?since,
      'until': ?until,
    };
  }

  factory GetWorkersDeploymentsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      since: (() { final guardedValue = map['since']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      until: (() { final guardedValue = map['until']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
