// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_dedicated_ip.dart';
import 'get_app_spec.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The ID the app's currently active deployment.
  final String? activeDeploymentId;
  final String? appId;
  /// The date and time of when the app was created.
  final String? createdAt;
  /// A list of dedicated egress IP addresses associated with the app.
  final List<GetAppDedicatedIp>? dedicatedIps;
  /// The default URL to access the app.
  final String? defaultIngress;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The live domain of the app.
  final String? liveDomain;
  /// The live URL of the app.
  final String? liveUrl;
  /// The ID of the project that the app is assigned to.
  final String? projectId;
  /// A DigitalOcean App spec describing the app.
  final List<GetAppSpec>? specs;
  /// The date and time of when the app was last updated.
  final String? updatedAt;
  /// The uniform resource identifier for the app.
  final String? urn;

  /// Creates a new [GetAppResult].
  /// [activeDeploymentId] The ID the app's currently active deployment.
  /// [appId] Optional.
  /// [createdAt] The date and time of when the app was created.
  /// [dedicatedIps] A list of dedicated egress IP addresses associated with the app.
  /// [defaultIngress] The default URL to access the app.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [liveDomain] The live domain of the app.
  /// [liveUrl] The live URL of the app.
  /// [projectId] The ID of the project that the app is assigned to.
  /// [specs] A DigitalOcean App spec describing the app.
  /// [updatedAt] The date and time of when the app was last updated.
  /// [urn] The uniform resource identifier for the app.
  const GetAppResult({
    this.activeDeploymentId,
    this.appId,
    this.createdAt,
    this.dedicatedIps,
    this.defaultIngress,
    this.id,
    this.liveDomain,
    this.liveUrl,
    this.projectId,
    this.specs,
    this.updatedAt,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeploymentId': ?activeDeploymentId,
      'appId': ?appId,
      'createdAt': ?createdAt,
      'dedicatedIps': ?(() { final guardedValue = dedicatedIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppDedicatedIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultIngress': ?defaultIngress,
      'id': ?id,
      'liveDomain': ?liveDomain,
      'liveUrl': ?liveUrl,
      'projectId': ?projectId,
      'specs': ?(() { final guardedValue = specs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAppSpec, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedAt': ?updatedAt,
      'urn': ?urn,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      activeDeploymentId: (() { final guardedValue = map['activeDeploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedIps: (() { final guardedValue = map['dedicatedIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppDedicatedIp>(guardedValue, (value) => GetAppDedicatedIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultIngress: (() { final guardedValue = map['defaultIngress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      liveDomain: (() { final guardedValue = map['liveDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      liveUrl: (() { final guardedValue = map['liveUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAppSpec>(guardedValue, (value) => GetAppSpec.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
