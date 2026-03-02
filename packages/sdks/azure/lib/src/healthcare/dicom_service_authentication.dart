// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomServiceAuthentication {
  /// The intended audience to receive authentication tokens for the service. The default value is <https://dicom.azurehealthcareapis.azure.com>
  final pulumi.Input<List<String>>? audiences;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}.
  final pulumi.Input<String>? authority;

  /// Creates a new [DicomServiceAuthentication].
  /// [audiences] The intended audience to receive authentication tokens for the service. The default value is <https://dicom.azurehealthcareapis.azure.com>
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  DicomServiceAuthentication({
    this.audiences,
    this.authority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'authority': ?authority,
    };
  }

  factory DicomServiceAuthentication.fromMap(Map<String, dynamic> map) {
    return DicomServiceAuthentication(
      audiences: map['audiences'] == null ? null : ((map['audiences'] as List).cast<String>()).input(),
      authority: map['authority'] == null ? null : (map['authority'] as String).input(),
    );
  }
}

