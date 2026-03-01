// ignore_for_file: unused_element, unnecessary_cast


/// CS Accounts Details.
class RunAsAccountResponse {
  /// The CS RunAs account Id.
  final String? accountId;
  /// The CS RunAs account name.
  final String? accountName;

  /// Creates a new [RunAsAccountResponse].
  /// [accountId] The CS RunAs account Id.
  /// [accountName] The CS RunAs account name.
  RunAsAccountResponse({
    this.accountId,
    this.accountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
    };
  }

  factory RunAsAccountResponse.fromMap(Map<String, dynamic> map) {
    return RunAsAccountResponse(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
    );
  }
}

