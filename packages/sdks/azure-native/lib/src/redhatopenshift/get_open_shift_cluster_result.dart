// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apiserver_profile_response.dart';
import 'cluster_profile_response.dart';
import 'console_profile_response.dart';
import 'ingress_profile_response.dart';
import 'master_profile_response.dart';
import 'network_profile_response.dart';
import 'service_principal_profile_response.dart';
import 'system_data_response.dart';
import 'worker_profile_response.dart';

/// Result data returned by getOpenShiftCluster.
class GetOpenShiftClusterResult {
  /// The cluster API server profile.
  final APIServerProfileResponse? apiserverProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The cluster profile.
  final ClusterProfileResponse? clusterProfile;
  /// The console profile.
  final ConsoleProfileResponse? consoleProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The cluster ingress profiles.
  final List<IngressProfileResponse>? ingressProfiles;
  /// The geo-location where the resource lives
  final String location;
  /// The cluster master profile.
  final MasterProfileResponse? masterProfile;
  /// The name of the resource
  final String name;
  /// The cluster network profile.
  final NetworkProfileResponse? networkProfile;
  /// The cluster provisioning state.
  final String? provisioningState;
  /// The cluster service principal profile.
  final ServicePrincipalProfileResponse? servicePrincipalProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The cluster worker profiles.
  final List<WorkerProfileResponse>? workerProfiles;
  /// The cluster worker profiles status.
  final List<WorkerProfileResponse> workerProfilesStatus;

  /// Creates a new [GetOpenShiftClusterResult].
  /// [apiserverProfile] The cluster API server profile.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterProfile] The cluster profile.
  /// [consoleProfile] The console profile.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ingressProfiles] The cluster ingress profiles.
  /// [location] The geo-location where the resource lives
  /// [masterProfile] The cluster master profile.
  /// [name] The name of the resource
  /// [networkProfile] The cluster network profile.
  /// [provisioningState] The cluster provisioning state.
  /// [servicePrincipalProfile] The cluster service principal profile.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workerProfiles] The cluster worker profiles.
  /// [workerProfilesStatus] The cluster worker profiles status.
  const GetOpenShiftClusterResult({
    this.apiserverProfile,
    required this.azureApiVersion,
    this.clusterProfile,
    this.consoleProfile,
    required this.id,
    this.ingressProfiles,
    required this.location,
    this.masterProfile,
    required this.name,
    this.networkProfile,
    this.provisioningState,
    this.servicePrincipalProfile,
    required this.systemData,
    this.tags,
    required this.type,
    this.workerProfiles,
    required this.workerProfilesStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiserverProfile': ?apiserverProfile?.toMap(),
      'azureApiVersion': azureApiVersion,
      'clusterProfile': ?clusterProfile?.toMap(),
      'consoleProfile': ?consoleProfile?.toMap(),
      'id': id,
      'ingressProfiles': ?(() { final guardedValue = ingressProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<IngressProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': location,
      'masterProfile': ?masterProfile?.toMap(),
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'provisioningState': ?provisioningState,
      'servicePrincipalProfile': ?servicePrincipalProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'workerProfiles': ?(() { final guardedValue = workerProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkerProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workerProfilesStatus': pulumi.Input.encodeList<WorkerProfileResponse, Map<String, dynamic>>(workerProfilesStatus, (value) => value.toMap()),
    };
  }

  factory GetOpenShiftClusterResult.fromMap(Map<String, dynamic> map) {
    return GetOpenShiftClusterResult(
      apiserverProfile: (() { final guardedValue = map['apiserverProfile']; if (guardedValue == null) return null; return APIServerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterProfile: (() { final guardedValue = map['clusterProfile']; if (guardedValue == null) return null; return ClusterProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      consoleProfile: (() { final guardedValue = map['consoleProfile']; if (guardedValue == null) return null; return ConsoleProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      ingressProfiles: (() { final guardedValue = map['ingressProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IngressProfileResponse>(guardedValue, (value) => IngressProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: map['location'] as String,
      masterProfile: (() { final guardedValue = map['masterProfile']; if (guardedValue == null) return null; return MasterProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePrincipalProfile: (() { final guardedValue = map['servicePrincipalProfile']; if (guardedValue == null) return null; return ServicePrincipalProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      workerProfiles: (() { final guardedValue = map['workerProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkerProfileResponse>(guardedValue, (value) => WorkerProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      workerProfilesStatus: pulumi.Input.decodeList<WorkerProfileResponse>(map['workerProfilesStatus']!, (value) => WorkerProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
