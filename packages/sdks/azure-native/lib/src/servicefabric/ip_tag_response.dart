// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP tag associated with the public IP address.
class IpTagResponse {
  /// IP tag type. Example: FirstPartyUsage.
  final pulumi.Input<String> ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final pulumi.Input<String> tag;

  /// Creates a new [IpTagResponse].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  IpTagResponse({
    required this.ipTagType,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ipTagType,
      'tag': tag,
    };
  }

  factory IpTagResponse.fromMap(Map<String, dynamic> map) {
    return IpTagResponse(
      ipTagType: pulumi.Input.fromValue(map['ipTagType'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

