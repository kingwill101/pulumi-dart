// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config.dart';
import 'network_config.dart';
import 'volume_config.dart';

/// {@template pulumi_baremetalsolution_v2_provisioning_config_args_doc}
/// The set of arguments for ProvisioningConfig.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_provisioning_config_args_doc}
class ProvisioningConfigArgs {
  /// Optional. The user-defined identifier of the provisioning config.
  final pulumi.Input<String>? customId;
  /// Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  final pulumi.Input<String>? email;
  /// A service account to enable customers to access instance credentials upon handover.
  final pulumi.Input<String>? handoverServiceAccount;
  /// Instances to be created.
  final pulumi.Input<List<InstanceConfig>>? instances;
  /// Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  final pulumi.Input<String>? location;
  /// Networks to be created.
  final pulumi.Input<List<NetworkConfig>>? networks;
  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  final pulumi.Input<String>? pod;
  final pulumi.Input<String>? project;
  /// Optional status messages associated with the FAILED state.
  final pulumi.Input<String>? statusMessage;
  /// A generated ticket id to track provisioning request.
  final pulumi.Input<String>? ticketId;
  /// Volumes to be created.
  final pulumi.Input<List<VolumeConfig>>? volumes;
  /// If true, VPC SC is enabled for the cluster.
  final pulumi.Input<bool>? vpcScEnabled;

  /// Creates a new [ProvisioningConfigArgs].
  /// [customId] Optional. The user-defined identifier of the provisioning config.
  /// [email] Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  /// [handoverServiceAccount] A service account to enable customers to access instance credentials upon handover.
  /// [instances] Instances to be created.
  /// [location] Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  /// [networks] Networks to be created.
  /// [pod] Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  /// [project] Optional.
  /// [statusMessage] Optional status messages associated with the FAILED state.
  /// [ticketId] A generated ticket id to track provisioning request.
  /// [volumes] Volumes to be created.
  /// [vpcScEnabled] If true, VPC SC is enabled for the cluster.
  const ProvisioningConfigArgs({
    this.customId,
    this.email,
    this.handoverServiceAccount,
    this.instances,
    this.location,
    this.networks,
    this.pod,
    this.project,
    this.statusMessage,
    this.ticketId,
    this.volumes,
    this.vpcScEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customId': ?customId,
      'email': ?email,
      'handoverServiceAccount': ?handoverServiceAccount,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfig>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<InstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<NetworkConfig>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<NetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pod': ?pod,
      'project': ?project,
      'statusMessage': ?statusMessage,
      'ticketId': ?ticketId,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeConfig>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcScEnabled': ?vpcScEnabled,
    };
  }

  factory ProvisioningConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningConfigArgs(
      customId: (() { final guardedValue = map['customId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handoverServiceAccount: (() { final guardedValue = map['handoverServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfig>(guardedValue, (value) => InstanceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkConfig>(guardedValue, (value) => NetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticketId: (() { final guardedValue = map['ticketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeConfig>(guardedValue, (value) => VolumeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcScEnabled: (() { final guardedValue = map['vpcScEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

