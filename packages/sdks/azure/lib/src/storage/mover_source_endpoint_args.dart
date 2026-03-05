// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_source_endpoint_mover_source_endpoint_args_doc}
/// The set of arguments for MoverSourceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_source_endpoint_mover_source_endpoint_args_doc}
class MoverSourceEndpointArgs {
  /// Specifies a description for the Storage Mover Source Endpoint.
  final pulumi.Input<String>? description;
  /// Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? export;
  /// Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  final pulumi.Input<String> host;
  /// Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nfsVersion;
  /// Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverId;

  /// Creates a new [MoverSourceEndpointArgs].
  /// [description] Specifies a description for the Storage Mover Source Endpoint.
  /// [export] Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  /// [host] Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [nfsVersion] Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  MoverSourceEndpointArgs({
    this.description,
    this.export,
    required this.host,
    this.name,
    this.nfsVersion,
    required this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'export': ?export,
      'host': host,
      'name': ?name,
      'nfsVersion': ?nfsVersion,
      'storageMoverId': storageMoverId,
    };
  }

  factory MoverSourceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MoverSourceEndpointArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsVersion: (() { final guardedValue = map['nfsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverId: pulumi.Input.fromValue(map['storageMoverId'] as String),
    );
  }
}

