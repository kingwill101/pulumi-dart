// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.
class IosTestLoop {
  /// The .ipa of the application to test.
  final pulumi.Input<FileReference> appIpa;
  /// The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  final pulumi.Input<List<int>>? scenarios;

  /// Creates a new [IosTestLoop].
  /// [appIpa] The .ipa of the application to test.
  /// [scenarios] The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  const IosTestLoop({
    required this.appIpa,
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIpa': pulumi.Input.mapInputValue<FileReference, Map<String, dynamic>>(appIpa, (value) => value.toMap()),
      'scenarios': ?scenarios,
    };
  }

  factory IosTestLoop.fromMap(Map<String, dynamic> map) {
    return IosTestLoop(
      appIpa: pulumi.Input.fromValue(FileReference.fromMap((map['appIpa']! as Map).cast<String, dynamic>())),
      scenarios: (() { final guardedValue = map['scenarios']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

