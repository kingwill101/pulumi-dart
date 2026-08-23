// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecWorkerLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GetAppSpecWorkerLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  const GetAppSpecWorkerLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecWorkerLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestinationPapertrail(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
