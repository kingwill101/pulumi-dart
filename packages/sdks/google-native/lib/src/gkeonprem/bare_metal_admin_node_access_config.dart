// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the node access related settings for the bare metal admin cluster.
class BareMetalAdminNodeAccessConfig {
  /// LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  final pulumi.Input<String> loginUser;

  /// Creates a new [BareMetalAdminNodeAccessConfig].
  /// [loginUser] LoginUser is the user name used to access node machines. It defaults to "root" if not set.
  BareMetalAdminNodeAccessConfig({
    required this.loginUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginUser': loginUser,
    };
  }

  factory BareMetalAdminNodeAccessConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminNodeAccessConfig(
      loginUser: pulumi.Input.fromValue(map['loginUser'] as String),
    );
  }
}

