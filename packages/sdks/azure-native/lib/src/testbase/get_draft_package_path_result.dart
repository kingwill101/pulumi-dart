// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDraftPackagePath.
class GetDraftPackagePathResult {
  /// The base URL of the storage account.
  final String baseUrl;
  /// The relative path of the folder hosting package files.
  final String draftPackagePath;
  /// Expiry date of the SAS token.
  final String expirationTime;
  /// A SAS token for the storage account to access workspace.
  final String sasToken;
  /// The relative path for a temporary folder for package creation work.
  final String workingPath;

  /// Creates a new [GetDraftPackagePathResult].
  /// [baseUrl] The base URL of the storage account.
  /// [draftPackagePath] The relative path of the folder hosting package files.
  /// [expirationTime] Expiry date of the SAS token.
  /// [sasToken] A SAS token for the storage account to access workspace.
  /// [workingPath] The relative path for a temporary folder for package creation work.
  const GetDraftPackagePathResult({
    required this.baseUrl,
    required this.draftPackagePath,
    required this.expirationTime,
    required this.sasToken,
    required this.workingPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'draftPackagePath': draftPackagePath,
      'expirationTime': expirationTime,
      'sasToken': sasToken,
      'workingPath': workingPath,
    };
  }

  factory GetDraftPackagePathResult.fromMap(Map<String, dynamic> map) {
    return GetDraftPackagePathResult(
      baseUrl: map['baseUrl'] as String,
      draftPackagePath: map['draftPackagePath'] as String,
      expirationTime: map['expirationTime'] as String,
      sasToken: map['sasToken'] as String,
      workingPath: map['workingPath'] as String,
    );
  }
}
