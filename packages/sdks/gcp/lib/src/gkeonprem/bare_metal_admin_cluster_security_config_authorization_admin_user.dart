// ignore_for_file: unused_element, unnecessary_cast


class BareMetalAdminClusterSecurityConfigAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [BareMetalAdminClusterSecurityConfigAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  BareMetalAdminClusterSecurityConfigAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory BareMetalAdminClusterSecurityConfigAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterSecurityConfigAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}

