// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_response.dart';
import 'network_config_response.dart';
import 'volume_config_response.dart';

/// Result data returned by getProvisioningConfig.
class GetProvisioningConfigResult {
  /// URI to Cloud Console UI view of this provisioning config.
  final String? cloudConsoleUri;
  /// Optional. The user-defined identifier of the provisioning config.
  final String? customId;
  /// Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  final String? email;
  /// A service account to enable customers to access instance credentials upon handover.
  final String? handoverServiceAccount;
  /// Instances to be created.
  final List<InstanceConfigResponse>? instances;
  /// Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  final String? location;
  /// The system-generated name of the provisioning config. This follows the UUID format.
  final String? name;
  /// Networks to be created.
  final List<NetworkConfigResponse>? networks;
  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  final String? pod;
  /// State of ProvisioningConfig.
  final String? state;
  /// Optional status messages associated with the FAILED state.
  final String? statusMessage;
  /// A generated ticket id to track provisioning request.
  final String? ticketId;
  /// Last update timestamp.
  final String? updateTime;
  /// Volumes to be created.
  final List<VolumeConfigResponse>? volumes;
  /// If true, VPC SC is enabled for the cluster.
  final bool? vpcScEnabled;

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
  const GetProvisioningConfigResult({
    this.cloudConsoleUri,
    this.customId,
    this.email,
    this.handoverServiceAccount,
    this.instances,
    this.location,
    this.name,
    this.networks,
    this.pod,
    this.state,
    this.statusMessage,
    this.ticketId,
    this.updateTime,
    this.volumes,
    this.vpcScEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudConsoleUri': ?cloudConsoleUri,
      'customId': ?customId,
      'email': ?email,
      'handoverServiceAccount': ?handoverServiceAccount,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pod': ?pod,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'ticketId': ?ticketId,
      'updateTime': ?updateTime,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpcScEnabled': ?vpcScEnabled,
    };
  }

  factory GetProvisioningConfigResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigResult(
      cloudConsoleUri: (() { final guardedValue = map['cloudConsoleUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customId: (() { final guardedValue = map['customId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      handoverServiceAccount: (() { final guardedValue = map['handoverServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigResponse>(guardedValue, (value) => InstanceConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ticketId: (() { final guardedValue = map['ticketId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeConfigResponse>(guardedValue, (value) => VolumeConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpcScEnabled: (() { final guardedValue = map['vpcScEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
