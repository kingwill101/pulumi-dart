// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_notification.dart';
import 'autoscale_setting_predictive.dart';
import 'autoscale_setting_profile.dart';

/// {@template pulumi_monitoring_autoscale_setting_autoscale_setting_args_doc}
/// The set of arguments for AutoscaleSetting.
/// {@endtemplate}
/// {@macro pulumi_monitoring_autoscale_setting_autoscale_setting_args_doc}
class AutoscaleSettingArgs {
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
  final pulumi.Input<List<AutoscaleSettingProfile>> profiles;
  /// The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [AutoscaleSettingArgs].
  /// [enabled] Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created.
  /// [name] The name of the AutoScale Setting. Changing this forces a new resource to be created.
  /// [notification] Specifies a `notification` block as defined below.
  /// [predictive] A `predictive` block as defined below.
  /// [profiles] Specifies one or more (up to 20) `profile` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceId] Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created.
  AutoscaleSettingArgs({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<AutoscaleSettingNotification>? notification,
    pulumi.Output<AutoscaleSettingPredictive>? predictive,
    required pulumi.Output<List<AutoscaleSettingProfile>> profiles,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetResourceId,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notification = pulumi.Input.asOptionalInput<AutoscaleSettingNotification>(notification),
      predictive = pulumi.Input.asOptionalInput<AutoscaleSettingPredictive>(predictive),
      profiles = pulumi.Input.asInput<List<AutoscaleSettingProfile>>(profiles),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'notification': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingNotification, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'predictive': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingPredictive, Map<String, dynamic>>(predictive, (value) => value.toMap()),
      'profiles': pulumi.Input.mapInputValue<List<AutoscaleSettingProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<AutoscaleSettingProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetResourceId': targetResourceId,
    };
  }

  factory AutoscaleSettingArgs.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingArgs(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notification: map['notification'] == null ? null : pulumi.Output.create<AutoscaleSettingNotification>(AutoscaleSettingNotification.fromMap((map['notification'] as Map).cast<String, dynamic>())),
      predictive: map['predictive'] == null ? null : pulumi.Output.create<AutoscaleSettingPredictive>(AutoscaleSettingPredictive.fromMap((map['predictive'] as Map).cast<String, dynamic>())),
      profiles: pulumi.Output.create<List<AutoscaleSettingProfile>>(pulumi.Input.decodeList<AutoscaleSettingProfile>(map['profiles'], (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

