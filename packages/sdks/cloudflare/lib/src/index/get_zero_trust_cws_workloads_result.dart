// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsWorkloadsResult {
  final pulumi.Input<String> createdAt;
  /// Optional free-form description.
  final pulumi.Input<String> description;
  /// Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String> filter;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Human-readable handle; unique per account.
  final pulumi.Input<String> name;
  /// Tags attached to this workload
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsWorkloadsResult].
  /// [createdAt] Required.
  /// [description] Optional free-form description.
  /// [filter] Filter expression selecting the requests this workload matches. Maximum 4096 UTF-8 bytes.
  /// [id] Server-assigned UUID
  /// [name] Human-readable handle; unique per account.
  /// [tags] Tags attached to this workload
  /// [updatedAt] Required.
  const GetZeroTrustCwsWorkloadsResult({
    required this.createdAt,
    required this.description,
    required this.filter,
    required this.id,
    required this.name,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'filter': filter,
      'id': id,
      'name': name,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsWorkloadsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
