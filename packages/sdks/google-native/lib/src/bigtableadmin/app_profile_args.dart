// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_profile_priority.dart';
import 'multi_cluster_routing_use_any.dart';
import 'single_cluster_routing.dart';
import 'standard_isolation.dart';

/// {@template pulumi_bigtableadmin_v2_app_profile_args_doc}
/// The set of arguments for AppProfile.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_app_profile_args_doc}
class AppProfileArgs {
  /// Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  final pulumi.Input<String> appProfileId;
  /// Long form description of the use case for this AppProfile.
  final pulumi.Input<String>? description;
  /// Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  final pulumi.Input<String>? etag;
  /// If true, ignore safety checks when creating the app profile.
  final pulumi.Input<bool>? ignoreWarnings;
  final pulumi.Input<String> instanceId;
  /// Use a multi-cluster routing policy.
  final pulumi.Input<MultiClusterRoutingUseAny>? multiClusterRoutingUseAny;
  /// The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  final pulumi.Input<String>? name;
  /// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  final pulumi.Input<AppProfilePriority>? priority;
  final pulumi.Input<String>? project;
  /// Use a single-cluster routing policy.
  final pulumi.Input<SingleClusterRouting>? singleClusterRouting;
  /// The standard options used for isolating this app profile's traffic from other use cases.
  final pulumi.Input<StandardIsolation>? standardIsolation;

  /// Creates a new [AppProfileArgs].
  /// [appProfileId] Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather than `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  /// [description] Long form description of the use case for this AppProfile.
  /// [etag] Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  /// [ignoreWarnings] If true, ignore safety checks when creating the app profile.
  /// [instanceId] Required.
  /// [multiClusterRoutingUseAny] Use a multi-cluster routing policy.
  /// [name] The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  /// [priority] This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  /// [project] Optional.
  /// [singleClusterRouting] Use a single-cluster routing policy.
  /// [standardIsolation] The standard options used for isolating this app profile's traffic from other use cases.
  AppProfileArgs({
    required this.appProfileId,
    this.description,
    this.etag,
    this.ignoreWarnings,
    required this.instanceId,
    this.multiClusterRoutingUseAny,
    this.name,
    this.priority,
    this.project,
    this.singleClusterRouting,
    this.standardIsolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProfileId': appProfileId,
      'description': ?description,
      'etag': ?etag,
      'ignoreWarnings': ?ignoreWarnings,
      'instanceId': instanceId,
      'multiClusterRoutingUseAny': ?pulumi.Input.mapOptionalInputValue<MultiClusterRoutingUseAny, Map<String, dynamic>>(multiClusterRoutingUseAny, (value) => value.toMap()),
      'name': ?name,
      'priority': ?pulumi.Input.mapOptionalInputValue<AppProfilePriority, String>(priority, (value) => value.value),
      'project': ?project,
      'singleClusterRouting': ?pulumi.Input.mapOptionalInputValue<SingleClusterRouting, Map<String, dynamic>>(singleClusterRouting, (value) => value.toMap()),
      'standardIsolation': ?pulumi.Input.mapOptionalInputValue<StandardIsolation, Map<String, dynamic>>(standardIsolation, (value) => value.toMap()),
    };
  }

  factory AppProfileArgs.fromMap(Map<String, dynamic> map) {
    return AppProfileArgs(
      appProfileId: (map['appProfileId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      ignoreWarnings: map['ignoreWarnings'] == null ? null : (map['ignoreWarnings']! as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      multiClusterRoutingUseAny: map['multiClusterRoutingUseAny'] == null ? null : (MultiClusterRoutingUseAny.fromMap((map['multiClusterRoutingUseAny']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (AppProfilePriority.fromValue(map['priority']! as String)).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      singleClusterRouting: map['singleClusterRouting'] == null ? null : (SingleClusterRouting.fromMap((map['singleClusterRouting']! as Map).cast<String, dynamic>())).input(),
      standardIsolation: map['standardIsolation'] == null ? null : (StandardIsolation.fromMap((map['standardIsolation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

