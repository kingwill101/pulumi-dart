// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_restrictions_android_key_restrictions_allowed_application.dart';

class ApiKeyRestrictionsAndroidKeyRestrictions {
  /// A list of Android applications that are allowed to make API calls with this key.
  final pulumi.Input<List<ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplication>> allowedApplications;

  /// Creates a new [ApiKeyRestrictionsAndroidKeyRestrictions].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  ApiKeyRestrictionsAndroidKeyRestrictions({
    required this.allowedApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': pulumi.Input.mapInputValue<List<ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplication>, List<Map<String, dynamic>>>(allowedApplications, (value) => pulumi.Input.encodeList<ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiKeyRestrictionsAndroidKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsAndroidKeyRestrictions(
      allowedApplications: pulumi.Input.fromValue(pulumi.Input.decodeList<ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplication>(map['allowedApplications']!, (value) => ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplication.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

