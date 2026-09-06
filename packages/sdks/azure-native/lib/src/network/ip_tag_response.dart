// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the IpTag associated with the object.
class IpTagResponse {
  /// The IP tag type. Example: FirstPartyUsage.
  final pulumi.Input<String?>? ipTagType;
  /// The value of the IP tag associated with the public IP. Example: SQL.
  final pulumi.Input<String?>? tag;

  /// Creates a new [IpTagResponse].
  /// [ipTagType] The IP tag type. Example: FirstPartyUsage.
  /// [tag] The value of the IP tag associated with the public IP. Example: SQL.
  const IpTagResponse({
    this.ipTagType,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ?ipTagType,
      'tag': ?tag,
    };
  }

  factory IpTagResponse.fromMap(Map<String, dynamic> map) {
    return IpTagResponse(
      ipTagType: (() { final guardedValue = map['ipTagType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
