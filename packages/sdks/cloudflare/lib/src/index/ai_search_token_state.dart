// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiSearchToken resources.
class AiSearchTokenState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? cfApiId;
  final pulumi.Input<String?>? cfApiKey;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<bool?>? legacy;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  final pulumi.Input<String?>? name;

  /// Creates a new [AiSearchTokenState].
  /// [accountId] Optional.
  /// [cfApiId] Optional.
  /// [cfApiKey] Optional.
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [enabled] Optional.
  /// [legacy] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Optional.
  const AiSearchTokenState({
    this.accountId,
    this.cfApiId,
    this.cfApiKey,
    this.createdAt,
    this.createdBy,
    this.enabled,
    this.legacy,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cfApiId': ?cfApiId,
      'cfApiKey': ?cfApiKey,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'enabled': ?enabled,
      'legacy': ?legacy,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
    };
  }

  factory AiSearchTokenState.fromMap(Map<String, dynamic> map) {
    return AiSearchTokenState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cfApiId: (() { final guardedValue = map['cfApiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cfApiKey: (() { final guardedValue = map['cfApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      legacy: (() { final guardedValue = map['legacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
