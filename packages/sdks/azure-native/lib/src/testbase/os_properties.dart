// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_properties.dart';

/// The properties of an operating system.
class OsProperties {
  /// Specify the referenced Test Base Custom Image Id if available.
  final pulumi.Input<String?>? customImageId;
  /// The name of the OS.
  final pulumi.Input<String?>? osName;
  /// The properties of the OS release.
  final pulumi.Input<ReleaseProperties?>? releaseProperties;

  /// Creates a new [OsProperties].
  /// [customImageId] Specify the referenced Test Base Custom Image Id if available.
  /// [osName] The name of the OS.
  /// [releaseProperties] The properties of the OS release.
  const OsProperties({
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
      customImageId: (() { final guardedValue = map['customImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseProperties: (() { final guardedValue = map['releaseProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleaseProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
