// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonS3SettingsAuthentication {
  /// Access key ID.
  final pulumi.Input<String?>? accessKeyId;
  /// Client ID.
  final pulumi.Input<String?>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// Refresh URI. Used when using OAuth auth.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? refreshUri;
  /// Possible values:
  /// US_EAST_1
  /// US_EAST_2
  /// US_WEST_1
  /// US_WEST_2
  /// US_GOV_CLOUD
  /// US_GOV_EAST_1
  /// EU_WEST_1
  /// EU_WEST_2
  /// EU_WEST_3
  /// EU_CENTRAL_1
  /// EU_NORTH_1
  /// EU_SOUTH_1
  /// AP_SOUTH_1
  /// AP_SOUTHEAST_1
  /// AP_SOUTHEAST_2
  /// AP_SOUTHEAST_3
  /// AP_NORTHEAST_1
  /// AP_NORTHEAST_2
  /// AP_NORTHEAST_3
  /// AP_EAST_1
  /// SA_EAST_1
  /// CN_NORTH_1
  /// CN_NORTHWEST_1
  /// CA_CENTRAL_1
  /// AF_SOUTH_1
  /// ME_SOUTH_1
  /// AP_SOUTH_2
  /// AP_SOUTHEAST_4
  /// CA_WEST_1
  /// EU_SOUTH_2
  /// EU_CENTRAL_2
  /// IL_CENTRAL_1
  /// ME_CENTRAL_1
  final pulumi.Input<String> region;
  /// Secret access key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? secretAccessKey;

  /// Creates a new [FeedDetailsAmazonS3SettingsAuthentication].
  /// [accessKeyId] Access key ID.
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  /// [refreshUri] Refresh URI. Used when using OAuth auth.
  /// [region] Possible values:
  /// [secretAccessKey] Secret access key.
  const FeedDetailsAmazonS3SettingsAuthentication({
    this.accessKeyId,
    this.clientId,
    this.clientSecret,
    this.refreshUri,
    required this.region,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'refreshUri': ?refreshUri,
      'region': region,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory FeedDetailsAmazonS3SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonS3SettingsAuthentication(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshUri: (() { final guardedValue = map['refreshUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
