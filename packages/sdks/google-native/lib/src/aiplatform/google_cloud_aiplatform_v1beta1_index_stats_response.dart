// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stats of the Index.
class GoogleCloudAiplatformV1beta1IndexStatsResponse {
  /// The number of shards in the Index.
  final pulumi.Input<int> shardsCount;
  /// The number of vectors in the Index.
  final pulumi.Input<String> vectorsCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1IndexStatsResponse].
  /// [shardsCount] The number of shards in the Index.
  /// [vectorsCount] The number of vectors in the Index.
  const GoogleCloudAiplatformV1beta1IndexStatsResponse({
    required this.shardsCount,
    required this.vectorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardsCount': shardsCount,
      'vectorsCount': vectorsCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1IndexStatsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1IndexStatsResponse(
      shardsCount: pulumi.Input.fromValue(map['shardsCount'] as int),
      vectorsCount: pulumi.Input.fromValue(map['vectorsCount'] as String),
    );
  }
}
