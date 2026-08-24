// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_dns_settings_internal_view_filter.dart';

/// {@template pulumi_index_get_account_dns_settings_internal_view_get_account_dns_settings_internal_view_args_doc}
/// Arguments for getAccountDnsSettingsInternalView.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_dns_settings_internal_view_get_account_dns_settings_internal_view_args_doc}
class GetAccountDnsSettingsInternalViewArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccountDnsSettingsInternalViewFilter?>? filter;
  /// Identifier.
  final pulumi.Input<String?>? viewId;

  /// Creates a new [GetAccountDnsSettingsInternalViewArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [viewId] Identifier.
  const GetAccountDnsSettingsInternalViewArgs({
    this.accountId,
    this.filter,
    this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAccountDnsSettingsInternalViewFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'viewId': ?viewId,
    };
  }

  factory GetAccountDnsSettingsInternalViewArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountDnsSettingsInternalViewArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccountDnsSettingsInternalViewFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      viewId: (() { final guardedValue = map['viewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
