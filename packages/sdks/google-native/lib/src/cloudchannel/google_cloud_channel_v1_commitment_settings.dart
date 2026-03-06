// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_renewal_settings.dart';

/// Commitment settings for commitment-based offers.
class GoogleCloudChannelV1CommitmentSettings {
  /// Optional. Renewal settings applicable for a commitment-based Offer.
  final pulumi.Input<GoogleCloudChannelV1RenewalSettings>? renewalSettings;

  /// Creates a new [GoogleCloudChannelV1CommitmentSettings].
  /// [renewalSettings] Optional. Renewal settings applicable for a commitment-based Offer.
  const GoogleCloudChannelV1CommitmentSettings({
    this.renewalSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'renewalSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1RenewalSettings, Map<String, dynamic>>(renewalSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1CommitmentSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1CommitmentSettings(
      renewalSettings: (() { final guardedValue = map['renewalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1RenewalSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

