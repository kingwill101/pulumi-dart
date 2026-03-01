// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Azure Data Lake Store output data source.
class AzureDataLakeStoreOutputDataSource {
  /// The name of the Azure Data Lake Store account. Required on PUT (CreateOrReplace) requests.
  final String? accountName;
  /// Authentication Mode.
  final String? authenticationMode;
  /// The date format. Wherever {date} appears in filePathPrefix, the value of this property is used as the date format instead.
  final String? dateFormat;
  /// The location of the file to which the output should be written to. Required on PUT (CreateOrReplace) requests.
  final String? filePathPrefix;
  /// A refresh token that can be used to obtain a valid access token that can then be used to authenticate with the data source. A valid refresh token is currently only obtainable via the Azure Portal. It is recommended to put a dummy string value here when creating the data source and then going to the Azure Portal to authenticate the data source which will update this property with a valid refresh token. Required on PUT (CreateOrReplace) requests.
  final String? refreshToken;
  /// The tenant id of the user used to obtain the refresh token. Required on PUT (CreateOrReplace) requests.
  final String? tenantId;
  /// The time format. Wherever {time} appears in filePathPrefix, the value of this property is used as the time format instead.
  final String? timeFormat;
  /// The user display name of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final String? tokenUserDisplayName;
  /// The user principal name (UPN) of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final String? tokenUserPrincipalName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.DataLake/Accounts'.
  final String type;

  /// Creates a new [AzureDataLakeStoreOutputDataSource].
  /// [accountName] The name of the Azure Data Lake Store account. Required on PUT (CreateOrReplace) requests.
  /// [authenticationMode] Authentication Mode.
  /// [dateFormat] The date format. Wherever {date} appears in filePathPrefix, the value of this property is used as the date format instead.
  /// [filePathPrefix] The location of the file to which the output should be written to. Required on PUT (CreateOrReplace) requests.
  /// [refreshToken] A refresh token that can be used to obtain a valid access token that can then be used to authenticate with the data source. A valid refresh token is currently only obtainable via the Azure Portal. It is recommended to put a dummy string value here when creating the data source and then going to the Azure Portal to authenticate the data source which will update this property with a valid refresh token. Required on PUT (CreateOrReplace) requests.
  /// [tenantId] The tenant id of the user used to obtain the refresh token. Required on PUT (CreateOrReplace) requests.
  /// [timeFormat] The time format. Wherever {time} appears in filePathPrefix, the value of this property is used as the time format instead.
  /// [tokenUserDisplayName] The user display name of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  /// [tokenUserPrincipalName] The user principal name (UPN) of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  AzureDataLakeStoreOutputDataSource({
    this.accountName,
    this.authenticationMode,
    this.dateFormat,
    this.filePathPrefix,
    this.refreshToken,
    this.tenantId,
    this.timeFormat,
    this.tokenUserDisplayName,
    this.tokenUserPrincipalName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'authenticationMode': ?authenticationMode,
      'dateFormat': ?dateFormat,
      'filePathPrefix': ?filePathPrefix,
      'refreshToken': ?refreshToken,
      'tenantId': ?tenantId,
      'timeFormat': ?timeFormat,
      'tokenUserDisplayName': ?tokenUserDisplayName,
      'tokenUserPrincipalName': ?tokenUserPrincipalName,
      'type': type,
    };
  }

  factory AzureDataLakeStoreOutputDataSource.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreOutputDataSource(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      dateFormat: map['dateFormat'] == null ? null : map['dateFormat'] as String,
      filePathPrefix: map['filePathPrefix'] == null ? null : map['filePathPrefix'] as String,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      timeFormat: map['timeFormat'] == null ? null : map['timeFormat'] as String,
      tokenUserDisplayName: map['tokenUserDisplayName'] == null ? null : map['tokenUserDisplayName'] as String,
      tokenUserPrincipalName: map['tokenUserPrincipalName'] == null ? null : map['tokenUserPrincipalName'] as String,
      type: map['type'] as String,
    );
  }
}

