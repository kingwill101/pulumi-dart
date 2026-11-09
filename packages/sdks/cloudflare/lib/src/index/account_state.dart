// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_managed_by.dart';
import 'account_settings.dart';
import 'account_unit.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// Timestamp for the creation of the account
  final pulumi.Input<String?>? createdOn;
  /// Parent container details
  final pulumi.Input<AccountManagedBy?>? managedBy;
  /// Account name
  final pulumi.Input<String?>? name;
  /// Account settings
  final pulumi.Input<AccountSettings?>? settings;
  /// Set to `true` and omit `unit` to create a standalone Free Account. If provided, this field must be `true`.
  final pulumi.Input<bool?>? standalone;
  /// Available values: "standard", "enterprise".
  final pulumi.Input<String?>? type;
  /// Information related to the tenant unit. Provide its ID and omit `standalone` to create the Account within an Organization. See https://developers.cloudflare.com/tenant/how-to/manage-accounts/.
  final pulumi.Input<AccountUnit?>? unit;

  /// Creates a new [AccountState].
  /// [createdOn] Timestamp for the creation of the account
  /// [managedBy] Parent container details
  /// [name] Account name
  /// [settings] Account settings
  /// [standalone] Set to `true` and omit `unit` to create a standalone Free Account. If provided, this field must be `true`.
  /// [type] Available values: "standard", "enterprise".
  /// [unit] Information related to the tenant unit. Provide its ID and omit `standalone` to create the Account within an Organization. See https://developers.cloudflare.com/tenant/how-to/manage-accounts/.
  const AccountState({
    this.createdOn,
    this.managedBy,
    this.name,
    this.settings,
    this.standalone,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'managedBy': ?pulumi.Input.mapOptionalInputValue<AccountManagedBy, Map<String, dynamic>>(managedBy, (value) => value.toMap()),
      'name': ?name,
      'settings': ?pulumi.Input.mapOptionalInputValue<AccountSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'standalone': ?standalone,
      'type': ?type,
      'unit': ?pulumi.Input.mapOptionalInputValue<AccountUnit, Map<String, dynamic>>(unit, (value) => value.toMap()),
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountManagedBy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      standalone: (() { final guardedValue = map['standalone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountUnit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
