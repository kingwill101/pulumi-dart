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
  /// Available values: "standard", "enterprise".
  final pulumi.Input<String?>? type;
  /// information related to the tenant unit, and optionally, an id of the unit to create the account on. see https://developers.cloudflare.com/tenant/how-to/manage-accounts/
  final pulumi.Input<AccountUnit?>? unit;

  /// Creates a new [AccountState].
  /// [createdOn] Timestamp for the creation of the account
  /// [managedBy] Parent container details
  /// [name] Account name
  /// [settings] Account settings
  /// [type] Available values: "standard", "enterprise".
  /// [unit] information related to the tenant unit, and optionally, an id of the unit to create the account on. see https://developers.cloudflare.com/tenant/how-to/manage-accounts/
  const AccountState({
    this.createdOn,
    this.managedBy,
    this.name,
    this.settings,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'managedBy': ?pulumi.Input.mapOptionalInputValue<AccountManagedBy, Map<String, dynamic>>(managedBy, (value) => value.toMap()),
      'name': ?name,
      'settings': ?pulumi.Input.mapOptionalInputValue<AccountSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountUnit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
