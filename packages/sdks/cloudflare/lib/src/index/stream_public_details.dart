// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamPublicDetails {
  final pulumi.Input<String?>? channelLink;
  final pulumi.Input<String?>? logo;
  final pulumi.Input<String?>? shareLink;
  final pulumi.Input<String?>? title;

  /// Creates a new [StreamPublicDetails].
  /// [channelLink] Optional.
  /// [logo] Optional.
  /// [shareLink] Optional.
  /// [title] Optional.
  const StreamPublicDetails({
    this.channelLink,
    this.logo,
    this.shareLink,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelLink': ?channelLink,
      'logo': ?logo,
      'shareLink': ?shareLink,
      'title': ?title,
    };
  }

  factory StreamPublicDetails.fromMap(Map<String, dynamic> map) {
    return StreamPublicDetails(
      channelLink: (() { final guardedValue = map['channelLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logo: (() { final guardedValue = map['logo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareLink: (() { final guardedValue = map['shareLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
