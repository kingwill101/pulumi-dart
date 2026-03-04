// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message to capture group information
class GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse {
  /// The group email id
  final pulumi.Input<String> email;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse].
  /// [email] The group email id
  GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
