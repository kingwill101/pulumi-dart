// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// The name of the bucket that contains the folder.
  final pulumi.Input<String>? bucket;
  /// The timestamp at which this folder was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// If set to true, items within folder if any will be force destroyed.
  final pulumi.Input<bool>? forceDestroy;
  /// The metadata generation of the folder.
  final pulumi.Input<String>? metageneration;
  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final pulumi.Input<String>? name;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The timestamp at which this folder was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FolderState].
  /// [bucket] The name of the bucket that contains the folder.
  /// [createTime] The timestamp at which this folder was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [forceDestroy] If set to true, items within folder if any will be force destroyed.
  /// [metageneration] The metadata generation of the folder.
  /// [name] The name of the folder expressed as a path. Must include
  /// [selfLink] The URI of the created resource.
  /// [updateTime] The timestamp at which this folder was most recently updated.
  const FolderState({
    this.bucket,
    this.createTime,
    this.deletionPolicy,
    this.forceDestroy,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'forceDestroy': ?forceDestroy,
      'metageneration': ?metageneration,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metageneration: (() { final guardedValue = map['metageneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
