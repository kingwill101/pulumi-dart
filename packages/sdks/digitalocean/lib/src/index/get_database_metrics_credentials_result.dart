// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseMetricsCredentials.
class GetDatabaseMetricsCredentialsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The password for accessing database metrics. This is marked as sensitive.
  final String password;
  /// The username for accessing database metrics.
  final String username;

  /// Creates a new [GetDatabaseMetricsCredentialsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [password] The password for accessing database metrics. This is marked as sensitive.
  /// [username] The username for accessing database metrics.
  const GetDatabaseMetricsCredentialsResult({
    required this.id,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'password': password,
      'username': username,
    };
  }

  factory GetDatabaseMetricsCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMetricsCredentialsResult(
      id: map['id'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
