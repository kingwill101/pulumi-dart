// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiSubscriptionKeyParameterNames {
  /// The name of the HTTP Header which should be used for the Subscription Key.
  final pulumi.Input<String> header;
  /// The name of the QueryString parameter which should be used for the Subscription Key.
  final pulumi.Input<String> query;

  /// Creates a new [ApiSubscriptionKeyParameterNames].
  /// [header] The name of the HTTP Header which should be used for the Subscription Key.
  /// [query] The name of the QueryString parameter which should be used for the Subscription Key.
  const ApiSubscriptionKeyParameterNames({
    required this.header,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'query': query,
    };
  }

  factory ApiSubscriptionKeyParameterNames.fromMap(Map<String, dynamic> map) {
    return ApiSubscriptionKeyParameterNames(
      header: pulumi.Input.fromValue(map['header'] as String),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
