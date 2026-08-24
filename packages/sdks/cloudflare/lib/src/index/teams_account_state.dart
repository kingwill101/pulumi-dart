// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_account_settings.dart';

/// Input properties used for looking up and filtering TeamsAccount resources.
class TeamsAccountState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Specify account settings.
  final pulumi.Input<TeamsAccountSettings?>? settings;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [TeamsAccountState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [settings] Specify account settings.
  /// [updatedAt] Optional.
  const TeamsAccountState({
    this.accountId,
    this.createdAt,
    this.settings,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'settings': ?pulumi.Input.mapOptionalInputValue<TeamsAccountSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory TeamsAccountState.fromMap(Map<String, dynamic> map) {
    return TeamsAccountState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TeamsAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
