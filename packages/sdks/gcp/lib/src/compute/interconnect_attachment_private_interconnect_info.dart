// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectAttachmentPrivateInterconnectInfo {
  /// (Output)
  /// 802.1q encapsulation tag to be used for traffic between
  /// Google and the customer, going to and from this network and region.
  final pulumi.Input<int>? tag8021q;

  /// Creates a new [InterconnectAttachmentPrivateInterconnectInfo].
  /// [tag8021q] (Output)
  InterconnectAttachmentPrivateInterconnectInfo({this.tag8021q});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tag8021q': ?tag8021q};
  }

  factory InterconnectAttachmentPrivateInterconnectInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterconnectAttachmentPrivateInterconnectInfo(
      tag8021q: (() {
        final guardedValue = map['tag8021q'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
