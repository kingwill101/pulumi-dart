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
    this.activeDeploymentId,
    this.appUrn,
    this.createdAt,
    this.dedicatedIps,
    this.defaultIngress,
    this.deploymentPerPage,
    this.liveDomain,
    this.liveUrl,
    this.projectId,
    this.spec,
    this.updatedAt,
  });

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
      activeDeploymentId: (() { final guardedValue = map['activeDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appUrn: (() { final guardedValue = map['appUrn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedIps: (() { final guardedValue = map['dedicatedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppDedicatedIp>(guardedValue, (value) => AppDedicatedIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultIngress: (() { final guardedValue = map['defaultIngress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentPerPage: (() { final guardedValue = map['deploymentPerPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      liveDomain: (() { final guardedValue = map['liveDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      liveUrl: (() { final guardedValue = map['liveUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

