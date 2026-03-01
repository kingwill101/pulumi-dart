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
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? streamAnalyticsJobId,
    pulumi.Output<String>? table,
    pulumi.Output<String>? tokenUserDisplayName,
    pulumi.Output<String>? tokenUserPrincipalName,
  }) :
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      streamAnalyticsJobId = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobId),
      table = pulumi.Input.asOptionalInput<String>(table),
      tokenUserDisplayName = pulumi.Input.asOptionalInput<String>(tokenUserDisplayName),
      tokenUserPrincipalName = pulumi.Input.asOptionalInput<String>(tokenUserPrincipalName);

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
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      streamAnalyticsJobId: map['streamAnalyticsJobId'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobId'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
      tokenUserDisplayName: map['tokenUserDisplayName'] == null ? null : pulumi.Output.create<String>(map['tokenUserDisplayName'] as String),
      tokenUserPrincipalName: map['tokenUserPrincipalName'] == null ? null : pulumi.Output.create<String>(map['tokenUserPrincipalName'] as String),
    );
  }
}

