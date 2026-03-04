// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdk_bug_response.dart';

/// The version of the SDK used to run the job.
class SdkVersionResponse {
  /// Known bugs found in this SDK version.
  final pulumi.Input<List<SdkBugResponse>> bugs;

  /// The support status for this SDK version.
  final pulumi.Input<String> sdkSupportStatus;

  /// The version of the SDK used to run the job.
  final pulumi.Input<String> version;

  /// A readable string describing the version of the SDK.
  final pulumi.Input<String> versionDisplayName;

  /// Creates a new [SdkVersionResponse].
  /// [bugs] Known bugs found in this SDK version.
  /// [sdkSupportStatus] The support status for this SDK version.
  /// [version] The version of the SDK used to run the job.
  /// [versionDisplayName] A readable string describing the version of the SDK.
  SdkVersionResponse({
    required this.bugs,
    required this.sdkSupportStatus,
    required this.version,
    required this.versionDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bugs':
          pulumi.Input.mapInputValue<
            List<SdkBugResponse>,
            List<Map<String, dynamic>>
          >(
            bugs,
            (value) =>
                pulumi.Input.encodeList<SdkBugResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sdkSupportStatus': sdkSupportStatus,
      'version': version,
      'versionDisplayName': versionDisplayName,
    };
  }

  factory SdkVersionResponse.fromMap(Map<String, dynamic> map) {
    return SdkVersionResponse(
      bugs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SdkBugResponse>(
          map['bugs']!,
          (value) =>
              SdkBugResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      sdkSupportStatus: pulumi.Input.fromValue(
        map['sdkSupportStatus'] as String,
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
      versionDisplayName: pulumi.Input.fromValue(
        map['versionDisplayName'] as String,
      ),
    );
  }
}
