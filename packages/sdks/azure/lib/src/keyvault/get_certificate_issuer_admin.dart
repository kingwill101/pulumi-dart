// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateIssuerAdmin {
  /// E-mail address of the admin.
  final String emailAddress;
  /// First name of the admin.
  final String firstName;
  /// Last name of the admin.
  final String lastName;
  /// Phone number of the admin.
  final String phone;

  /// Creates a new [GetCertificateIssuerAdmin].
  /// [emailAddress] E-mail address of the admin.
  /// [firstName] First name of the admin.
  /// [lastName] Last name of the admin.
  /// [phone] Phone number of the admin.
  GetCertificateIssuerAdmin({
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
    };
  }

  factory GetCertificateIssuerAdmin.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuerAdmin(
      emailAddress: map['emailAddress'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
    );
  }
}

