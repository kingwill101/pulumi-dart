// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPolicy resources.
class BackupPolicyState {
  /// The name of the NetApp account in which the NetApp Policy should be created under. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? accountName;
  /// Provides the number of daily backups to keep, defaults to `2` which is the minimum, maximum is 1019.
  final pulumi.Input<int?>? dailyBackupsToKeep;
  /// Whether the Backup Policy is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Provides the number of monthly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  ///
  /// &gt; **Note:** Currently, the combined (daily + weekly + monthy) retention counts cannot exceed 1019.
  final pulumi.Input<int?>? monthlyBackupsToKeep;
  /// The name of the NetApp Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group where the NetApp Backup Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Provides the number of weekly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  final pulumi.Input<int?>? weeklyBackupsToKeep;

  /// Creates a new [BackupPolicyState].
  /// [accountName] The name of the NetApp account in which the NetApp Policy should be created under. Changing this forces a new resource to be created.
  /// [dailyBackupsToKeep] Provides the number of daily backups to keep, defaults to `2` which is the minimum, maximum is 1019.
  /// [enabled] Whether the Backup Policy is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [monthlyBackupsToKeep] Provides the number of monthly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  /// [name] The name of the NetApp Backup Policy. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Backup Policy should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [weeklyBackupsToKeep] Provides the number of weekly backups to keep, defaults to `1`. The minimum is `0` and the maximum is `1019`.
  const BackupPolicyState({
    this.accountName,
    this.dailyBackupsToKeep,
    this.enabled,
    this.location,
    this.monthlyBackupsToKeep,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'location': ?location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory BackupPolicyState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailyBackupsToKeep: (() { final guardedValue = map['dailyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyBackupsToKeep: (() { final guardedValue = map['monthlyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      weeklyBackupsToKeep: (() { final guardedValue = map['weeklyBackupsToKeep']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
