// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamsResultPublicDetails {
  final pulumi.Input<String> channelLink;
  final pulumi.Input<String> logo;
  final pulumi.Input<int> mediaId;
  final pulumi.Input<String> shareLink;
  final pulumi.Input<String> title;

  /// Creates a new [GetStreamsResultPublicDetails].
  /// [channelLink] Required.
  /// [logo] Required.
  /// [mediaId] Required.
  /// [shareLink] Required.
  /// [title] Required.
  const GetStreamsResultPublicDetails({
    required this.channelLink,
    required this.logo,
    required this.mediaId,
    required this.shareLink,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelLink': channelLink,
      'logo': logo,
      'mediaId': mediaId,
      'shareLink': shareLink,
      'title': title,
    };
  }

  factory GetStreamsResultPublicDetails.fromMap(Map<String, dynamic> map) {
    return GetStreamsResultPublicDetails(
      channelLink: pulumi.Input.fromValue(map['channelLink'] as String),
      logo: pulumi.Input.fromValue(map['logo'] as String),
      mediaId: pulumi.Input.fromValue((map['mediaId'] as num).toInt()),
      shareLink: pulumi.Input.fromValue(map['shareLink'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
