// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dedicated_ip.dart';
import 'app_spec.dart';

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// The ID the app's currently active deployment.
  final pulumi.Input<String>? activeDeploymentId;
  /// The uniform resource identifier for the app.
  final pulumi.Input<String>? appUrn;
  /// The date and time of when the app was created.
  final pulumi.Input<String>? createdAt;
  /// The dedicated egress IP addresses associated with the app.
  final pulumi.Input<List<AppDedicatedIp>>? dedicatedIps;
  /// The default URL to access the app.
  final pulumi.Input<String>? defaultIngress;
  /// (Optional) Controls how many deployments are requested per API page when listing deployments during create/update waits. Defaults to `20`. Reduce this value (for example `5`) if you experience API timeouts when listing deployments.
  final pulumi.Input<int>? deploymentPerPage;
  /// The live domain of the app.
  final pulumi.Input<String>? liveDomain;
  /// The live URL of the app.
  final pulumi.Input<String>? liveUrl;
  /// The ID of the project that the app is assigned to.
  ///
  /// A spec can contain multiple components.
  ///
  /// A `service` can contain:
  final pulumi.Input<String>? projectId;
  /// A DigitalOcean App spec describing the app.
  final pulumi.Input<AppSpec>? spec;
  /// The date and time of when the app was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [AppState].
  /// [activeDeploymentId] The ID the app's currently active deployment.
  /// [appUrn] The uniform resource identifier for the app.
  /// [createdAt] The date and time of when the app was created.
  /// [dedicatedIps] The dedicated egress IP addresses associated with the app.
  /// [defaultIngress] The default URL to access the app.
  /// [deploymentPerPage] (Optional) Controls how many deployments are requested per API page when listing deployments during create/update waits. Defaults to `20`. Reduce this value (for example `5`) if you experience API timeouts when listing deployments.
  /// [liveDomain] The live domain of the app.
  /// [liveUrl] The live URL of the app.
  /// [projectId] The ID of the project that the app is assigned to.
  /// [spec] A DigitalOcean App spec describing the app.
  /// [updatedAt] The date and time of when the app was last updated.
  AppState({
    pulumi.Output<String>? activeDeploymentId,
    pulumi.Output<String>? appUrn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<AppDedicatedIp>>? dedicatedIps,
    pulumi.Output<String>? defaultIngress,
    pulumi.Output<int>? deploymentPerPage,
    pulumi.Output<String>? liveDomain,
    pulumi.Output<String>? liveUrl,
    pulumi.Output<String>? projectId,
    pulumi.Output<AppSpec>? spec,
    pulumi.Output<String>? updatedAt,
  }) :
      activeDeploymentId = pulumi.Input.asOptionalInput<String>(activeDeploymentId),
      appUrn = pulumi.Input.asOptionalInput<String>(appUrn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dedicatedIps = pulumi.Input.asOptionalInput<List<AppDedicatedIp>>(dedicatedIps),
      defaultIngress = pulumi.Input.asOptionalInput<String>(defaultIngress),
      deploymentPerPage = pulumi.Input.asOptionalInput<int>(deploymentPerPage),
      liveDomain = pulumi.Input.asOptionalInput<String>(liveDomain),
      liveUrl = pulumi.Input.asOptionalInput<String>(liveUrl),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      spec = pulumi.Input.asOptionalInput<AppSpec>(spec),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeploymentId': ?activeDeploymentId,
      'appUrn': ?appUrn,
      'createdAt': ?createdAt,
      'dedicatedIps': ?pulumi.Input.mapOptionalInputValue<List<AppDedicatedIp>, List<Map<String, dynamic>>>(dedicatedIps, (value) => pulumi.Input.encodeList<AppDedicatedIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultIngress': ?defaultIngress,
      'deploymentPerPage': ?deploymentPerPage,
      'liveDomain': ?liveDomain,
      'liveUrl': ?liveUrl,
      'projectId': ?projectId,
      'spec': ?pulumi.Input.mapOptionalInputValue<AppSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      activeDeploymentId: map['activeDeploymentId'] == null ? null : pulumi.Output.create<String>(map['activeDeploymentId'] as String),
      appUrn: map['appUrn'] == null ? null : pulumi.Output.create<String>(map['appUrn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dedicatedIps: map['dedicatedIps'] == null ? null : pulumi.Output.create<List<AppDedicatedIp>>(pulumi.Input.decodeList<AppDedicatedIp>(map['dedicatedIps'], (value) => AppDedicatedIp.fromMap((value as Map).cast<String, dynamic>()))),
      defaultIngress: map['defaultIngress'] == null ? null : pulumi.Output.create<String>(map['defaultIngress'] as String),
      deploymentPerPage: map['deploymentPerPage'] == null ? null : pulumi.Output.create<int>(map['deploymentPerPage'] as int),
      liveDomain: map['liveDomain'] == null ? null : pulumi.Output.create<String>(map['liveDomain'] as String),
      liveUrl: map['liveUrl'] == null ? null : pulumi.Output.create<String>(map['liveUrl'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<AppSpec>(AppSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

