// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RemoteConfigRemoteConfigVersionUpdateUser {
  /// (Output)
  /// Email address.
  final pulumi.Input<String?>? email;
  /// (Output)
  /// Image URL.
  final pulumi.Input<String?>? imageUrl;
  /// (Output)
  /// Display name.
  final pulumi.Input<String?>? name;

  /// Creates a new [RemoteConfigRemoteConfigVersionUpdateUser].
  /// [email] (Output)
  /// [imageUrl] (Output)
  /// [name] (Output)
  const RemoteConfigRemoteConfigVersionUpdateUser({
    this.email,
    this.imageUrl,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'imageUrl': ?imageUrl,
      'name': ?name,
    };
  }

  factory RemoteConfigRemoteConfigVersionUpdateUser.fromMap(Map<String, dynamic> map) {
    return RemoteConfigRemoteConfigVersionUpdateUser(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUrl: (() { final guardedValue = map['imageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
