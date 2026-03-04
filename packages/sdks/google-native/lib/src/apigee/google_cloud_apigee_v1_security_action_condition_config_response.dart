// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The following are a list of conditions. A valid SecurityAction must contain at least one condition. Within a condition, each element is ORed. Across conditions elements are ANDed. For example if a SecurityAction has the following: api_keys: ["key1", "key2"] and developers: ["dev1", "dev2"] then this is interpreted as: enforce the action if the incoming request has ((api_key = "key1" OR api_key="key") AND (developer="dev1" OR developer="dev2"))
class GoogleCloudApigeeV1SecurityActionConditionConfigResponse {
  /// Optional. A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper, OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly Detection and Advanced API Scraper.
  final pulumi.Input<List<String>> botReasons;

  /// Optional. A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  final pulumi.Input<List<String>> ipAddressRanges;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionConditionConfigResponse].
  /// [botReasons] Optional. A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper, OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly Detection and Advanced API Scraper.
  /// [ipAddressRanges] Optional. A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  GoogleCloudApigeeV1SecurityActionConditionConfigResponse({
    required this.botReasons,
    required this.ipAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botReasons': botReasons,
      'ipAddressRanges': ipAddressRanges,
    };
  }

  factory GoogleCloudApigeeV1SecurityActionConditionConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1SecurityActionConditionConfigResponse(
      botReasons: pulumi.Input.fromValue(
        (map['botReasons'] as List).cast<String>(),
      ),
      ipAddressRanges: pulumi.Input.fromValue(
        (map['ipAddressRanges'] as List).cast<String>(),
      ),
    );
  }
}
