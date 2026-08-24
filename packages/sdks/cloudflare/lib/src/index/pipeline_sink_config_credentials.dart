// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSinkConfigCredentials {
  /// Cloudflare Account ID for the bucket
  final pulumi.Input<String> accessKeyId;
  /// Cloudflare Account ID for the bucket
  final pulumi.Input<String> secretAccessKey;

  /// Creates a new [PipelineSinkConfigCredentials].
  /// [accessKeyId] Cloudflare Account ID for the bucket
  /// [secretAccessKey] Cloudflare Account ID for the bucket
  const PipelineSinkConfigCredentials({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
    };
  }

  factory PipelineSinkConfigCredentials.fromMap(Map<String, dynamic> map) {
    return PipelineSinkConfigCredentials(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      secretAccessKey: pulumi.Input.fromValue(map['secretAccessKey'] as String),
    );
  }
}
