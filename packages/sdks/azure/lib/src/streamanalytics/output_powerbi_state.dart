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
  const OutputPowerbiState({
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
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobId: (() { final guardedValue = map['streamAnalyticsJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUserDisplayName: (() { final guardedValue = map['tokenUserDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUserPrincipalName: (() { final guardedValue = map['tokenUserPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
