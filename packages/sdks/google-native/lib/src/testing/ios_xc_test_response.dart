// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// A test of an iOS application that uses the XCTest framework. Xcode supports the option to "build for testing", which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build/Products directory that contains all the binaries needed to run the tests.
class IosXcTestResponse {
  /// The bundle id for the application under test.
  final String appBundleId;
  /// The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.
  final bool testSpecialEntitlements;
  /// The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.
  final FileReferenceResponse testsZip;
  /// The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.
  final String xcodeVersion;
  /// An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.
  final FileReferenceResponse xctestrun;

  /// Creates a new [IosXcTestResponse].
  /// [appBundleId] The bundle id for the application under test.
  /// [testSpecialEntitlements] The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.
  /// [testsZip] The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.
  /// [xcodeVersion] The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.
  /// [xctestrun] An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.
  IosXcTestResponse({
    required this.appBundleId,
    required this.testSpecialEntitlements,
    required this.testsZip,
    required this.xcodeVersion,
    required this.xctestrun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBundleId': appBundleId,
      'testSpecialEntitlements': testSpecialEntitlements,
      'testsZip': testsZip.toMap(),
      'xcodeVersion': xcodeVersion,
      'xctestrun': xctestrun.toMap(),
    };
  }

  factory IosXcTestResponse.fromMap(Map<String, dynamic> map) {
    return IosXcTestResponse(
      appBundleId: map['appBundleId'] as String,
      testSpecialEntitlements: map['testSpecialEntitlements'] as bool,
      testsZip: FileReferenceResponse.fromMap((map['testsZip'] as Map).cast<String, dynamic>()),
      xcodeVersion: map['xcodeVersion'] as String,
      xctestrun: FileReferenceResponse.fromMap((map['xctestrun'] as Map).cast<String, dynamic>()),
    );
  }
}

