// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_sqs_settings_authentication.dart';

class FeedDetailsAmazonSqsSettings {
  /// Account number of the owner of the queue.
  final pulumi.Input<String?>? accountNumber;
  /// Amazon SQS auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsSettingsAuthentication?>? authentication;
  /// Name of the queue.
  final pulumi.Input<String?>? queue;
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
  final pulumi.Input<String?>? region;
  /// Possible values:
  /// SOURCE_DELETION_NEVER
  /// SOURCE_DELETION_ON_SUCCESS
  /// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
  final pulumi.Input<String?>? sourceDeletionOption;

  /// Creates a new [FeedDetailsAmazonSqsSettings].
  /// [accountNumber] Account number of the owner of the queue.
  /// [authentication] Amazon SQS auth.
  /// [queue] Name of the queue.
  /// [region] Possible values:
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsAmazonSqsSettings({
    this.accountNumber,
    this.authentication,
    this.queue,
    this.region,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonSqsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'queue': ?queue,
      'region': ?region,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsAmazonSqsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsSettings(
      accountNumber: (() { final guardedValue = map['accountNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonSqsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
