// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConsumerProjectLimitResponse {
  /// The value of the limit to set.
  final pulumi.Input<int> connectionLimit;
  /// The network URL for the network to set the limit for.
  final pulumi.Input<String> networkUrl;
  /// The project id or number for the project to set the limit for.
  final pulumi.Input<String> projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerProjectLimitResponse].
  /// [connectionLimit] The value of the limit to set.
  /// [networkUrl] The network URL for the network to set the limit for.
  /// [projectIdOrNum] The project id or number for the project to set the limit for.
  const ServiceAttachmentConsumerProjectLimitResponse({
    required this.connectionLimit,
    required this.networkUrl,
    required this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': connectionLimit,
      'networkUrl': networkUrl,
      'projectIdOrNum': projectIdOrNum,
    };
  }

  factory ServiceAttachmentConsumerProjectLimitResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConsumerProjectLimitResponse(
      connectionLimit: pulumi.Input.fromValue(map['connectionLimit'] as int),
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
      projectIdOrNum: pulumi.Input.fromValue(map['projectIdOrNum'] as String),
    );
  }
}

