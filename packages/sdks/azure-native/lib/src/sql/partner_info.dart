// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Partner server information for the failover group.
class PartnerInfo {
  /// Resource identifier of the partner server.
  final pulumi.Input<String> id;

  /// Creates a new [PartnerInfo].
  /// [id] Resource identifier of the partner server.
  const PartnerInfo({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PartnerInfo.fromMap(Map<String, dynamic> map) {
    return PartnerInfo(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
