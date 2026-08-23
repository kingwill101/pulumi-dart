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
  const EnvironmentStorageState({
    this.accessKey,
    this.accessMode,
    this.accountName,
    this.containerAppEnvironmentId,
    this.name,
    this.nfsServerUrl,
    this.shareName,
  });

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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsServerUrl: (() { final guardedValue = map['nfsServerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
