// ignore_for_file: unused_element, unnecessary_cast


class AccountEncryption {
  final String? keySource;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account.
  final String keyVaultKeyId;
  /// The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  final String? userAssignedIdentityId;

  /// Creates a new [AccountEncryption].
  /// [keySource] Optional.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account.
  /// [userAssignedIdentityId] The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  AccountEncryption({
    this.keySource,
    required this.keyVaultKeyId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

