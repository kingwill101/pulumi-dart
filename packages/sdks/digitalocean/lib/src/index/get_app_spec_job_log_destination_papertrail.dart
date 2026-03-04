// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GetAppSpecJobLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  GetAppSpecJobLogDestinationPapertrail({required this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpoint': endpoint};
  }

  factory GetAppSpecJobLogDestinationPapertrail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppSpecJobLogDestinationPapertrail(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
