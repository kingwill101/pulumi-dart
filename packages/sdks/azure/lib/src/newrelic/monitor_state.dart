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
    pulumi.Output<String>? accountCreationSource,
    pulumi.Output<String>? accountId,
    pulumi.Output<MonitorIdentity>? identity,
    pulumi.Output<String>? ingestionKey,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgCreationSource,
    pulumi.Output<String>? organizationId,
    pulumi.Output<MonitorPlan>? plan,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<MonitorUser>? user,
    pulumi.Output<String>? userId,
  }) :
      accountCreationSource = pulumi.Input.asOptionalInput<String>(accountCreationSource),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      identity = pulumi.Input.asOptionalInput<MonitorIdentity>(identity),
      ingestionKey = pulumi.Input.asOptionalInput<String>(ingestionKey),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgCreationSource = pulumi.Input.asOptionalInput<String>(orgCreationSource),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      plan = pulumi.Input.asOptionalInput<MonitorPlan>(plan),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      user = pulumi.Input.asOptionalInput<MonitorUser>(user),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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
      'plan': ?pulumi.Input.mapOptionalInputValue<MonitorPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'user': ?pulumi.Input.mapOptionalInputValue<MonitorUser, Map<String, dynamic>>(user, (value) => value.toMap()),
      'userId': ?userId,
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      accountCreationSource: map['accountCreationSource'] == null ? null : pulumi.Output.create<String>(map['accountCreationSource'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<MonitorIdentity>(MonitorIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ingestionKey: map['ingestionKey'] == null ? null : pulumi.Output.create<String>(map['ingestionKey'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgCreationSource: map['orgCreationSource'] == null ? null : pulumi.Output.create<String>(map['orgCreationSource'] as String),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<MonitorPlan>(MonitorPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<MonitorUser>(MonitorUser.fromMap((map['user'] as Map).cast<String, dynamic>())),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

