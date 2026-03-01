// ignore_for_file: unused_element, unnecessary_cast


class GetAccountSASPermissions {
  /// Should Add permissions be enabled for this SAS?
  final bool add;
  /// Should Create permissions be enabled for this SAS?
  final bool create;
  /// Should Delete permissions be enabled for this SAS?
  final bool delete;
  /// Should Filter by Index Tags permissions be enabled for this SAS?
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/storageservices/constructing-an-account-sas)
  /// for additional details on the fields above.
  final bool filter;
  /// Should List permissions be enabled for this SAS?
  final bool list;
  /// Should Process permissions be enabled for this SAS?
  final bool process;
  /// Should Read permissions be enabled for this SAS?
  final bool read;
  /// Should Get / Set Index Tags permissions be enabled for this SAS?
  final bool tag;
  /// Should Update permissions be enabled for this SAS?
  final bool update;
  /// Should Write permissions be enabled for this SAS?
  final bool write;

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
      add: map['add'] as bool,
      create: map['create'] as bool,
      delete: map['delete'] as bool,
      filter: map['filter'] as bool,
      list: map['list'] as bool,
      process: map['process'] as bool,
      read: map['read'] as bool,
      tag: map['tag'] as bool,
      update: map['update'] as bool,
      write: map['write'] as bool,
    );
  }
}

