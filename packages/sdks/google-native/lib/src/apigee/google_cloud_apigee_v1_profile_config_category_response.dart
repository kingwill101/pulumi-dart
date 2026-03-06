// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advanced API Security provides security profile that scores the following categories.
class GoogleCloudApigeeV1ProfileConfigCategoryResponse {
  /// Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  final pulumi.Input<Map<String, dynamic>> abuse;
  /// Checks to see if you have an authorization policy in place.
  final pulumi.Input<Map<String, dynamic>> authorization;
  /// Checks to see if you have CORS policy in place.
  final pulumi.Input<Map<String, dynamic>> cors;
  /// Checks to see if you have a mediation policy in place.
  final pulumi.Input<Map<String, dynamic>> mediation;
  /// Checks to see if you have configured mTLS for the target server.
  final pulumi.Input<Map<String, dynamic>> mtls;
  /// Checks to see if you have a threat protection policy in place.
  final pulumi.Input<Map<String, dynamic>> threat;

  /// Creates a new [GoogleCloudApigeeV1ProfileConfigCategoryResponse].
  /// [abuse] Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  /// [authorization] Checks to see if you have an authorization policy in place.
  /// [cors] Checks to see if you have CORS policy in place.
  /// [mediation] Checks to see if you have a mediation policy in place.
  /// [mtls] Checks to see if you have configured mTLS for the target server.
  /// [threat] Checks to see if you have a threat protection policy in place.
  const GoogleCloudApigeeV1ProfileConfigCategoryResponse({
    required this.abuse,
    required this.authorization,
    required this.cors,
    required this.mediation,
    required this.mtls,
    required this.threat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuse': abuse,
      'authorization': authorization,
      'cors': cors,
      'mediation': mediation,
      'mtls': mtls,
      'threat': threat,
    };
  }

  factory GoogleCloudApigeeV1ProfileConfigCategoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfigCategoryResponse(
      abuse: pulumi.Input.fromValue((map['abuse']! as Map).cast<String, dynamic>()),
      authorization: pulumi.Input.fromValue((map['authorization']! as Map).cast<String, dynamic>()),
      cors: pulumi.Input.fromValue((map['cors']! as Map).cast<String, dynamic>()),
      mediation: pulumi.Input.fromValue((map['mediation']! as Map).cast<String, dynamic>()),
      mtls: pulumi.Input.fromValue((map['mtls']! as Map).cast<String, dynamic>()),
      threat: pulumi.Input.fromValue((map['threat']! as Map).cast<String, dynamic>()),
    );
  }
}

