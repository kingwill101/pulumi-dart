// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_account_dns_settings_internal_view_account_dns_settings_internal_view_args_doc}
/// The set of arguments for AccountDnsSettingsInternalView.
/// {@endtemplate}
/// {@macro pulumi_index_account_dns_settings_internal_view_account_dns_settings_internal_view_args_doc}
class AccountDnsSettingsInternalViewArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The name of the view.
  final pulumi.Input<String> name;
  /// The list of zones linked to this view.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [AccountDnsSettingsInternalViewArgs].
  /// [accountId] Identifier.
  /// [name] The name of the view.
  /// [zones] The list of zones linked to this view.
  const AccountDnsSettingsInternalViewArgs({
    required this.accountId,
    required this.name,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'zones': zones,
    };
  }

  factory AccountDnsSettingsInternalViewArgs.fromMap(Map<String, dynamic> map) {
    return AccountDnsSettingsInternalViewArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
