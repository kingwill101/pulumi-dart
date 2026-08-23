// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single Android device.
class AndroidDevice {
  /// The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> androidModelId;
  /// The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> androidVersionId;
  /// The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> locale;
  /// How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> orientation;

  /// Creates a new [AndroidDevice].
  /// [androidModelId] The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [androidVersionId] The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [locale] The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [orientation] How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  const AndroidDevice({
    required this.androidModelId,
    required this.androidVersionId,
    required this.locale,
    required this.orientation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidModelId': androidModelId,
      'androidVersionId': androidVersionId,
      'locale': locale,
      'orientation': orientation,
    };
  }

  factory AndroidDevice.fromMap(Map<String, dynamic> map) {
    return AndroidDevice(
      androidModelId: pulumi.Input.fromValue(map['androidModelId'] as String),
      androidVersionId: pulumi.Input.fromValue(map['androidVersionId'] as String),
      locale: pulumi.Input.fromValue(map['locale'] as String),
      orientation: pulumi.Input.fromValue(map['orientation'] as String),
    );
  }
}
