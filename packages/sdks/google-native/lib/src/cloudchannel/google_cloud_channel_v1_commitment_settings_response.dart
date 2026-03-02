// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_renewal_settings_response.dart';

/// Commitment settings for commitment-based offers.
class GoogleCloudChannelV1CommitmentSettingsResponse {
  /// Commitment end timestamp.
  final pulumi.Input<String> endTime;
  /// Optional. Renewal settings applicable for a commitment-based Offer.
  final pulumi.Input<GoogleCloudChannelV1RenewalSettingsResponse> renewalSettings;
  /// Commitment start timestamp.
  final pulumi.Input<String> startTime;

  /// Creates a new [GoogleCloudChannelV1CommitmentSettingsResponse].
  /// [endTime] Commitment end timestamp.
  /// [renewalSettings] Optional. Renewal settings applicable for a commitment-based Offer.
  /// [startTime] Commitment start timestamp.
  GoogleCloudChannelV1CommitmentSettingsResponse({
    required this.endTime,
    required this.renewalSettings,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'renewalSettings': pulumi.Input.mapInputValue<GoogleCloudChannelV1RenewalSettingsResponse, Map<String, dynamic>>(renewalSettings, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory GoogleCloudChannelV1CommitmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1CommitmentSettingsResponse(
      endTime: (map['endTime'] as String).input(),
      renewalSettings: (GoogleCloudChannelV1RenewalSettingsResponse.fromMap((map['renewalSettings'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

