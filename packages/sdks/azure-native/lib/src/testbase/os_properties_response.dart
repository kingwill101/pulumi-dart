// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_properties_response.dart';

/// The properties of an operating system.
class OsPropertiesResponse {
  /// The name of the custom image resource.
  final pulumi.Input<String> customImageDisplayName;
  /// Specify the referenced Test Base Custom Image Id if available.
  final pulumi.Input<String>? customImageId;
  /// The name of the OS.
  final pulumi.Input<String>? osName;
  /// The properties of the OS release.
  final pulumi.Input<ReleasePropertiesResponse>? releaseProperties;

  /// Creates a new [OsPropertiesResponse].
  /// [customImageDisplayName] The name of the custom image resource.
  /// [customImageId] Specify the referenced Test Base Custom Image Id if available.
  /// [osName] The name of the OS.
  /// [releaseProperties] The properties of the OS release.
  const OsPropertiesResponse({
    required this.customImageDisplayName,
    this.customImageId,
    this.osName,
    this.releaseProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageDisplayName': customImageDisplayName,
      'customImageId': ?customImageId,
      'osName': ?osName,
      'releaseProperties': ?pulumi.Input.mapOptionalInputValue<ReleasePropertiesResponse, Map<String, dynamic>>(releaseProperties, (value) => value.toMap()),
    };
  }

  factory OsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OsPropertiesResponse(
      customImageDisplayName: pulumi.Input.fromValue(map['customImageDisplayName'] as String),
      customImageId: (() { final guardedValue = map['customImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseProperties: (() { final guardedValue = map['releaseProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReleasePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

