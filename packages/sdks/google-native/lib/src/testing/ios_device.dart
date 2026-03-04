// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single iOS device.
class IosDevice {
  /// The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> iosModelId;

  /// The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> iosVersionId;

  /// The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> locale;

  /// How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  final pulumi.Input<String> orientation;

  /// Creates a new [IosDevice].
  /// [iosModelId] The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [iosVersionId] The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [locale] The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [orientation] How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  IosDevice({
    required this.iosModelId,
    required this.iosVersionId,
    required this.locale,
    required this.orientation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosModelId': iosModelId,
      'iosVersionId': iosVersionId,
      'locale': locale,
      'orientation': orientation,
    };
  }

  factory IosDevice.fromMap(Map<String, dynamic> map) {
    return IosDevice(
      iosModelId: pulumi.Input.fromValue(map['iosModelId'] as String),
      iosVersionId: pulumi.Input.fromValue(map['iosVersionId'] as String),
      locale: pulumi.Input.fromValue(map['locale'] as String),
      orientation: pulumi.Input.fromValue(map['orientation'] as String),
    );
  }
}
