// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_notification.dart';
import 'autoscale_setting_predictive.dart';
import 'autoscale_setting_profile.dart';

/// Input properties used for looking up and filtering AutoscaleSetting resources.
class AutoscaleSettingState {
  /// Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the AutoScale Setting. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies a `notification` block as defined below.
  final pulumi.Input<AutoscaleSettingNotification>? notification;
  /// A `predictive` block as defined below.
  final pulumi.Input<AutoscaleSettingPredictive>? predictive;
  /// Specifies one or more (up to 20) `profile` blocks as defined below.
  final pulumi.Input<List<AutoscaleSettingProfile>>? profiles;
  /// The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [AutoscaleSettingState].
  /// [enabled] Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created.
  /// [name] The name of the AutoScale Setting. Changing this forces a new resource to be created.
  /// [notification] Specifies a `notification` block as defined below.
  /// [predictive] A `predictive` block as defined below.
  /// [profiles] Specifies one or more (up to 20) `profile` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created.
  AutoscaleSettingState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<AutoscaleSettingNotification>? notification,
    pulumi.Output<AutoscaleSettingPredictive>? predictive,
    pulumi.Output<List<AutoscaleSettingProfile>>? profiles,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetResourceId,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notification = pulumi.Input.asOptionalInput<AutoscaleSettingNotification>(notification),
      predictive = pulumi.Input.asOptionalInput<AutoscaleSettingPredictive>(predictive),
      profiles = pulumi.Input.asOptionalInput<List<AutoscaleSettingProfile>>(profiles),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'notification': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingNotification, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'predictive': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingPredictive, Map<String, dynamic>>(predictive, (value) => value.toMap()),
      'profiles': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleSettingProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<AutoscaleSettingProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory AutoscaleSettingState.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notification: map['notification'] == null ? null : pulumi.Output.create<AutoscaleSettingNotification>(AutoscaleSettingNotification.fromMap((map['notification'] as Map).cast<String, dynamic>())),
      predictive: map['predictive'] == null ? null : pulumi.Output.create<AutoscaleSettingPredictive>(AutoscaleSettingPredictive.fromMap((map['predictive'] as Map).cast<String, dynamic>())),
      profiles: map['profiles'] == null ? null : pulumi.Output.create<List<AutoscaleSettingProfile>>(pulumi.Input.decodeList<AutoscaleSettingProfile>(map['profiles'], (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

