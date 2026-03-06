// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Azure Data Lake Store output data source.
class AzureDataLakeStoreOutputDataSourceResponse {
  /// The name of the Azure Data Lake Store account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountName;
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;
  /// The date format. Wherever {date} appears in filePathPrefix, the value of this property is used as the date format instead.
  final pulumi.Input<String>? dateFormat;
  /// The location of the file to which the output should be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? filePathPrefix;
  /// A refresh token that can be used to obtain a valid access token that can then be used to authenticate with the data source. A valid refresh token is currently only obtainable via the Azure Portal. It is recommended to put a dummy string value here when creating the data source and then going to the Azure Portal to authenticate the data source which will update this property with a valid refresh token. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? refreshToken;
  /// The tenant id of the user used to obtain the refresh token. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? tenantId;
  /// The time format. Wherever {time} appears in filePathPrefix, the value of this property is used as the time format instead.
  final pulumi.Input<String>? timeFormat;
  /// The user display name of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserDisplayName;
  /// The user principal name (UPN) of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserPrincipalName;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.DataLake/Accounts'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDataLakeStoreOutputDataSourceResponse].
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
  const AzureDataLakeStoreOutputDataSourceResponse({
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

  factory AzureDataLakeStoreOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreOutputDataSourceResponse(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateFormat: (() { final guardedValue = map['dateFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePathPrefix: (() { final guardedValue = map['filePathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeFormat: (() { final guardedValue = map['timeFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUserDisplayName: (() { final guardedValue = map['tokenUserDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUserPrincipalName: (() { final guardedValue = map['tokenUserPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

