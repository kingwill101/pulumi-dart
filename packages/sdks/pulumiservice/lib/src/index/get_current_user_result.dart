// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCurrentUser.
class GetCurrentUserResult {
  /// URL of the user's avatar image.
  final String avatarUrl;
  /// The user's email address.
  final String email;
  /// The user's display name.
  final String name;
  /// The user's Pulumi Cloud username.
  final String username;

  /// Creates a new [GetCurrentUserResult].
  /// [avatarUrl] URL of the user's avatar image.
  /// [email] The user's email address.
  /// [name] The user's display name.
  /// [username] The user's Pulumi Cloud username.
  const GetCurrentUserResult({
    required this.avatarUrl,
    required this.email,
    required this.name,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatarUrl': avatarUrl,
      'email': email,
      'name': name,
      'username': username,
    };
  }

  factory GetCurrentUserResult.fromMap(Map<String, dynamic> map) {
    return GetCurrentUserResult(
      avatarUrl: map['avatarUrl'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
    );
  }
}
