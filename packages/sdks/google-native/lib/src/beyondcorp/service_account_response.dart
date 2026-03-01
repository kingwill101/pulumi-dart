// ignore_for_file: unused_element, unnecessary_cast


/// ServiceAccount represents a GCP service account.
class ServiceAccountResponse {
  /// Email address of the service account.
  final String email;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Email address of the service account.
  ServiceAccountResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: map['email'] as String,
    );
  }
}

