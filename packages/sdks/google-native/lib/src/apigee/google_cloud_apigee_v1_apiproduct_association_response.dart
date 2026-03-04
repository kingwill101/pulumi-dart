// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// APIProductAssociation has the API product and its administrative state association.
class GoogleCloudApigeeV1APIProductAssociationResponse {
  /// API product to be associated with the credential.
  final pulumi.Input<String> apiproduct;

  /// The API product credential associated status. Valid values are `approved` or `revoked`.
  final pulumi.Input<String> status;

  /// Creates a new [GoogleCloudApigeeV1APIProductAssociationResponse].
  /// [apiproduct] API product to be associated with the credential.
  /// [status] The API product credential associated status. Valid values are `approved` or `revoked`.
  GoogleCloudApigeeV1APIProductAssociationResponse({
    required this.apiproduct,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiproduct': apiproduct, 'status': status};
  }

  factory GoogleCloudApigeeV1APIProductAssociationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1APIProductAssociationResponse(
      apiproduct: pulumi.Input.fromValue(map['apiproduct'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
