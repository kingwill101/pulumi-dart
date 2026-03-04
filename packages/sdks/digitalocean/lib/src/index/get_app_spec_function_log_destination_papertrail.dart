// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecFunctionLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String> endpoint;

  /// Creates a new [GetAppSpecFunctionLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  GetAppSpecFunctionLogDestinationPapertrail({required this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpoint': endpoint};
  }

  factory GetAppSpecFunctionLogDestinationPapertrail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppSpecFunctionLogDestinationPapertrail(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}
