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

  factory GoogleCloudApigeeV1ProfileConfigCategory.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1ProfileConfigCategory(
      abuse: (() {
        final guardedValue = map['abuse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      authorization: (() {
        final guardedValue = map['authorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      mediation: (() {
        final guardedValue = map['mediation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      mtls: (() {
        final guardedValue = map['mtls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      threat: (() {
        final guardedValue = map['threat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
