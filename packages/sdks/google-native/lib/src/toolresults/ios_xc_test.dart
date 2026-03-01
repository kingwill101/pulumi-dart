// ignore_for_file: unused_element, unnecessary_cast


/// A test of an iOS application that uses the XCTest framework.
class IosXcTest {
  /// Bundle ID of the app.
  final String? bundleId;
  /// Xcode version that the test was run with.
  final String? xcodeVersion;

  /// Creates a new [IosXcTest].
  /// [bundleId] Bundle ID of the app.
  /// [xcodeVersion] Xcode version that the test was run with.
  IosXcTest({
    this.bundleId,
    this.xcodeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'xcodeVersion': ?xcodeVersion,
    };
  }

  factory IosXcTest.fromMap(Map<String, dynamic> map) {
    return IosXcTest(
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      xcodeVersion: map['xcodeVersion'] == null ? null : map['xcodeVersion'] as String,
    );
  }
}

