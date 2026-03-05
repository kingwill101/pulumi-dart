// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_application.dart';

/// The Android apps that are allowed to use the key.
class AndroidKeyRestrictions {
  /// A list of Android applications that are allowed to make API calls with this key.
  final pulumi.Input<List<AndroidApplication>>? allowedApplications;

  /// Creates a new [AndroidKeyRestrictions].
  /// [allowedApplications] A list of Android applications that are allowed to make API calls with this key.
  AndroidKeyRestrictions({
    this.allowedApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?pulumi.Input.mapOptionalInputValue<List<AndroidApplication>, List<Map<String, dynamic>>>(allowedApplications, (value) => pulumi.Input.encodeList<AndroidApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return AndroidKeyRestrictions(
      allowedApplications: (() { final guardedValue = map['allowedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AndroidApplication>(guardedValue, (value) => AndroidApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

