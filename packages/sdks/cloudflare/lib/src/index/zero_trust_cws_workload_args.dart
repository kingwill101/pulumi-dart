// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_workload_zero_trust_cws_workload_args_doc}
/// The set of arguments for ZeroTrustCwsWorkload.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_workload_zero_trust_cws_workload_args_doc}
class ZeroTrustCwsWorkloadArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String> filter;
  /// Human-readable handle; unique per account.
  final pulumi.Input<String> name;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ZeroTrustCwsWorkloadArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [description] Optional free-form description.
  /// [filter] Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  /// [name] Human-readable handle; unique per account.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  const ZeroTrustCwsWorkloadArgs({
    required this.accountId,
    this.description,
    required this.filter,
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'filter': filter,
      'name': name,
      'tags': ?tags,
    };
  }

  factory ZeroTrustCwsWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsWorkloadArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
