// ignore_for_file: unused_element, unnecessary_cast


/// The properties that are associated with an Azure Storage account with MSI
class JobStorageAccountResponse {
  /// The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountKey;
  /// The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountName;
  /// Authentication Mode.
  final String? authenticationMode;

  /// Creates a new [JobStorageAccountResponse].
  /// [accountKey] The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [accountName] The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [authenticationMode] Authentication Mode.
  JobStorageAccountResponse({
    this.accountKey,
    this.accountName,
    this.authenticationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
      'authenticationMode': ?authenticationMode,
    };
  }

  factory JobStorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return JobStorageAccountResponse(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
    );
  }
}

