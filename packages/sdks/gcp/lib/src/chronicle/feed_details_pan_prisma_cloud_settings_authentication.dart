// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsPanPrismaCloudSettingsAuthentication {
  /// Password. Used for username and password authentication.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Username. This is unused: Workday feeds were originally configured using a
  /// username and secret authentication method, but only the secret field was
  /// used, and it was used to supply the OAuth access token.
  final pulumi.Input<String>? user;

  /// Creates a new [FeedDetailsPanPrismaCloudSettingsAuthentication].
  /// [password] Password. Used for username and password authentication.
  /// [user] Username. This is unused: Workday feeds were originally configured using a
  const FeedDetailsPanPrismaCloudSettingsAuthentication({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory FeedDetailsPanPrismaCloudSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsPanPrismaCloudSettingsAuthentication(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
