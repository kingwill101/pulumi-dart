// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_nodes_info.dart';
import 'inquiry_info.dart';

/// Extended information of the container.
class AzureWorkloadContainerExtendedInfo {
  /// Host Os Name in case of Stand Alone and Cluster Name in case of distributed container.
  final pulumi.Input<String>? hostServerName;
  /// Inquiry Status for the container.
  final pulumi.Input<InquiryInfo>? inquiryInfo;
  /// List of the nodes in case of distributed container.
  final pulumi.Input<List<DistributedNodesInfo>>? nodesList;

  /// Creates a new [AzureWorkloadContainerExtendedInfo].
  /// [hostServerName] Host Os Name in case of Stand Alone and Cluster Name in case of distributed container.
  /// [inquiryInfo] Inquiry Status for the container.
  /// [nodesList] List of the nodes in case of distributed container.
  AzureWorkloadContainerExtendedInfo({
    this.hostServerName,
    this.inquiryInfo,
    this.nodesList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostServerName': ?hostServerName,
      'inquiryInfo': ?pulumi.Input.mapOptionalInputValue<InquiryInfo, Map<String, dynamic>>(inquiryInfo, (value) => value.toMap()),
      'nodesList': ?pulumi.Input.mapOptionalInputValue<List<DistributedNodesInfo>, List<Map<String, dynamic>>>(nodesList, (value) => pulumi.Input.encodeList<DistributedNodesInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureWorkloadContainerExtendedInfo.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadContainerExtendedInfo(
      hostServerName: map['hostServerName'] == null ? null : (map['hostServerName'] as String).input(),
      inquiryInfo: map['inquiryInfo'] == null ? null : (InquiryInfo.fromMap((map['inquiryInfo'] as Map).cast<String, dynamic>())).input(),
      nodesList: map['nodesList'] == null ? null : (pulumi.Input.decodeList<DistributedNodesInfo>(map['nodesList'], (value) => DistributedNodesInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

