// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the Membership resource.
class MembershipStateResponseGkehubV1beta1 {
  /// The current state of the Membership resource.
  final pulumi.Input<String> code;
  /// This field is never set by the Hub Service.
  final pulumi.Input<String> description;
  /// This field is never set by the Hub Service.
  final pulumi.Input<String> updateTime;

  /// Creates a new [MembershipStateResponseGkehubV1beta1].
  /// [code] The current state of the Membership resource.
  /// [description] This field is never set by the Hub Service.
  /// [updateTime] This field is never set by the Hub Service.
  MembershipStateResponseGkehubV1beta1({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
      'updateTime': updateTime,
    };
  }

  factory MembershipStateResponseGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponseGkehubV1beta1(
      code: (map['code'] as String).input(),
      description: (map['description'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

