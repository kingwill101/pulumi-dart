// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_feature_spec_gkehub_v1alpha.dart';
import 'common_fleet_default_member_config_spec_gkehub_v1alpha.dart';

/// {@template pulumi_gkehub_v1alpha_feature_gkehub_v1alpha_args_doc}
/// The set of arguments for Feature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_feature_gkehub_v1alpha_args_doc}
class FeatureGkehubV1alphaArgs {
  /// The ID of the feature to create.
  final pulumi.Input<String>? featureId;
  /// Optional. Feature configuration applicable to all memberships of the fleet.
  final pulumi.Input<CommonFleetDefaultMemberConfigSpecGkehubV1alpha>? fleetDefaultMemberConfig;
  /// Labels for this Feature.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final pulumi.Input<Map<String, String>>? membershipSpecs;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  final pulumi.Input<Map<String, String>>? scopeSpecs;
  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  final pulumi.Input<CommonFeatureSpecGkehubV1alpha>? spec;

  /// Creates a new [FeatureGkehubV1alphaArgs].
  /// [featureId] The ID of the feature to create.
  /// [fleetDefaultMemberConfig] Optional. Feature configuration applicable to all memberships of the fleet.
  /// [labels] Labels for this Feature.
  /// [location] Optional.
  /// [membershipSpecs] Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [scopeSpecs] Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  /// [spec] Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  FeatureGkehubV1alphaArgs({
    this.featureId,
    this.fleetDefaultMemberConfig,
    this.labels,
    this.location,
    this.membershipSpecs,
    this.project,
    this.requestId,
    this.scopeSpecs,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureId': ?featureId,
      'fleetDefaultMemberConfig': ?pulumi.Input.mapOptionalInputValue<CommonFleetDefaultMemberConfigSpecGkehubV1alpha, Map<String, dynamic>>(fleetDefaultMemberConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'membershipSpecs': ?membershipSpecs,
      'project': ?project,
      'requestId': ?requestId,
      'scopeSpecs': ?scopeSpecs,
      'spec': ?pulumi.Input.mapOptionalInputValue<CommonFeatureSpecGkehubV1alpha, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory FeatureGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGkehubV1alphaArgs(
      featureId: map['featureId'] == null ? null : (map['featureId']! as String).input(),
      fleetDefaultMemberConfig: map['fleetDefaultMemberConfig'] == null ? null : (CommonFleetDefaultMemberConfigSpecGkehubV1alpha.fromMap((map['fleetDefaultMemberConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      membershipSpecs: map['membershipSpecs'] == null ? null : ((map['membershipSpecs']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      scopeSpecs: map['scopeSpecs'] == null ? null : ((map['scopeSpecs']! as Map).cast<String, String>()).input(),
      spec: map['spec'] == null ? null : (CommonFeatureSpecGkehubV1alpha.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

