// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocalRulestackRuleCategory {
  /// Specifies a list of URL categories to match. Possible values include `abortion`, `abused-drugs`, `adult`, `alcohol-and-tobacco`, `auctions`, `business-and-economy`, `command-and-control`, `computer-and-internet-info`, `content-delivery-networks`, `copyright-infringement`, `cryptocurrency`, `dating`, `dynamic-dns`, `educational-institutions`, `entertainment-and-arts`, `extremism`, `financial-services`, `gambling`, `games`, `government`, `grayware`, `hacking`, `health-and-medicine`, `high-risk`, `home-and-garden`, `hunting-and-fishing`, `insufficient-content`, `internet-communications-and-telephony`, `internet-portals`, `job-search`, `legal`, `low-risk`, `malware`, `medium-risk`, `military`, `motor-vehicles`, `music`, `newly-registered-domain`, `news`, `not-resolved`, `nudity`, `online-storage-and-backup`, `parked`, `peer-to-peer`, `personal-sites-and-blogs`, `philosophy-and-political-advocacy`, `phishing`, `private-ip-addresses`, `proxy-avoidance-and-anonymizers`, `questionable`, `real-estate`, `real-time-detection`, `recreation-and-hobbies`, `reference-and-research`, `religion`, `search-engines`, `sex-education`, `shareware-and-freeware`, `shopping`, `social-networking`, `society`, `sports`, `stock-advice-and-tools`, `streaming-media`, `swimsuits-and-intimate-apparel`, `training-and-tools`, `translation`, `travel`, `unknown`, `weapons`, `web-advertisements`, `web-based-email`, and `web-hosting`.
  final pulumi.Input<List<String>> customUrls;
  /// Specifies a list of feeds to match.
  final pulumi.Input<List<String>>? feeds;

  /// Creates a new [LocalRulestackRuleCategory].
  /// [customUrls] Specifies a list of URL categories to match. Possible values include `abortion`, `abused-drugs`, `adult`, `alcohol-and-tobacco`, `auctions`, `business-and-economy`, `command-and-control`, `computer-and-internet-info`, `content-delivery-networks`, `copyright-infringement`, `cryptocurrency`, `dating`, `dynamic-dns`, `educational-institutions`, `entertainment-and-arts`, `extremism`, `financial-services`, `gambling`, `games`, `government`, `grayware`, `hacking`, `health-and-medicine`, `high-risk`, `home-and-garden`, `hunting-and-fishing`, `insufficient-content`, `internet-communications-and-telephony`, `internet-portals`, `job-search`, `legal`, `low-risk`, `malware`, `medium-risk`, `military`, `motor-vehicles`, `music`, `newly-registered-domain`, `news`, `not-resolved`, `nudity`, `online-storage-and-backup`, `parked`, `peer-to-peer`, `personal-sites-and-blogs`, `philosophy-and-political-advocacy`, `phishing`, `private-ip-addresses`, `proxy-avoidance-and-anonymizers`, `questionable`, `real-estate`, `real-time-detection`, `recreation-and-hobbies`, `reference-and-research`, `religion`, `search-engines`, `sex-education`, `shareware-and-freeware`, `shopping`, `social-networking`, `society`, `sports`, `stock-advice-and-tools`, `streaming-media`, `swimsuits-and-intimate-apparel`, `training-and-tools`, `translation`, `travel`, `unknown`, `weapons`, `web-advertisements`, `web-based-email`, and `web-hosting`.
  /// [feeds] Specifies a list of feeds to match.
  LocalRulestackRuleCategory({
    required this.customUrls,
    this.feeds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customUrls': customUrls,
      'feeds': ?feeds,
    };
  }

  factory LocalRulestackRuleCategory.fromMap(Map<String, dynamic> map) {
    return LocalRulestackRuleCategory(
      customUrls: ((map['customUrls'] as List).cast<String>()).input(),
      feeds: map['feeds'] == null ? null : ((map['feeds']! as List).cast<String>()).input(),
    );
  }
}

