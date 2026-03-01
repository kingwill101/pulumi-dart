// ignore_for_file: unused_element, unnecessary_cast


/// Defines the disk exclusion properties for virtual machine backup.
class DiskExclusionPropertiesResponse {
  /// List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  final List<int> diskLunList;
  /// Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  final bool isInclusionList;

  /// Creates a new [DiskExclusionPropertiesResponse].
  /// [diskLunList] List of Disks' Logical Unit Numbers (LUN) to be used for VM Protection.
  /// [isInclusionList] Flag to indicate whether DiskLunList is to be included/ excluded from backup.
  DiskExclusionPropertiesResponse({
    required this.diskLunList,
    required this.isInclusionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskLunList': diskLunList,
      'isInclusionList': isInclusionList,
    };
  }

  factory DiskExclusionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiskExclusionPropertiesResponse(
      diskLunList: (map['diskLunList'] as List).cast<int>(),
      isInclusionList: map['isInclusionList'] as bool,
    );
  }
}

