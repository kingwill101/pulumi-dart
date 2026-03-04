// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File Share Paid Bursting properties.
class FileSharePropertiesResponseFileSharePaidBursting {
  /// Indicates whether paid bursting is enabled for the share. This property is only for file shares created under Files Provisioned v1 SSD account type.
  final pulumi.Input<bool>? paidBurstingEnabled;

  /// The maximum paid bursting bandwidth for the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 10340 which is the maximum allowed bandwidth for a share.
  final pulumi.Input<int>? paidBurstingMaxBandwidthMibps;

  /// The maximum paid bursting IOPS for the share. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 102400 which is the maximum allowed IOPS for a share.
  final pulumi.Input<int>? paidBurstingMaxIops;

  /// Creates a new [FileSharePropertiesResponseFileSharePaidBursting].
  /// [paidBurstingEnabled] Indicates whether paid bursting is enabled for the share. This property is only for file shares created under Files Provisioned v1 SSD account type.
  /// [paidBurstingMaxBandwidthMibps] The maximum paid bursting bandwidth for the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 10340 which is the maximum allowed bandwidth for a share.
  /// [paidBurstingMaxIops] The maximum paid bursting IOPS for the share. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 102400 which is the maximum allowed IOPS for a share.
  FileSharePropertiesResponseFileSharePaidBursting({
    this.paidBurstingEnabled,
    this.paidBurstingMaxBandwidthMibps,
    this.paidBurstingMaxIops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paidBurstingEnabled': ?paidBurstingEnabled,
      'paidBurstingMaxBandwidthMibps': ?paidBurstingMaxBandwidthMibps,
      'paidBurstingMaxIops': ?paidBurstingMaxIops,
    };
  }

  factory FileSharePropertiesResponseFileSharePaidBursting.fromMap(
    Map<String, dynamic> map,
  ) {
    return FileSharePropertiesResponseFileSharePaidBursting(
      paidBurstingEnabled: (() {
        final guardedValue = map['paidBurstingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      paidBurstingMaxBandwidthMibps: (() {
        final guardedValue = map['paidBurstingMaxBandwidthMibps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      paidBurstingMaxIops: (() {
        final guardedValue = map['paidBurstingMaxIops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
