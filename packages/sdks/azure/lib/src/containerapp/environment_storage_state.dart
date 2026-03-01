// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentStorage resources.
class EnvironmentStorageState {
  /// The Storage Account Access Key.
  final pulumi.Input<String>? accessKey;
  /// The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accessMode;
  /// The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// The name for this Container App Environment Storage. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The NFS server to use for the Azure File Share, the format will be `yourstorageaccountname.file.core.windows.net`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nfsServerUrl;
  /// The name of the Azure Storage Share to use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? shareName;

  /// Creates a new [EnvironmentStorageState].
  /// [accessKey] The Storage Account Access Key.
  /// [accessMode] The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. Changing this forces a new resource to be created.
  /// [accountName] The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentId] The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created.
  /// [name] The name for this Container App Environment Storage. Changing this forces a new resource to be created.
  /// [nfsServerUrl] The NFS server to use for the Azure File Share, the format will be `yourstorageaccountname.file.core.windows.net`. Changing this forces a new resource to be created.
  /// [shareName] The name of the Azure Storage Share to use. Changing this forces a new resource to be created.
  EnvironmentStorageState({
    pulumi.Output<String>? accessKey,
    pulumi.Output<String>? accessMode,
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? containerAppEnvironmentId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nfsServerUrl,
    pulumi.Output<String>? shareName,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      containerAppEnvironmentId = pulumi.Input.asOptionalInput<String>(containerAppEnvironmentId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsServerUrl = pulumi.Input.asOptionalInput<String>(nfsServerUrl),
      shareName = pulumi.Input.asOptionalInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accessMode': ?accessMode,
      'accountName': ?accountName,
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'name': ?name,
      'nfsServerUrl': ?nfsServerUrl,
      'shareName': ?shareName,
    };
  }

  factory EnvironmentStorageState.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageState(
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nfsServerUrl: map['nfsServerUrl'] == null ? null : pulumi.Output.create<String>(map['nfsServerUrl'] as String),
      shareName: map['shareName'] == null ? null : pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

