// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConsumerAcceptList {
  /// The number of consumer forwarding rules the consumer project can
  /// create.
  final pulumi.Input<int> connectionLimit;
  /// The network that is allowed to connect to this service attachment.
  /// Only one of project_id_or_num and network_url may be set.
  final pulumi.Input<String>? networkUrl;
  /// A project that is allowed to connect to this service attachment.
  /// Only one of project_id_or_num and network_url may be set.
  final pulumi.Input<String>? projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerAcceptList].
  /// [connectionLimit] The number of consumer forwarding rules the consumer project can
  /// [networkUrl] The network that is allowed to connect to this service attachment.
  /// [projectIdOrNum] A project that is allowed to connect to this service attachment.
  ServiceAttachmentConsumerAcceptList({
    required this.connectionLimit,
    this.networkUrl,
    this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'networkUrl': ?networkUrl,
      'projectIdOrNum': ?projectIdOrNum,
    };
  }

  factory ServiceAttachmentConsumerAcceptList.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConsumerAcceptList(
      connectionLimit: (map['connectionLimit'] as int).input(),
      networkUrl: map['networkUrl'] == null ? null : (map['networkUrl'] as String).input(),
      projectIdOrNum: map['projectIdOrNum'] == null ? null : (map['projectIdOrNum'] as String).input(),
    );
  }
}

