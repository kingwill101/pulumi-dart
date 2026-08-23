// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterNodeAccessConfig {
  /// LoginUser is the user name used to access node machines.
  /// It defaults to "root" if not set.
  final pulumi.Input<String>? loginUser;

  /// Creates a new [BareMetalClusterNodeAccessConfig].
  /// [loginUser] LoginUser is the user name used to access node machines.
  const BareMetalClusterNodeAccessConfig({
    this.loginUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUser': ?loginUser,
    };
  }

  factory BareMetalClusterNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNodeAccessConfig(
      loginUser: (() { final guardedValue = map['loginUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
