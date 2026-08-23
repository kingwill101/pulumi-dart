// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GetAppSpecServiceLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  const GetAppSpecServiceLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecServiceLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationPapertrail(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
