// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudApigeeV1AsyncQueryResultResponse {
  /// Query result will be unaccessable after this time.
  final pulumi.Input<String> expires;

  /// Self link of the query results. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  final pulumi.Input<String> self;

  /// Creates a new [GoogleCloudApigeeV1AsyncQueryResultResponse].
  /// [expires] Query result will be unaccessable after this time.
  /// [self] Self link of the query results. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`
  GoogleCloudApigeeV1AsyncQueryResultResponse({
    required this.expires,
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expires': expires, 'self': self};
  }

  factory GoogleCloudApigeeV1AsyncQueryResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1AsyncQueryResultResponse(
      expires: pulumi.Input.fromValue(map['expires'] as String),
      self: pulumi.Input.fromValue(map['self'] as String),
    );
  }
}
