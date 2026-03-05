// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSignIn {
  /// Should anonymous users be redirected to the sign in page?
  final pulumi.Input<bool> enabled;

  /// Creates a new [ServiceSignIn].
  /// [enabled] Should anonymous users be redirected to the sign in page?
  ServiceSignIn({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ServiceSignIn.fromMap(Map<String, dynamic> map) {
    return ServiceSignIn(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

