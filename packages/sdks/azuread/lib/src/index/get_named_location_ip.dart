// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNamedLocationIp {
  final pulumi.Input<List<String>> ipRanges;
  final pulumi.Input<bool> trusted;

  /// Creates a new [GetNamedLocationIp].
  /// [ipRanges] Required.
  /// [trusted] Required.
  GetNamedLocationIp({
    required this.ipRanges,
    required this.trusted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRanges': ipRanges,
      'trusted': trusted,
    };
  }

  factory GetNamedLocationIp.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationIp(
      ipRanges: pulumi.Input.fromValue((map['ipRanges'] as List).cast<String>()),
      trusted: pulumi.Input.fromValue(map['trusted'] as bool),
    );
  }
}

