// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_dns_settings_get_account_dns_settings_args_doc}
/// Arguments for getAccountDnsSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_dns_settings_get_account_dns_settings_args_doc}
class GetAccountDnsSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetAccountDnsSettingsArgs].
  /// [accountId] Identifier.
  const GetAccountDnsSettingsArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetAccountDnsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
