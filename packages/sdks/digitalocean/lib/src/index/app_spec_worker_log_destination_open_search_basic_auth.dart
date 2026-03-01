// ignore_for_file: unused_element, unnecessary_cast


class AppSpecWorkerLogDestinationOpenSearchBasicAuth {
  /// Password for basic authentication.
  final String? password;
  /// user for basic authentication.
  final String? user;

  /// Creates a new [AppSpecWorkerLogDestinationOpenSearchBasicAuth].
  /// [password] Password for basic authentication.
  /// [user] user for basic authentication.
  AppSpecWorkerLogDestinationOpenSearchBasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory AppSpecWorkerLogDestinationOpenSearchBasicAuth.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestinationOpenSearchBasicAuth(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

