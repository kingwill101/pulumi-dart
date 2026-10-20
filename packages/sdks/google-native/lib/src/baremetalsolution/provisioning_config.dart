import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_response.dart';
import 'network_config_response.dart';
import 'provisioning_config_args.dart';
import 'volume_config_response.dart';

/// Create new ProvisioningConfig.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ProvisioningConfig extends pulumi.CustomResource {
  /// URI to Cloud Console UI view of this provisioning config.
  late final pulumi.Output<String> cloudConsoleUri;
  /// Optional. The user-defined identifier of the provisioning config.
  late final pulumi.Output<String> customId;
  /// Optional. Email provided to send a confirmation with provisioning config to.
  late final pulumi.Output<String> email;
  /// A service account to enable customers to access instance credentials upon handover.
  late final pulumi.Output<String> handoverServiceAccount;
  /// Instances to be created.
  late final pulumi.Output<List<InstanceConfigResponse>> instances;
  late final pulumi.Output<String> location;
  /// The system-generated name of the provisioning config. This follows the UUID format.
  late final pulumi.Output<String> name;
  /// Networks to be created.
  late final pulumi.Output<List<NetworkConfigResponse>> networks;
  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  late final pulumi.Output<String> pod;
  late final pulumi.Output<String> project;
  /// State of ProvisioningConfig.
  late final pulumi.Output<String> state;
  /// Optional status messages associated with the FAILED state.
  late final pulumi.Output<String> statusMessage;
  /// A generated ticket id to track provisioning request.
  late final pulumi.Output<String> ticketId;
  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;
  /// Volumes to be created.
  late final pulumi.Output<List<VolumeConfigResponse>> volumes;
  /// If true, VPC SC is enabled for the cluster.
  late final pulumi.Output<bool> vpcScEnabled;

  /// Creates a new [ProvisioningConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisioningConfig]. {@macro pulumi_baremetalsolution_v2_provisioning_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisioningConfig(
    String name, {
    ProvisioningConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:baremetalsolution/v2:ProvisioningConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    cloudConsoleUri = registerOutput<String>('cloudConsoleUri');
    customId = registerOutput<String>('customId');
    email = registerOutput<String>('email');
    handoverServiceAccount = registerOutput<String>('handoverServiceAccount');
    instances = registerOutput<List<InstanceConfigResponse>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigResponse>(guardedValue, (value) => InstanceConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<NetworkConfigResponse>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    pod = registerOutput<String>('pod');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    ticketId = registerOutput<String>('ticketId');
    updateTime = registerOutput<String>('updateTime');
    volumes = registerOutput<List<VolumeConfigResponse>>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeConfigResponse>(guardedValue, (value) => VolumeConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    vpcScEnabled = registerOutput<bool>('vpcScEnabled');
  }

  /// Creates a typed reference to an existing [ProvisioningConfig] resource.
  ProvisioningConfig.reference(String urn)
    : super(
        'google-native:baremetalsolution/v2:ProvisioningConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cloudConsoleUri = registerOutput<String>('cloudConsoleUri');
    customId = registerOutput<String>('customId');
    email = registerOutput<String>('email');
    handoverServiceAccount = registerOutput<String>('handoverServiceAccount');
    instances = registerOutput<List<InstanceConfigResponse>>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceConfigResponse>(guardedValue, (value) => InstanceConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<NetworkConfigResponse>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    pod = registerOutput<String>('pod');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    ticketId = registerOutput<String>('ticketId');
    updateTime = registerOutput<String>('updateTime');
    volumes = registerOutput<List<VolumeConfigResponse>>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeConfigResponse>(guardedValue, (value) => VolumeConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
    vpcScEnabled = registerOutput<bool>('vpcScEnabled');
  }
}
