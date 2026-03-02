// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverSourceEndpoint resources.
class MoverSourceEndpointState {
  /// Specifies a description for the Storage Mover Source Endpoint.
  final pulumi.Input<String>? description;
  /// Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? export;
  /// Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  final pulumi.Input<String>? host;
  /// Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nfsVersion;
  /// Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageMoverId;

  /// Creates a new [MoverSourceEndpointState].
  /// [description] Specifies a description for the Storage Mover Source Endpoint.
  /// [export] Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  /// [host] Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [nfsVersion] Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  MoverSourceEndpointState({
    this.description,
    this.export,
    this.host,
    this.name,
    this.nfsVersion,
    this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'export': ?export,
      'host': ?host,
      'name': ?name,
      'nfsVersion': ?nfsVersion,
      'storageMoverId': ?storageMoverId,
    };
  }

  factory MoverSourceEndpointState.fromMap(Map<String, dynamic> map) {
    return MoverSourceEndpointState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      export: map['export'] == null ? null : (map['export']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nfsVersion: map['nfsVersion'] == null ? null : (map['nfsVersion']! as String).input(),
      storageMoverId: map['storageMoverId'] == null ? null : (map['storageMoverId']! as String).input(),
    );
  }
}

