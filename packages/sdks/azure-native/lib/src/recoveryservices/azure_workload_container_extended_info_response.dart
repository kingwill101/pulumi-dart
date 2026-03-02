// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_nodes_info_response.dart';
import 'inquiry_info_response.dart';

/// Extended information of the container.
class AzureWorkloadContainerExtendedInfoResponse {
  /// Host Os Name in case of Stand Alone and Cluster Name in case of distributed container.
  final pulumi.Input<String>? hostServerName;
  /// Inquiry Status for the container.
  final pulumi.Input<InquiryInfoResponse>? inquiryInfo;
  /// List of the nodes in case of distributed container.
  final pulumi.Input<List<DistributedNodesInfoResponse>>? nodesList;

  /// Creates a new [AzureWorkloadContainerExtendedInfoResponse].
  /// [hostServerName] Host Os Name in case of Stand Alone and Cluster Name in case of distributed container.
  /// [inquiryInfo] Inquiry Status for the container.
  /// [nodesList] List of the nodes in case of distributed container.
  AzureWorkloadContainerExtendedInfoResponse({
    this.hostServerName,
    this.inquiryInfo,
    this.nodesList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostServerName': ?hostServerName,
      'inquiryInfo': ?pulumi.Input.mapOptionalInputValue<InquiryInfoResponse, Map<String, dynamic>>(inquiryInfo, (value) => value.toMap()),
      'nodesList': ?pulumi.Input.mapOptionalInputValue<List<DistributedNodesInfoResponse>, List<Map<String, dynamic>>>(nodesList, (value) => pulumi.Input.encodeList<DistributedNodesInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureWorkloadContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadContainerExtendedInfoResponse(
      hostServerName: map['hostServerName'] == null ? null : (map['hostServerName'] as String).input(),
      inquiryInfo: map['inquiryInfo'] == null ? null : (InquiryInfoResponse.fromMap((map['inquiryInfo'] as Map).cast<String, dynamic>())).input(),
      nodesList: map['nodesList'] == null ? null : (pulumi.Input.decodeList<DistributedNodesInfoResponse>(map['nodesList'], (value) => DistributedNodesInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

