// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountSASPermissions {
  /// Should Add permissions be enabled for this SAS?
  final pulumi.Input<bool?>? add;
  /// Should Create permissions be enabled for this SAS?
  final pulumi.Input<bool?>? create;
  /// Should Delete permissions be enabled for this SAS?
  final pulumi.Input<bool?>? delete;
  /// Should Filter by Index Tags permissions be enabled for this SAS?
  final pulumi.Input<bool?>? filter;
  /// Should List permissions be enabled for this SAS?
  final pulumi.Input<bool?>? list;
  /// Should Process permissions be enabled for this SAS?
  final pulumi.Input<bool?>? process;
  /// Should Read permissions be enabled for this SAS?
  final pulumi.Input<bool?>? read;
  /// Should Get / Set Index Tags permissions be enabled for this SAS?
  final pulumi.Input<bool?>? tag;
  /// Should Update permissions be enabled for this SAS?
  final pulumi.Input<bool?>? update;
  /// Should Write permissions be enabled for this SAS?
  ///
  /// &gt; **Note:** Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/storageservices/constructing-an-account-sas) for additional details on the fields above.
  final pulumi.Input<bool?>? write;

  /// Creates a new [GetAccountSASPermissions].
  /// [add] Should Add permissions be enabled for this SAS?
  /// [create] Should Create permissions be enabled for this SAS?
  /// [delete] Should Delete permissions be enabled for this SAS?
  /// [filter] Should Filter by Index Tags permissions be enabled for this SAS?
  /// [list] Should List permissions be enabled for this SAS?
  /// [process] Should Process permissions be enabled for this SAS?
  /// [read] Should Read permissions be enabled for this SAS?
  /// [tag] Should Get / Set Index Tags permissions be enabled for this SAS?
  /// [update] Should Update permissions be enabled for this SAS?
  /// [write] Should Write permissions be enabled for this SAS?
  const GetAccountSASPermissions({
    this.add,
    this.create,
    this.delete,
    this.filter,
    this.list,
    this.process,
    this.read,
    this.tag,
    this.update,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'create': ?create,
      'delete': ?delete,
      'filter': ?filter,
      'list': ?list,
      'process': ?process,
      'read': ?read,
      'tag': ?tag,
      'update': ?update,
      'write': ?write,
    };
  }

  factory GetAccountSASPermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountSASPermissions(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      list: (() { final guardedValue = map['list']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      process: (() { final guardedValue = map['process']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      read: (() { final guardedValue = map['read']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
