// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'vmmserver_properties_credentials.dart';

/// {@template pulumi_scvmm_vmm_server_args_doc}
/// The set of arguments for VmmServer.
/// {@endtemplate}
/// {@macro pulumi_scvmm_vmm_server_args_doc}
class VmmServerArgs {
  /// Credentials to connect to VMMServer.
  final pulumi.Input<VMMServerPropertiesCredentials>? credentials;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Fqdn is the hostname/ip of the vmmServer.
  final pulumi.Input<String> fqdn;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Port is the port on which the vmmServer is listening.
  final pulumi.Input<int>? port;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the VMMServer.
  final pulumi.Input<String>? vmmServerName;

  /// Creates a new [VmmServerArgs].
  /// [credentials] Credentials to connect to VMMServer.
  /// [extendedLocation] The extended location.
  /// [fqdn] Fqdn is the hostname/ip of the vmmServer.
  /// [location] Gets or sets the location.
  /// [port] Port is the port on which the vmmServer is listening.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags
  /// [vmmServerName] Name of the VMMServer.
  VmmServerArgs({
    pulumi.Output<VMMServerPropertiesCredentials>? credentials,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> fqdn,
    pulumi.Output<String>? location,
    pulumi.Output<int>? port,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vmmServerName,
  }) :
      credentials = pulumi.Input.asOptionalInput<VMMServerPropertiesCredentials>(credentials),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      fqdn = pulumi.Input.asInput<String>(fqdn),
      location = pulumi.Input.asOptionalInput<String>(location),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmmServerName = pulumi.Input.asOptionalInput<String>(vmmServerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<VMMServerPropertiesCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'fqdn': fqdn,
      'location': ?location,
      'port': ?port,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vmmServerName': ?vmmServerName,
    };
  }

  factory VmmServerArgs.fromMap(Map<String, dynamic> map) {
    return VmmServerArgs(
      credentials: map['credentials'] == null ? null : pulumi.Output.create<VMMServerPropertiesCredentials>(VMMServerPropertiesCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      fqdn: pulumi.Output.create<String>(map['fqdn'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmmServerName: map['vmmServerName'] == null ? null : pulumi.Output.create<String>(map['vmmServerName'] as String),
    );
  }
}

