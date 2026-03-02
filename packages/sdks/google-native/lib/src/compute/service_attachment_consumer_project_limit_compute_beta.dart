// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentConsumerProjectLimitComputeBeta {
  /// The value of the limit to set.
  final pulumi.Input<int>? connectionLimit;
  /// The network URL for the network to set the limit for.
  final pulumi.Input<String>? networkUrl;
  /// The project id or number for the project to set the limit for.
  final pulumi.Input<String>? projectIdOrNum;

  /// Creates a new [ServiceAttachmentConsumerProjectLimitComputeBeta].
  /// [connectionLimit] The value of the limit to set.
  /// [networkUrl] The network URL for the network to set the limit for.
  /// [projectIdOrNum] The project id or number for the project to set the limit for.
  ServiceAttachmentConsumerProjectLimitComputeBeta({
    this.connectionLimit,
    this.networkUrl,
    this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': ?connectionLimit,
      'networkUrl': ?networkUrl,
      'projectIdOrNum': ?projectIdOrNum,
    };
  }

  factory ServiceAttachmentConsumerProjectLimitComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentConsumerProjectLimitComputeBeta(
      connectionLimit: map['connectionLimit'] == null ? null : (map['connectionLimit']! as int).input(),
      networkUrl: map['networkUrl'] == null ? null : (map['networkUrl']! as String).input(),
      projectIdOrNum: map['projectIdOrNum'] == null ? null : (map['projectIdOrNum']! as String).input(),
    );
  }
}

