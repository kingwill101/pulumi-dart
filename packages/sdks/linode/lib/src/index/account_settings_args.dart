// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_account_settings_account_settings_args_doc}
/// The set of arguments for AccountSettings.
/// {@endtemplate}
/// {@macro pulumi_index_account_settings_account_settings_args_doc}
class AccountSettingsArgs {
  /// The account-wide backups default. If true, all Linodes created will automatically be enrolled in the Backups service. If false, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  final pulumi.Input<bool>? backupsEnabled;
  /// Type of interfaces for new Linode instances. Available values are `"legacy_config_only"`, `"legacy_config_default_but_linode_allowed"`, `"linode_default_but_legacy_config_allowed"`, and `"linode_only"`.
  final pulumi.Input<String>? interfacesForNewLinodes;
  /// The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or null for Longview Free.
  final pulumi.Input<String>? longviewSubscription;
  /// The default maintenance policy for this account. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to `"linode/migrate"`. (**Note: v4beta only.**)
  final pulumi.Input<String>? maintenancePolicy;
  /// Enables network helper across all users by default for new Linodes and Linode Configs.
  final pulumi.Input<bool>? networkHelper;

  /// Creates a new [AccountSettingsArgs].
  /// [backupsEnabled] The account-wide backups default. If true, all Linodes created will automatically be enrolled in the Backups service. If false, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  /// [interfacesForNewLinodes] Type of interfaces for new Linode instances. Available values are `"legacy_config_only"`, `"legacy_config_default_but_linode_allowed"`, `"linode_default_but_legacy_config_allowed"`, and `"linode_only"`.
  /// [longviewSubscription] The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or null for Longview Free.
  /// [maintenancePolicy] The default maintenance policy for this account. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to `"linode/migrate"`. (**Note: v4beta only.**)
  /// [networkHelper] Enables network helper across all users by default for new Linodes and Linode Configs.
  const AccountSettingsArgs({
    this.backupsEnabled,
    this.interfacesForNewLinodes,
    this.longviewSubscription,
    this.maintenancePolicy,
    this.networkHelper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupsEnabled': ?backupsEnabled,
      'interfacesForNewLinodes': ?interfacesForNewLinodes,
      'longviewSubscription': ?longviewSubscription,
      'maintenancePolicy': ?maintenancePolicy,
      'networkHelper': ?networkHelper,
    };
  }

  factory AccountSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingsArgs(
      backupsEnabled: (() { final guardedValue = map['backupsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interfacesForNewLinodes: (() { final guardedValue = map['interfacesForNewLinodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longviewSubscription: (() { final guardedValue = map['longviewSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkHelper: (() { final guardedValue = map['networkHelper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

