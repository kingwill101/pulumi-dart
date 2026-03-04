// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_identity.dart';
import 'monitor_plan.dart';
import 'monitor_user.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? accountCreationSource;

  /// Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created.
  ///
  /// &gt; **Note:** The value of `account_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
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
  /// &gt; **Note:** The value of `organization_id` must come from an Azure Native New Relic Monitor instance of another different subscription.
  final pulumi.Input<String>? organizationId;

  /// A `plan` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorPlan>? plan;

  /// Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A `user` block as defined below. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<MonitorUser>? user;

  /// Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created.
  final pulumi.Input<String>? userId;

  /// Creates a new [MonitorState].
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
  MonitorState({
    this.accountCreationSource,
    this.accountId,
    this.identity,
    this.ingestionKey,
    this.location,
    this.name,
    this.orgCreationSource,
    this.organizationId,
    this.plan,
    this.resourceGroupName,
    this.user,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountCreationSource': ?accountCreationSource,
      'accountId': ?accountId,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            MonitorIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'ingestionKey': ?ingestionKey,
      'location': ?location,
      'name': ?name,
      'orgCreationSource': ?orgCreationSource,
      'organizationId': ?organizationId,
      'plan':
          ?pulumi.Input.mapOptionalInputValue<
            MonitorPlan,
            Map<String, dynamic>
          >(plan, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'user':
          ?pulumi.Input.mapOptionalInputValue<
            MonitorUser,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
      'userId': ?userId,
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      accountCreationSource: (() {
        final guardedValue = map['accountCreationSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitorIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ingestionKey: (() {
        final guardedValue = map['ingestionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgCreationSource: (() {
        final guardedValue = map['orgCreationSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: (() {
        final guardedValue = map['organizationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitorPlan.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitorUser.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
