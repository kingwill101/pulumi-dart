// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDicomServiceAuthentication {
  /// The intended audience to receive authentication tokens for the service. The default value is &lt;https://dicom.azurehealthcareapis.azure.com&gt;
  final pulumi.Input<List<String>> audiences;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// Authority must be registered to Azure AD and in the following format: &lt;https://{Azure-AD-endpoint}/{tenant-id&gt;}.
  final pulumi.Input<String> authority;

  /// Creates a new [GetDicomServiceAuthentication].
  /// [audiences] The intended audience to receive authentication tokens for the service. The default value is &lt;https://dicom.azurehealthcareapis.azure.com&gt;
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  const GetDicomServiceAuthentication({
    required this.audiences,
    required this.authority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'authority': authority,
    };
  }

  factory GetDicomServiceAuthentication.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceAuthentication(
      audiences: pulumi.Input.fromValue((map['audiences'] as List).cast<String>()),
      authority: pulumi.Input.fromValue(map['authority'] as String),
    );
  }
}

