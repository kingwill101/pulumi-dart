// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountSettings resources.
class AccountSettingsState {
  /// The account-wide backups default. If true, all Linodes created will automatically be enrolled in the Backups service. If false, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  final pulumi.Input<bool>? backupsEnabled;
  /// Type of interfaces for new Linode instances. Available values are `"legacy_config_only"`, `"legacy_config_default_but_linode_allowed"`, `"linode_default_but_legacy_config_allowed"`, and `"linode_only"`.
  final pulumi.Input<String>? interfacesForNewLinodes;
  /// The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or null for Longview Free.
  final pulumi.Input<String>? longviewSubscription;
  /// The default maintenance policy for this account. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to `"linode/migrate"`. (**Note: v4beta only.**)
  final pulumi.Input<String>? maintenancePolicy;
  /// Enables monitoring for connectivity, response, and total request time.
  final pulumi.Input<bool>? managed;
  /// Enables network helper across all users by default for new Linodes and Linode Configs.
  final pulumi.Input<bool>? networkHelper;
  /// A string describing the status of this account's Object Storage service enrollment.
  final pulumi.Input<String>? objectStorage;

  /// Creates a new [AccountSettingsState].
  /// [backupsEnabled] The account-wide backups default. If true, all Linodes created will automatically be enrolled in the Backups service. If false, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  /// [interfacesForNewLinodes] Type of interfaces for new Linode instances. Available values are `"legacy_config_only"`, `"legacy_config_default_but_linode_allowed"`, `"linode_default_but_legacy_config_allowed"`, and `"linode_only"`.
  /// [longviewSubscription] The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) ID or null for Longview Free.
  /// [maintenancePolicy] The default maintenance policy for this account. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to `"linode/migrate"`. (**Note: v4beta only.**)
  /// [managed] Enables monitoring for connectivity, response, and total request time.
  /// [networkHelper] Enables network helper across all users by default for new Linodes and Linode Configs.
  /// [objectStorage] A string describing the status of this account's Object Storage service enrollment.
  AccountSettingsState({
    this.backupsEnabled,
    this.interfacesForNewLinodes,
    this.longviewSubscription,
    this.maintenancePolicy,
    this.managed,
    this.networkHelper,
    this.objectStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupsEnabled': ?backupsEnabled,
      'interfacesForNewLinodes': ?interfacesForNewLinodes,
      'longviewSubscription': ?longviewSubscription,
      'maintenancePolicy': ?maintenancePolicy,
      'managed': ?managed,
      'networkHelper': ?networkHelper,
      'objectStorage': ?objectStorage,
    };
  }

  factory AccountSettingsState.fromMap(Map<String, dynamic> map) {
    return AccountSettingsState(
      backupsEnabled: map['backupsEnabled'] == null ? null : (map['backupsEnabled'] as bool).input(),
      interfacesForNewLinodes: map['interfacesForNewLinodes'] == null ? null : (map['interfacesForNewLinodes'] as String).input(),
      longviewSubscription: map['longviewSubscription'] == null ? null : (map['longviewSubscription'] as String).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (map['maintenancePolicy'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      networkHelper: map['networkHelper'] == null ? null : (map['networkHelper'] as bool).input(),
      objectStorage: map['objectStorage'] == null ? null : (map['objectStorage'] as String).input(),
    );
  }
}

