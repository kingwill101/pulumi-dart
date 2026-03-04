// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolUserAccountWindowsUserConfiguration {
  /// Specifies login mode for the user.
  final pulumi.Input<String> loginMode;

  /// Creates a new [GetPoolUserAccountWindowsUserConfiguration].
  /// [loginMode] Specifies login mode for the user.
  GetPoolUserAccountWindowsUserConfiguration({required this.loginMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'loginMode': loginMode};
  }

  factory GetPoolUserAccountWindowsUserConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPoolUserAccountWindowsUserConfiguration(
      loginMode: pulumi.Input.fromValue(map['loginMode'] as String),
    );
  }
}
