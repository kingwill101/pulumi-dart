// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.
class IosTestLoopResponse {
  /// The bundle id for the application under test.
  final pulumi.Input<String> appBundleId;
  /// The .ipa of the application to test.
  final pulumi.Input<FileReferenceResponse> appIpa;
  /// The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  final pulumi.Input<List<int>> scenarios;

  /// Creates a new [IosTestLoopResponse].
  /// [appBundleId] The bundle id for the application under test.
  /// [appIpa] The .ipa of the application to test.
  /// [scenarios] The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  const IosTestLoopResponse({
    required this.appBundleId,
    required this.appIpa,
    required this.scenarios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleId': appBundleId,
      'appIpa': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(appIpa, (value) => value.toMap()),
      'scenarios': scenarios,
    };
  }

  factory IosTestLoopResponse.fromMap(Map<String, dynamic> map) {
    return IosTestLoopResponse(
      appBundleId: pulumi.Input.fromValue(map['appBundleId'] as String),
      appIpa: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['appIpa']! as Map).cast<String, dynamic>())),
      scenarios: pulumi.Input.fromValue((map['scenarios'] as List).cast<int>()),
    );
  }
}
