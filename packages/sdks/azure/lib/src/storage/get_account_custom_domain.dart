// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountCustomDomain {
  /// Specifies the name of the Storage Account
  final pulumi.Input<String> name;

  /// Creates a new [GetAccountCustomDomain].
  /// [name] Specifies the name of the Storage Account
  const GetAccountCustomDomain({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetAccountCustomDomain.fromMap(Map<String, dynamic> map) {
    return GetAccountCustomDomain(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

