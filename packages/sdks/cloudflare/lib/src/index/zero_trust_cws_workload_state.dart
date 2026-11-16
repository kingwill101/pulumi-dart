// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsWorkload resources.
class ZeroTrustCwsWorkloadState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String?>? filter;
  /// Human-readable handle; unique per account.
  final pulumi.Input<String?>? name;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsWorkloadState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [filter] Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  /// [name] Human-readable handle; unique per account.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  /// [updatedAt] Optional.
  const ZeroTrustCwsWorkloadState({
    this.accountId,
    this.createdAt,
    this.description,
    this.filter,
    this.name,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'filter': ?filter,
      'name': ?name,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsWorkloadState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsWorkloadState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
