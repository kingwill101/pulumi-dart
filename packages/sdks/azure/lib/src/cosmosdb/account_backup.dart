// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountBackup {
  /// The interval in minutes between two backups. Possible values are between 60 and 1440. Defaults to `240`.
  final pulumi.Input<int>? intervalInMinutes;
  /// The time in hours that each backup is retained. Possible values are between 8 and 720. Defaults to `8`.
  final pulumi.Input<int>? retentionInHours;
  /// The storage redundancy is used to indicate the type of backup residency. Possible values are `Geo`, `Local` and `Zone`. Defaults to `Geo`.
  ///
  /// > **Note:** You can only configure `interval_in_minutes`, `retention_in_hours` and `storage_redundancy` when the `type` field is set to `Periodic`.
  final pulumi.Input<String>? storageRedundancy;
  /// The continuous backup tier. Possible values are `Continuous7Days` and `Continuous30Days`.
  final pulumi.Input<String>? tier;
  /// The type of the `backup`. Possible values are `Continuous` and `Periodic`.
  ///
  /// > **Note:** Migration of `Periodic` to `Continuous` is one-way, changing `Continuous` to `Periodic` forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [AccountBackup].
  /// [intervalInMinutes] The interval in minutes between two backups. Possible values are between 60 and 1440. Defaults to `240`.
  /// [retentionInHours] The time in hours that each backup is retained. Possible values are between 8 and 720. Defaults to `8`.
  /// [storageRedundancy] The storage redundancy is used to indicate the type of backup residency. Possible values are `Geo`, `Local` and `Zone`. Defaults to `Geo`.
  /// [tier] The continuous backup tier. Possible values are `Continuous7Days` and `Continuous30Days`.
  /// [type] The type of the `backup`. Possible values are `Continuous` and `Periodic`.
  AccountBackup({
    this.intervalInMinutes,
    this.retentionInHours,
    this.storageRedundancy,
    this.tier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInMinutes': ?intervalInMinutes,
      'retentionInHours': ?retentionInHours,
      'storageRedundancy': ?storageRedundancy,
      'tier': ?tier,
      'type': type,
    };
  }

  factory AccountBackup.fromMap(Map<String, dynamic> map) {
    return AccountBackup(
      intervalInMinutes: map['intervalInMinutes'] == null ? null : (map['intervalInMinutes']! as int).input(),
      retentionInHours: map['retentionInHours'] == null ? null : (map['retentionInHours']! as int).input(),
      storageRedundancy: map['storageRedundancy'] == null ? null : (map['storageRedundancy']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

