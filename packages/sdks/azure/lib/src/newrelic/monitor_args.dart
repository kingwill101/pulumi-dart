// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_user.dart';

/// {@template pulumi_newrelic_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_newrelic_monitor_monitor_args_doc}
class MonitorArgs {
  /// Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? accountCreationSource;
  /// Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// > **Note:** The value of `account_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  final pulumi.Input<String>? accountId;
  /// An `identity` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorIdentity>? identity;
  /// Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? ingestionKey;
  /// Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? name;
  /// Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? orgCreationSource;
  /// Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// > **Note:** The value of `organization_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  final pulumi.Input<String>? organizationId;
  /// A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorPlan> plan;
  /// Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorUser> user;
  /// Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [MonitorArgs].
  /// [accountCreationSource] Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [accountId] Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [ingestionKey] Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [location] Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [name] Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [orgCreationSource] Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [organizationId] Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [plan] A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [user] A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [userId] Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  MonitorArgs({
    this.accountCreationSource,
    this.accountId,
    this.identity,
    this.ingestionKey,
    this.location,
    this.name,
    this.orgCreationSource,
    this.organizationId,
    required this.plan,
    required this.resourceGroupName,
    required this.user,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreationSource': ?accountCreationSource,
      'accountId': ?accountId,
      'identity': ?pulumi.Input.mapOptionalInputValue<MonitorIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingestionKey': ?ingestionKey,
      'location': ?location,
      'name': ?name,
      'orgCreationSource': ?orgCreationSource,
      'organizationId': ?organizationId,
      'plan': pulumi.Input.mapInputValue<MonitorPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'user': pulumi.Input.mapInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
      'userId': ?userId,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      accountCreationSource: map['accountCreationSource'] == null ? null : (map['accountCreationSource']! as String).input(),
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      identity: map['identity'] == null ? null : (MonitorIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      ingestionKey: map['ingestionKey'] == null ? null : (map['ingestionKey']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgCreationSource: map['orgCreationSource'] == null ? null : (map['orgCreationSource']! as String).input(),
      organizationId: map['organizationId'] == null ? null : (map['organizationId']! as String).input(),
      plan: (MonitorPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      user: (MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

