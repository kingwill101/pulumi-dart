// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_container_volume_git_repo.dart';

class GroupContainerVolume {
  /// Boolean as to whether the mounted volume should be an empty directory. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? emptyDir;
  /// A `git_repo` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<GroupContainerVolumeGitRepo>? gitRepo;
  /// The path on which this volume is to be mounted. Changing this forces a new resource to be created.
  final pulumi.Input<String> mountPath;
  /// The name of the volume mount. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specify if the volume is to be mounted as read only or not. The default value is `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? readOnly;
  /// A map of secrets that will be mounted as files in the volume. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Exactly one of `empty_dir` volume, `git_repo` volume, `secret` volume or storage account volume (`share_name`, `storage_account_name`, and `storage_account_key`) must be specified.
  ///
  /// &gt; **Note:** when using a storage account volume, all of `share_name`, `storage_account_name`, and `storage_account_key` must be specified.
  ///
  /// &gt; **Note:** The secret values must be supplied as Base64 encoded strings. The secret values are decoded to their original values when mounted in the volume on the container.
  final pulumi.Input<Map<String, String>>? secret;
  /// The Azure storage share that is to be mounted as a volume. This must be created on the storage account specified as above. Changing this forces a new resource to be created.
  final pulumi.Input<String>? shareName;
  /// The access key for the Azure Storage account specified as above. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountKey;
  /// The Azure storage account from which the volume is to be mounted. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GroupContainerVolume].
  /// [emptyDir] Boolean as to whether the mounted volume should be an empty directory. Defaults to `false`. Changing this forces a new resource to be created.
  /// [gitRepo] A `git_repo` block as defined below. Changing this forces a new resource to be created.
  /// [mountPath] The path on which this volume is to be mounted. Changing this forces a new resource to be created.
  /// [name] The name of the volume mount. Changing this forces a new resource to be created.
  /// [readOnly] Specify if the volume is to be mounted as read only or not. The default value is `false`. Changing this forces a new resource to be created.
  /// [secret] A map of secrets that will be mounted as files in the volume. Changing this forces a new resource to be created.
  /// [shareName] The Azure storage share that is to be mounted as a volume. This must be created on the storage account specified as above. Changing this forces a new resource to be created.
  /// [storageAccountKey] The access key for the Azure Storage account specified as above. Changing this forces a new resource to be created.
  /// [storageAccountName] The Azure storage account from which the volume is to be mounted. Changing this forces a new resource to be created.
  const GroupContainerVolume({
    this.emptyDir,
    this.gitRepo,
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.secret,
    this.shareName,
    this.storageAccountKey,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emptyDir': ?emptyDir,
      'gitRepo': ?pulumi.Input.mapOptionalInputValue<GroupContainerVolumeGitRepo, Map<String, dynamic>>(gitRepo, (value) => value.toMap()),
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
      'secret': ?secret,
      'shareName': ?shareName,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GroupContainerVolume.fromMap(Map<String, dynamic> map) {
    return GroupContainerVolume(
      emptyDir: (() { final guardedValue = map['emptyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gitRepo: (() { final guardedValue = map['gitRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupContainerVolumeGitRepo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

