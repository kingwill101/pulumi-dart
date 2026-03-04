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
    this.credentials,
    required this.extendedLocation,
    required this.fqdn,
    this.location,
    this.port,
    required this.resourceGroupName,
    this.tags,
    this.vmmServerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            VMMServerPropertiesCredentials,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
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
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VMMServerPropertiesCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vmmServerName: (() {
        final guardedValue = map['vmmServerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
