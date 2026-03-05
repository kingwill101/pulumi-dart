// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_response.dart';
import 'network_config_response.dart';
import 'volume_config_response.dart';

/// Result data returned by getProvisioningConfig.
class GetProvisioningConfigResult {
  /// URI to Cloud Console UI view of this provisioning config.
  final String cloudConsoleUri;
  /// Optional. The user-defined identifier of the provisioning config.
  final String customId;
  /// Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  final String email;
  /// A service account to enable customers to access instance credentials upon handover.
  final String handoverServiceAccount;
  /// Instances to be created.
  final List<InstanceConfigResponse> instances;
  /// Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  final String location;
  /// The system-generated name of the provisioning config. This follows the UUID format.
  final String name;
  /// Networks to be created.
  final List<NetworkConfigResponse> networks;
  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  final String pod;
  /// State of ProvisioningConfig.
  final String state;
  /// Optional status messages associated with the FAILED state.
  final String statusMessage;
  /// A generated ticket id to track provisioning request.
  final String ticketId;
  /// Last update timestamp.
  final String updateTime;
  /// Volumes to be created.
  final List<VolumeConfigResponse> volumes;
  /// If true, VPC SC is enabled for the cluster.
  final bool vpcScEnabled;

  /// Creates a new [GetProvisioningConfigResult].
  /// [cloudConsoleUri] URI to Cloud Console UI view of this provisioning config.
  /// [customId] Optional. The user-defined identifier of the provisioning config.
  /// [email] Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  /// [handoverServiceAccount] A service account to enable customers to access instance credentials upon handover.
  /// [instances] Instances to be created.
  /// [location] Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  /// [name] The system-generated name of the provisioning config. This follows the UUID format.
  /// [networks] Networks to be created.
  /// [pod] Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  /// [state] State of ProvisioningConfig.
  /// [statusMessage] Optional status messages associated with the FAILED state.
  /// [ticketId] A generated ticket id to track provisioning request.
  /// [updateTime] Last update timestamp.
  /// [volumes] Volumes to be created.
  /// [vpcScEnabled] If true, VPC SC is enabled for the cluster.
  GetProvisioningConfigResult({
    required this.cloudConsoleUri,
    required this.customId,
    required this.email,
    required this.handoverServiceAccount,
    required this.instances,
    required this.location,
    required this.name,
    required this.networks,
    required this.pod,
    required this.state,
    required this.statusMessage,
    required this.ticketId,
    required this.updateTime,
    required this.volumes,
    required this.vpcScEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConsoleUri': cloudConsoleUri,
      'customId': customId,
      'email': email,
      'handoverServiceAccount': handoverServiceAccount,
      'instances': pulumi.Input.encodeList<InstanceConfigResponse, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'location': location,
      'name': name,
      'networks': pulumi.Input.encodeList<NetworkConfigResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'pod': pod,
      'state': state,
      'statusMessage': statusMessage,
      'ticketId': ticketId,
      'updateTime': updateTime,
      'volumes': pulumi.Input.encodeList<VolumeConfigResponse, Map<String, dynamic>>(volumes, (value) => value.toMap()),
      'vpcScEnabled': vpcScEnabled,
    };
  }

  factory GetProvisioningConfigResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigResult(
      cloudConsoleUri: map['cloudConsoleUri'] as String,
      customId: map['customId'] as String,
      email: map['email'] as String,
      handoverServiceAccount: map['handoverServiceAccount'] as String,
      instances: pulumi.Input.decodeList<InstanceConfigResponse>(map['instances']!, (value) => InstanceConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<NetworkConfigResponse>(map['networks']!, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      pod: map['pod'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      ticketId: map['ticketId'] as String,
      updateTime: map['updateTime'] as String,
      volumes: pulumi.Input.decodeList<VolumeConfigResponse>(map['volumes']!, (value) => VolumeConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpcScEnabled: map['vpcScEnabled'] as bool,
    );
  }
}

