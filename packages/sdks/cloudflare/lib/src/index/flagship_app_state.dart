// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlagshipApp resources.
class FlagshipAppState {
  /// Cloudflare account ID that owns the Flagship app.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Name of the Flagship app (1–64 letters, numbers, hyphens, or underscores).
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;
  /// Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  final pulumi.Input<String?>? updatedBy;

  /// Creates a new [FlagshipAppState].
  /// [accountId] Cloudflare account ID that owns the Flagship app.
  /// [createdAt] Optional.
  /// [name] Name of the Flagship app (1–64 letters, numbers, hyphens, or underscores).
  /// [updatedAt] Optional.
  /// [updatedBy] Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  const FlagshipAppState({
    this.accountId,
    this.createdAt,
    this.name,
    this.updatedAt,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'name': ?name,
      'updatedAt': ?updatedAt,
      'updatedBy': ?updatedBy,
    };
  }

  factory FlagshipAppState.fromMap(Map<String, dynamic> map) {
    return FlagshipAppState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
