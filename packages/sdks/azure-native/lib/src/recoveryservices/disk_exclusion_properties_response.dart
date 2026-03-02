// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskExclusionPropertiesResponse {
  /// List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  final pulumi.Input<List<int>>? diskLunList;
  /// Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  final pulumi.Input<bool>? isInclusionList;

  /// Creates a new [DiskExclusionPropertiesResponse].
  /// [diskLunList] List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  /// [isInclusionList] Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  DiskExclusionPropertiesResponse({
    this.diskLunList,
    this.isInclusionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskLunList': ?diskLunList,
      'isInclusionList': ?isInclusionList,
    };
  }

  factory DiskExclusionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiskExclusionPropertiesResponse(
      diskLunList: map['diskLunList'] == null ? null : ((map['diskLunList']! as List).cast<int>()).input(),
      isInclusionList: map['isInclusionList'] == null ? null : (map['isInclusionList']! as bool).input(),
    );
  }
}

