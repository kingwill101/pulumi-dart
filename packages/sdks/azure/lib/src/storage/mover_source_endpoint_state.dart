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
    pulumi.Output<String>? description,
    pulumi.Output<String>? export,
    pulumi.Output<String>? host,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nfsVersion,
    pulumi.Output<String>? storageMoverId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      export = pulumi.Input.asOptionalInput<String>(export),
      host = pulumi.Input.asOptionalInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsVersion = pulumi.Input.asOptionalInput<String>(nfsVersion),
      storageMoverId = pulumi.Input.asOptionalInput<String>(storageMoverId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      export: map['export'] == null ? null : pulumi.Output.create<String>(map['export'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nfsVersion: map['nfsVersion'] == null ? null : pulumi.Output.create<String>(map['nfsVersion'] as String),
      storageMoverId: map['storageMoverId'] == null ? null : pulumi.Output.create<String>(map['storageMoverId'] as String),
    );
  }
}

