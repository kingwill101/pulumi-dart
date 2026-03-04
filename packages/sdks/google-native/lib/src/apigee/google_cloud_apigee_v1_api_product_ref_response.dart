// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudApigeeV1ApiProductRefResponse {
  /// Name of the API product.
  final pulumi.Input<String> apiproduct;

  /// Status of the API product. Valid values are `approved` or `revoked`.
  final pulumi.Input<String> status;

  /// Creates a new [GoogleCloudApigeeV1ApiProductRefResponse].
  /// [apiproduct] Name of the API product.
  /// [status] Status of the API product. Valid values are `approved` or `revoked`.
  GoogleCloudApigeeV1ApiProductRefResponse({
    required this.apiproduct,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiproduct': apiproduct, 'status': status};
  }

  factory GoogleCloudApigeeV1ApiProductRefResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1ApiProductRefResponse(
      apiproduct: pulumi.Input.fromValue(map['apiproduct'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
