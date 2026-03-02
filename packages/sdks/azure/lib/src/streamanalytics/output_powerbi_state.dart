// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputPowerbi resources.
class OutputPowerbiState {
  /// The name of the Power BI dataset.
  final pulumi.Input<String>? dataset;
  /// The ID of the Power BI group, this must be a valid UUID.
  final pulumi.Input<String>? groupId;
  /// The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
  final pulumi.Input<String>? groupName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobId;
  /// The name of the Power BI table under the specified dataset.
  final pulumi.Input<String>? table;
  /// The user display name of the user that was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserDisplayName;
  /// The user principal name (UPN) of the user that was used to obtain the refresh token.
  final pulumi.Input<String>? tokenUserPrincipalName;

  /// Creates a new [OutputPowerbiState].
  /// [dataset] The name of the Power BI dataset.
  /// [groupId] The ID of the Power BI group, this must be a valid UUID.
  /// [groupName] The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the Power BI table under the specified dataset.
  /// [tokenUserDisplayName] The user display name of the user that was used to obtain the refresh token.
  /// [tokenUserPrincipalName] The user principal name (UPN) of the user that was used to obtain the refresh token.
  OutputPowerbiState({
    this.dataset,
    this.groupId,
    this.groupName,
    this.name,
    this.streamAnalyticsJobId,
    this.table,
    this.tokenUserDisplayName,
    this.tokenUserPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'name': ?name,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
      'table': ?table,
      'tokenUserDisplayName': ?tokenUserDisplayName,
      'tokenUserPrincipalName': ?tokenUserPrincipalName,
    };
  }

  factory OutputPowerbiState.fromMap(Map<String, dynamic> map) {
    return OutputPowerbiState(
      dataset: map['dataset'] == null ? null : (map['dataset']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : (map['streamAnalyticsJobId']! as String).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
      tokenUserDisplayName: map['tokenUserDisplayName'] == null ? null : (map['tokenUserDisplayName']! as String).input(),
      tokenUserPrincipalName: map['tokenUserPrincipalName'] == null ? null : (map['tokenUserPrincipalName']! as String).input(),
    );
  }
}

