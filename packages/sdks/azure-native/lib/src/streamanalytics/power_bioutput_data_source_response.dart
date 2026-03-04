// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Power BI output data source.
class PowerBIOutputDataSourceResponse {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;

  /// The name of the Power BI dataset. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? dataset;

  /// The ID of the Power BI group.
  final pulumi.Input<String>? groupId;

  /// The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
  final pulumi.Input<String>? groupName;

  /// A refresh token that can be used to obtain a valid access token that can then be used to authenticate with the data source. A valid refresh token is currently only obtainable via the Azure Portal. It is recommended to put a dummy string value here when creating the data source and then going to the Azure Portal to authenticate the data source which will update this property with a valid refresh token. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? refreshToken;

  /// The name of the Power BI table under the specified dataset. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? table;

  /// The user display name of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserDisplayName;

  /// The user principal name (UPN) of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserPrincipalName;

  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'PowerBI'.
  final pulumi.Input<String> type;

  /// Creates a new [PowerBIOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [dataset] The name of the Power BI dataset. Required on PUT (CreateOrReplace) requests.
  /// [groupId] The ID of the Power BI group.
  /// [groupName] The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
  /// [refreshToken] A refresh token that can be used to obtain a valid access token that can then be used to authenticate with the data source. A valid refresh token is currently only obtainable via the Azure Portal. It is recommended to put a dummy string value here when creating the data source and then going to the Azure Portal to authenticate the data source which will update this property with a valid refresh token. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the Power BI table under the specified dataset. Required on PUT (CreateOrReplace) requests.
  /// [tokenUserDisplayName] The user display name of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  /// [tokenUserPrincipalName] The user principal name (UPN) of the user that was used to obtain the refresh token. Use this property to help remember which user was used to obtain the refresh token.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  PowerBIOutputDataSourceResponse({
    this.authenticationMode,
    this.dataset,
    this.groupId,
    this.groupName,
    this.refreshToken,
    this.table,
    this.tokenUserDisplayName,
    this.tokenUserPrincipalName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'dataset': ?dataset,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'refreshToken': ?refreshToken,
      'table': ?table,
      'tokenUserDisplayName': ?tokenUserDisplayName,
      'tokenUserPrincipalName': ?tokenUserPrincipalName,
      'type': type,
    };
  }

  factory PowerBIOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return PowerBIOutputDataSourceResponse(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      table: (() {
        final guardedValue = map['table'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tokenUserDisplayName: (() {
        final guardedValue = map['tokenUserDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tokenUserPrincipalName: (() {
        final guardedValue = map['tokenUserPrincipalName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
