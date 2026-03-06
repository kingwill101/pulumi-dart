// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listStorageAccountServiceSAS.
class ListStorageAccountServiceSASResult {
  /// List service SAS credentials of specific resource.
  final String serviceSasToken;

  /// Creates a new [ListStorageAccountServiceSASResult].
  /// [serviceSasToken] List service SAS credentials of specific resource.
  const ListStorageAccountServiceSASResult({
    required this.serviceSasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceSasToken': serviceSasToken,
    };
  }

  factory ListStorageAccountServiceSASResult.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountServiceSASResult(
      serviceSasToken: map['serviceSasToken'] as String,
    );
  }
}

