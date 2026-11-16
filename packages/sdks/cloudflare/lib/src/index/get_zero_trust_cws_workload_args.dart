// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_workload_find_one_by.dart';

/// {@template pulumi_index_get_zero_trust_cws_workload_get_zero_trust_cws_workload_args_doc}
/// Arguments for getZeroTrustCwsWorkload.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_workload_get_zero_trust_cws_workload_args_doc}
class GetZeroTrustCwsWorkloadArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsWorkloadFindOneBy?>? findOneBy;
  /// ID of the workload to retrieve
  final pulumi.Input<String?>? workloadId;

  /// Creates a new [GetZeroTrustCwsWorkloadArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [findOneBy] Optional.
  /// [workloadId] ID of the workload to retrieve
  const GetZeroTrustCwsWorkloadArgs({
    required this.accountId,
    this.findOneBy,
    this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'findOneBy': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsWorkloadFindOneBy, Map<String, dynamic>>(findOneBy, (value) => value.toMap()),
      'workloadId': ?workloadId,
    };
  }

  factory GetZeroTrustCwsWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      findOneBy: (() { final guardedValue = map['findOneBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsWorkloadFindOneBy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
