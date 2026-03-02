// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConsumerProjectLimitResponseComputeBeta {
  /// The value of the limit to set.
  final pulumi.Input<int> connectionLimit;
  /// The network URL for the network to set the limit for.
  final pulumi.Input<String> networkUrl;
  /// The project id or number for the project to set the limit for.
  final pulumi.Input<String> projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerProjectLimitResponseComputeBeta].
  /// [connectionLimit] The value of the limit to set.
  /// [networkUrl] The network URL for the network to set the limit for.
  /// [projectIdOrNum] The project id or number for the project to set the limit for.
  ServiceAttachmentConsumerProjectLimitResponseComputeBeta({
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

  factory ServiceAttachmentConsumerProjectLimitResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConsumerProjectLimitResponseComputeBeta(
      connectionLimit: (map['connectionLimit'] as int).input(),
      networkUrl: (map['networkUrl'] as String).input(),
      projectIdOrNum: (map['projectIdOrNum'] as String).input(),
    );
  }
}

