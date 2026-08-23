// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an appliance version.
class ApplianceVersionResponseVmmigrationV1alpha1 {
  /// Determine whether it's critical to upgrade the appliance to this version.
  final pulumi.Input<bool> critical;
  /// Link to a page that contains the version release notes.
  final pulumi.Input<String> releaseNotesUri;
  /// A link for downloading the version.
  final pulumi.Input<String> uri;
  /// The appliance version.
  final pulumi.Input<String> version;

  /// Creates a new [ApplianceVersionResponseVmmigrationV1alpha1].
  /// [critical] Determine whether it's critical to upgrade the appliance to this version.
  /// [releaseNotesUri] Link to a page that contains the version release notes.
  /// [uri] A link for downloading the version.
  /// [version] The appliance version.
  const ApplianceVersionResponseVmmigrationV1alpha1({
    required this.critical,
    required this.releaseNotesUri,
    required this.uri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical,
      'releaseNotesUri': releaseNotesUri,
      'uri': uri,
      'version': version,
    };
  }

  factory ApplianceVersionResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ApplianceVersionResponseVmmigrationV1alpha1(
      critical: pulumi.Input.fromValue(map['critical'] as bool),
      releaseNotesUri: pulumi.Input.fromValue(map['releaseNotesUri'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
