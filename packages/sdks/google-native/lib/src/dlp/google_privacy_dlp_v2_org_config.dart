// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_starting_location.dart';

/// Project and scan location information. Only set when the parent is an org.
class GooglePrivacyDlpV2OrgConfig {
  /// The data to scan: folder, org, or project
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryStartingLocation>? location;
  /// The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  final pulumi.Input<String>? project;

  /// Creates a new [GooglePrivacyDlpV2OrgConfig].
  /// [location] The data to scan: folder, org, or project
  /// [project] The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.
  const GooglePrivacyDlpV2OrgConfig({
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DiscoveryStartingLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory GooglePrivacyDlpV2OrgConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2OrgConfig(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryStartingLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

