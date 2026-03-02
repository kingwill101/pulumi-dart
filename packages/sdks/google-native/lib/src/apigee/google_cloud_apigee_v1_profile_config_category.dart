// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advanced API Security provides security profile that scores the following categories.
class GoogleCloudApigeeV1ProfileConfigCategory {
  /// Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  final pulumi.Input<Map<String, dynamic>>? abuse;
  /// Checks to see if you have an authorization policy in place.
  final pulumi.Input<Map<String, dynamic>>? authorization;
  /// Checks to see if you have CORS policy in place.
  final pulumi.Input<Map<String, dynamic>>? cors;
  /// Checks to see if you have a mediation policy in place.
  final pulumi.Input<Map<String, dynamic>>? mediation;
  /// Checks to see if you have configured mTLS for the target server.
  final pulumi.Input<Map<String, dynamic>>? mtls;
  /// Checks to see if you have a threat protection policy in place.
  final pulumi.Input<Map<String, dynamic>>? threat;

  /// Creates a new [GoogleCloudApigeeV1ProfileConfigCategory].
  /// [abuse] Checks for abuse, which includes any requests sent to the API for purposes other than what it is intended for, such as high volumes of requests, data scraping, and abuse related to authorization.
  /// [authorization] Checks to see if you have an authorization policy in place.
  /// [cors] Checks to see if you have CORS policy in place.
  /// [mediation] Checks to see if you have a mediation policy in place.
  /// [mtls] Checks to see if you have configured mTLS for the target server.
  /// [threat] Checks to see if you have a threat protection policy in place.
  GoogleCloudApigeeV1ProfileConfigCategory({
    this.abuse,
    this.authorization,
    this.cors,
    this.mediation,
    this.mtls,
    this.threat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abuse': ?abuse,
      'authorization': ?authorization,
      'cors': ?cors,
      'mediation': ?mediation,
      'mtls': ?mtls,
      'threat': ?threat,
    };
  }

  factory GoogleCloudApigeeV1ProfileConfigCategory.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfigCategory(
      abuse: map['abuse'] == null ? null : ((map['abuse']! as Map).cast<String, dynamic>()).input(),
      authorization: map['authorization'] == null ? null : ((map['authorization']! as Map).cast<String, dynamic>()).input(),
      cors: map['cors'] == null ? null : ((map['cors']! as Map).cast<String, dynamic>()).input(),
      mediation: map['mediation'] == null ? null : ((map['mediation']! as Map).cast<String, dynamic>()).input(),
      mtls: map['mtls'] == null ? null : ((map['mtls']! as Map).cast<String, dynamic>()).input(),
      threat: map['threat'] == null ? null : ((map['threat']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

