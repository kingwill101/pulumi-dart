// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_properties.dart';

/// The properties of an operating system.
class OsProperties {
  /// Specify the referenced Test Base Custom Image Id if available.
  final pulumi.Input<String>? customImageId;
  /// The name of the OS.
  final pulumi.Input<String>? osName;
  /// The properties of the OS release.
  final pulumi.Input<ReleaseProperties>? releaseProperties;

  /// Creates a new [OsProperties].
  /// [customImageId] Specify the referenced Test Base Custom Image Id if available.
  /// [osName] The name of the OS.
  /// [releaseProperties] The properties of the OS release.
  OsProperties({
    this.customImageId,
    this.osName,
    this.releaseProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageId': ?customImageId,
      'osName': ?osName,
      'releaseProperties': ?pulumi.Input.mapOptionalInputValue<ReleaseProperties, Map<String, dynamic>>(releaseProperties, (value) => value.toMap()),
    };
  }

  factory OsProperties.fromMap(Map<String, dynamic> map) {
    return OsProperties(
      customImageId: map['customImageId'] == null ? null : (map['customImageId']! as String).input(),
      osName: map['osName'] == null ? null : (map['osName']! as String).input(),
      releaseProperties: map['releaseProperties'] == null ? null : (ReleaseProperties.fromMap((map['releaseProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

