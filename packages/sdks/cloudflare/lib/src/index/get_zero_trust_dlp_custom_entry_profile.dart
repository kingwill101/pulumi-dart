// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpCustomEntryProfile {
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustDlpCustomEntryProfile].
  /// [id] Required.
  /// [name] Required.
  const GetZeroTrustDlpCustomEntryProfile({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustDlpCustomEntryProfile.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomEntryProfile(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
