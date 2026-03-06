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
  const AutoscaleSettingState({
    this.enabled,
    this.location,
    this.name,
    this.notification,
    this.predictive,
    this.profiles,
    this.resourceGroupName,
    this.tags,
    this.targetResourceId,
  });

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notification: (() { final guardedValue = map['notification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleSettingNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predictive: (() { final guardedValue = map['predictive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleSettingPredictive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleSettingProfile>(guardedValue, (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

