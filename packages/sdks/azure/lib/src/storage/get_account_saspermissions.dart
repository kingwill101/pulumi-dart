// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountSASPermissions {
  /// Should Add permissions be enabled for this SAS?
  final pulumi.Input<bool> add;
  /// Should Create permissions be enabled for this SAS?
  final pulumi.Input<bool> create;
  /// Should Delete permissions be enabled for this SAS?
  final pulumi.Input<bool> delete;
  /// Should Filter by Index Tags permissions be enabled for this SAS?
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/storageservices/constructing-an-account-sas)
  /// for additional details on the fields above.
  final pulumi.Input<bool> filter;
  /// Should List permissions be enabled for this SAS?
  final pulumi.Input<bool> list;
  /// Should Process permissions be enabled for this SAS?
  final pulumi.Input<bool> process;
  /// Should Read permissions be enabled for this SAS?
  final pulumi.Input<bool> read;
  /// Should Get / Set Index Tags permissions be enabled for this SAS?
  final pulumi.Input<bool> tag;
  /// Should Update permissions be enabled for this SAS?
  final pulumi.Input<bool> update;
  /// Should Write permissions be enabled for this SAS?
  final pulumi.Input<bool> write;

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
  GetAccountSASPermissions({
    required this.add,
    required this.create,
    required this.delete,
    required this.filter,
    required this.list,
    required this.process,
    required this.read,
    required this.tag,
    required this.update,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': add,
      'create': create,
      'delete': delete,
      'filter': filter,
      'list': list,
      'process': process,
      'read': read,
      'tag': tag,
      'update': update,
      'write': write,
    };
  }

  factory GetAccountSASPermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountSASPermissions(
      add: pulumi.Input.fromValue(map['add'] as bool),
      create: pulumi.Input.fromValue(map['create'] as bool),
      delete: pulumi.Input.fromValue(map['delete'] as bool),
      filter: pulumi.Input.fromValue(map['filter'] as bool),
      list: pulumi.Input.fromValue(map['list'] as bool),
      process: pulumi.Input.fromValue(map['process'] as bool),
      read: pulumi.Input.fromValue(map['read'] as bool),
      tag: pulumi.Input.fromValue(map['tag'] as bool),
      update: pulumi.Input.fromValue(map['update'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}

