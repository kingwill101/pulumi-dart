// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP tag associated with the public IP address.
class IpTag {
  /// IP tag type. Example: FirstPartyUsage.
  final pulumi.Input<String> ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final pulumi.Input<String> tag;

  /// Creates a new [IpTag].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  IpTag({
    required this.ipTagType,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ipTagType,
      'tag': tag,
    };
  }

  factory IpTag.fromMap(Map<String, dynamic> map) {
    return IpTag(
      ipTagType: (map['ipTagType'] as String).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

