// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterSecurityConfigAuthorizationAdminUser {
  /// The name of the user, e.g. `my-gcp-id@gmail.com`.
  final String username;

  /// Creates a new [BareMetalClusterSecurityConfigAuthorizationAdminUser].
  /// [username] The name of the user, e.g. `my-gcp-id@gmail.com`.
  BareMetalClusterSecurityConfigAuthorizationAdminUser({
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory BareMetalClusterSecurityConfigAuthorizationAdminUser.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterSecurityConfigAuthorizationAdminUser(
      username: map['username'] as String,
    );
  }
}

