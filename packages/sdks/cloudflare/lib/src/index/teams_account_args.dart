// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_account_settings.dart';

/// {@template pulumi_index_teams_account_teams_account_args_doc}
/// The set of arguments for TeamsAccount.
/// {@endtemplate}
/// {@macro pulumi_index_teams_account_teams_account_args_doc}
class TeamsAccountArgs {
  final pulumi.Input<String> accountId;
  /// Specify account settings.
  final pulumi.Input<TeamsAccountSettings?>? settings;

  /// Creates a new [TeamsAccountArgs].
  /// [accountId] Required.
  /// [settings] Specify account settings.
  const TeamsAccountArgs({
    required this.accountId,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'settings': ?pulumi.Input.mapOptionalInputValue<TeamsAccountSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory TeamsAccountArgs.fromMap(Map<String, dynamic> map) {
    return TeamsAccountArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TeamsAccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
