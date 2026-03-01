// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_nodes_info.dart';
import 'inquiry_info.dart';

/// Extended information of the container.
class AzureWorkloadContainerExtendedInfo {
  /// Host Os Name in case of Stand Alone and Cluster Name in case of distributed container.
  final String? hostServerName;
  /// Inquiry Status for the container.
  final InquiryInfo? inquiryInfo;
  /// List of the nodes in case of distributed container.
  final List<DistributedNodesInfo>? nodesList;

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
      'inquiryInfo': ?inquiryInfo == null ? null : inquiryInfo!.toMap(),
      'nodesList': ?nodesList == null ? null : pulumi.Input.encodeList<DistributedNodesInfo, Map<String, dynamic>>(nodesList!, (value) => value.toMap()),
    };
  }

  factory AzureWorkloadContainerExtendedInfo.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadContainerExtendedInfo(
      hostServerName: map['hostServerName'] == null ? null : map['hostServerName'] as String,
      inquiryInfo: map['inquiryInfo'] == null ? null : InquiryInfo.fromMap((map['inquiryInfo'] as Map).cast<String, dynamic>()),
      nodesList: map['nodesList'] == null ? null : pulumi.Input.decodeList<DistributedNodesInfo>(map['nodesList'], (value) => DistributedNodesInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

