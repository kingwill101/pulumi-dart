// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExadbVmClusterPropertiesVmFileSystemStorage {
  /// The storage allocation for the exadbvmcluster per node, in gigabytes (GB).
  /// This field is used to calculate the total storage allocation for the
  /// exadbvmcluster.
  final pulumi.Input<int> sizeInGbsPerNode;

  /// Creates a new [ExadbVmClusterPropertiesVmFileSystemStorage].
  /// [sizeInGbsPerNode] The storage allocation for the exadbvmcluster per node, in gigabytes (GB).
  const ExadbVmClusterPropertiesVmFileSystemStorage({
    required this.sizeInGbsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeInGbsPerNode': sizeInGbsPerNode,
    };
  }

  factory ExadbVmClusterPropertiesVmFileSystemStorage.fromMap(Map<String, dynamic> map) {
    return ExadbVmClusterPropertiesVmFileSystemStorage(
      sizeInGbsPerNode: pulumi.Input.fromValue((map['sizeInGbsPerNode'] as num).toInt()),
    );
  }
}
