// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_qualys_scan_settings_authentication.dart';

class FeedDetailsQualysScanSettings {
  /// Supported Qualys Scan api type.
  /// Possible values:
  /// SCAN_SUMMARY_OUTPUT
  /// SCAN_COMPLIANCE_OUTPUT
  /// SCAN_COMPLIANCE_CONTROL_OUTPUT
  final pulumi.Input<String?>? apiType;
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsQualysScanSettingsAuthentication?>? authentication;
  /// Hostname.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [FeedDetailsQualysScanSettings].
  /// [apiType] Supported Qualys Scan api type.
  /// [authentication] Info for username and secret based authentication.
  /// [hostname] Hostname.
  const FeedDetailsQualysScanSettings({
    this.apiType,
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': ?apiType,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsQualysScanSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsQualysScanSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsQualysScanSettings(
      apiType: (() { final guardedValue = map['apiType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsQualysScanSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
