// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAttachmentConsumerAcceptList {
  /// The number of consumer forwarding rules the consumer project can
  /// create.
  final pulumi.Input<int> connectionLimit;
  /// The endpoint that is allowed to connect to this service attachment.
  /// Only one of project_id_or_num, networkUrl and endpointUrl may be set.
  final pulumi.Input<String> endpointUrl;
  /// The network that is allowed to connect to this service attachment.
  /// Only one of projectIdOrNum and networkUrl may be set.
  final pulumi.Input<String> networkUrl;
  /// A project that is allowed to connect to this service attachment.
  /// Only one of projectIdOrNum and networkUrl may be set.
  final pulumi.Input<String> projectIdOrNum;

  /// Creates a new [GetServiceAttachmentConsumerAcceptList].
  /// [connectionLimit] The number of consumer forwarding rules the consumer project can
  /// [endpointUrl] The endpoint that is allowed to connect to this service attachment.
  /// [networkUrl] The network that is allowed to connect to this service attachment.
  /// [projectIdOrNum] A project that is allowed to connect to this service attachment.
  const GetServiceAttachmentConsumerAcceptList({
    required this.connectionLimit,
    required this.endpointUrl,
    required this.networkUrl,
    required this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'endpointUrl': endpointUrl,
      'networkUrl': networkUrl,
      'projectIdOrNum': projectIdOrNum,
    };
  }

  factory GetServiceAttachmentConsumerAcceptList.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentConsumerAcceptList(
      connectionLimit: pulumi.Input.fromValue(map['connectionLimit'] as int),
      endpointUrl: pulumi.Input.fromValue(map['endpointUrl'] as String),
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
      projectIdOrNum: pulumi.Input.fromValue(map['projectIdOrNum'] as String),
    );
  }
}
