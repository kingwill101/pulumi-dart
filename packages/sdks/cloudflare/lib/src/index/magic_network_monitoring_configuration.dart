import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_network_monitoring_configuration_args.dart';
import 'magic_network_monitoring_configuration_state.dart';
import 'magic_network_monitoring_configuration_warp_device.dart';

/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin`
/// - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
class MagicNetworkMonitoringConfiguration extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
  late final pulumi.Output<double> defaultSampling;
  /// The account name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<String>?> routerIps;
  late final pulumi.Output<List<MagicNetworkMonitoringConfigurationWarpDevice>?> warpDevices;

  /// Creates a new [MagicNetworkMonitoringConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicNetworkMonitoringConfiguration]. {@macro pulumi_index_magic_network_monitoring_configuration_magic_network_monitoring_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicNetworkMonitoringConfiguration(
    String name, {
    MagicNetworkMonitoringConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicNetworkMonitoringConfiguration:MagicNetworkMonitoringConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    defaultSampling = registerOutput<double>('defaultSampling');
    this.name = registerOutput<String>('name');
    routerIps = registerOutput<List<String>?>('routerIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warpDevices = registerOutput<List<MagicNetworkMonitoringConfigurationWarpDevice>?>('warpDevices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicNetworkMonitoringConfigurationWarpDevice>(guardedValue, (value) => MagicNetworkMonitoringConfigurationWarpDevice.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [MagicNetworkMonitoringConfiguration] resource's state with the given [name] and [id].
  static MagicNetworkMonitoringConfiguration get(
    String name,
    pulumi.Input<String> id, {
    MagicNetworkMonitoringConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicNetworkMonitoringConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicNetworkMonitoringConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicNetworkMonitoringConfiguration:MagicNetworkMonitoringConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    defaultSampling = registerOutput<double>('defaultSampling');
    this.name = registerOutput<String>('name');
    routerIps = registerOutput<List<String>?>('routerIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warpDevices = registerOutput<List<MagicNetworkMonitoringConfigurationWarpDevice>?>('warpDevices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicNetworkMonitoringConfigurationWarpDevice>(guardedValue, (value) => MagicNetworkMonitoringConfigurationWarpDevice.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [MagicNetworkMonitoringConfiguration] resource.
  MagicNetworkMonitoringConfiguration.reference(String urn)
    : super(
        'cloudflare:index/magicNetworkMonitoringConfiguration:MagicNetworkMonitoringConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    defaultSampling = registerOutput<double>('defaultSampling');
    this.name = registerOutput<String>('name');
    routerIps = registerOutput<List<String>?>('routerIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warpDevices = registerOutput<List<MagicNetworkMonitoringConfigurationWarpDevice>?>('warpDevices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicNetworkMonitoringConfigurationWarpDevice>(guardedValue, (value) => MagicNetworkMonitoringConfigurationWarpDevice.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
