// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_application_response.dart';

/// The Android apps that are allowed to use the key.
class AndroidKeyRestrictionsResponse {
  /// A list of Android applications that are allowed to make API calls with this key.
  final pulumi.Input<List<AndroidApplicationResponse>> allowedApplications;

  /// Creates a new [AndroidKeyRestrictionsResponse].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  AndroidKeyRestrictionsResponse({
    required this.allowedApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': pulumi.Input.mapInputValue<List<AndroidApplicationResponse>, List<Map<String, dynamic>>>(allowedApplications, (value) => pulumi.Input.encodeList<AndroidApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return AndroidKeyRestrictionsResponse(
      allowedApplications: (pulumi.Input.decodeList<AndroidApplicationResponse>(map['allowedApplications'], (value) => AndroidApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

