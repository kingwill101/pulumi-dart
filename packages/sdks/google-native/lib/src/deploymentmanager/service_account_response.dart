// ignore_for_file: unused_element, unnecessary_cast


/// Service Account used as a credential.
class ServiceAccountResponse {
  /// The IAM service account email address like test@myproject.iam.gserviceaccount.com
  final String email;

  /// Creates a new [ServiceAccountResponse].
  /// [email] The IAM service account email address like test@myproject.iam.gserviceaccount.com
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

