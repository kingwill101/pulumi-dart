// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskExclusionProperties {
  /// List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  final pulumi.Input<List<int>>? diskLunList;
  /// Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  final pulumi.Input<bool>? isInclusionList;

  /// Creates a new [DiskExclusionProperties].
  /// [diskLunList] List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  /// [isInclusionList] Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  const DiskExclusionProperties({
    this.diskLunList,
    this.isInclusionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskLunList': ?diskLunList,
      'isInclusionList': ?isInclusionList,
    };
  }

  factory DiskExclusionProperties.fromMap(Map<String, dynamic> map) {
    return DiskExclusionProperties(
      diskLunList: (() { final guardedValue = map['diskLunList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      isInclusionList: (() { final guardedValue = map['isInclusionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
