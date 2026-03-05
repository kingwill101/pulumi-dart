// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listStorageAccountSAS.
class ListStorageAccountSASResult {
  /// List SAS credentials of storage account.
  final String accountSasToken;

  /// Creates a new [ListStorageAccountSASResult].
  /// [accountSasToken] List SAS credentials of storage account.
  ListStorageAccountSASResult({required this.accountSasToken});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountSasToken': accountSasToken};
  }

  factory ListStorageAccountSASResult.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSASResult(
      accountSasToken: map['accountSasToken'] as String,
    );
  }
}
