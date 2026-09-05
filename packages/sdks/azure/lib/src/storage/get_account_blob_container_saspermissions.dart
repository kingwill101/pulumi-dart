// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountBlobContainerSASPermissions {
  /// Should Add permissions be enabled for this SAS?
  final pulumi.Input<bool?>? add;
  /// Should Create permissions be enabled for this SAS?
  final pulumi.Input<bool?>? create;
  /// Should Delete permissions be enabled for this SAS?
  final pulumi.Input<bool?>? delete;
  /// Should Delete version permissions be enabled for this SAS?
  final pulumi.Input<bool?>? deleteVersion;
  /// Should Execute permissions be enabled for this SAS?
  final pulumi.Input<bool?>? execute;
  /// Should Find permissions be enabled for this SAS?
  final pulumi.Input<bool?>? find;
  /// Should List permissions be enabled for this SAS?
  final pulumi.Input<bool?>? list;
  /// Should Move permissions be enabled for this SAS?
  final pulumi.Input<bool?>? move;
  /// Should Ownership permissions be enabled for this SAS?
  final pulumi.Input<bool?>? ownership;
  /// Should Permissions permissions be enabled for this SAS?
  final pulumi.Input<bool?>? permissions;
  /// Should Read permissions be enabled for this SAS?
  final pulumi.Input<bool?>? read;
  /// Should Set Immutability Policy permissions be enabled for this SAS?
  final pulumi.Input<bool?>? setImmutabilityPolicy;
  /// Should Tags permissions be enabled for this SAS?
  final pulumi.Input<bool?>? tags;
  /// Should Write permissions be enabled for this SAS?
  ///
  /// &gt; **Note:** Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/storageservices/create-service-sas) for additional details on the fields above.
  final pulumi.Input<bool?>? write;

  /// Creates a new [GetAccountBlobContainerSASPermissions].
  /// [add] Should Add permissions be enabled for this SAS?
  /// [create] Should Create permissions be enabled for this SAS?
  /// [delete] Should Delete permissions be enabled for this SAS?
  /// [deleteVersion] Should Delete version permissions be enabled for this SAS?
  /// [execute] Should Execute permissions be enabled for this SAS?
  /// [find] Should Find permissions be enabled for this SAS?
  /// [list] Should List permissions be enabled for this SAS?
  /// [move] Should Move permissions be enabled for this SAS?
  /// [ownership] Should Ownership permissions be enabled for this SAS?
  /// [permissions] Should Permissions permissions be enabled for this SAS?
  /// [read] Should Read permissions be enabled for this SAS?
  /// [setImmutabilityPolicy] Should Set Immutability Policy permissions be enabled for this SAS?
  /// [tags] Should Tags permissions be enabled for this SAS?
  /// [write] Should Write permissions be enabled for this SAS?
  const GetAccountBlobContainerSASPermissions({
    this.add,
    this.create,
    this.delete,
    this.deleteVersion,
    this.execute,
    this.find,
    this.list,
    this.move,
    this.ownership,
    this.permissions,
    this.read,
    this.setImmutabilityPolicy,
    this.tags,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'create': ?create,
      'delete': ?delete,
      'deleteVersion': ?deleteVersion,
      'execute': ?execute,
      'find': ?find,
      'list': ?list,
      'move': ?move,
      'ownership': ?ownership,
      'permissions': ?permissions,
      'read': ?read,
      'setImmutabilityPolicy': ?setImmutabilityPolicy,
      'tags': ?tags,
      'write': ?write,
    };
  }

  factory GetAccountBlobContainerSASPermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountBlobContainerSASPermissions(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteVersion: (() { final guardedValue = map['deleteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      execute: (() { final guardedValue = map['execute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      find: (() { final guardedValue = map['find']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      list: (() { final guardedValue = map['list']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      move: (() { final guardedValue = map['move']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ownership: (() { final guardedValue = map['ownership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      read: (() { final guardedValue = map['read']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      setImmutabilityPolicy: (() { final guardedValue = map['setImmutabilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
