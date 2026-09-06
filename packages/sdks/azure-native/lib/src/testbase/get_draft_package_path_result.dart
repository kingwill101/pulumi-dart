// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDraftPackagePath.
class GetDraftPackagePathResult {
  /// The base URL of the storage account.
  final String? baseUrl;
  /// The relative path of the folder hosting package files.
  final String? draftPackagePath;
  /// Expiry date of the SAS token.
  final String? expirationTime;
  /// A SAS token for the storage account to access workspace.
  final String? sasToken;
  /// The relative path for a temporary folder for package creation work.
  final String? workingPath;

  /// Creates a new [GetDraftPackagePathResult].
  /// [baseUrl] The base URL of the storage account.
  /// [draftPackagePath] The relative path of the folder hosting package files.
  /// [expirationTime] Expiry date of the SAS token.
  /// [sasToken] A SAS token for the storage account to access workspace.
  /// [workingPath] The relative path for a temporary folder for package creation work.
  const GetDraftPackagePathResult({
    this.baseUrl,
    this.draftPackagePath,
    this.expirationTime,
    this.sasToken,
    this.workingPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': ?baseUrl,
      'draftPackagePath': ?draftPackagePath,
      'expirationTime': ?expirationTime,
      'sasToken': ?sasToken,
      'workingPath': ?workingPath,
    };
  }

  factory GetDraftPackagePathResult.fromMap(Map<String, dynamic> map) {
    return GetDraftPackagePathResult(
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      draftPackagePath: (() { final guardedValue = map['draftPackagePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workingPath: (() { final guardedValue = map['workingPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
