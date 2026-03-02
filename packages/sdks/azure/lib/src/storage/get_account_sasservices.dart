// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountSASServices {
  /// Should permission be granted to `blob` services within this storage account?
  final pulumi.Input<bool> blob;
  /// Should permission be granted to `file` services within this storage account?
  final pulumi.Input<bool> file;
  /// Should permission be granted to `queue` services within this storage account?
  final pulumi.Input<bool> queue;
  /// Should permission be granted to `table` services within this storage account?
  final pulumi.Input<bool> table;

  /// Creates a new [GetAccountSASServices].
  /// [blob] Should permission be granted to `blob` services within this storage account?
  /// [file] Should permission be granted to `file` services within this storage account?
  /// [queue] Should permission be granted to `queue` services within this storage account?
  /// [table] Should permission be granted to `table` services within this storage account?
  GetAccountSASServices({
    required this.blob,
    required this.file,
    required this.queue,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': blob,
      'file': file,
      'queue': queue,
      'table': table,
    };
  }

  factory GetAccountSASServices.fromMap(Map<String, dynamic> map) {
    return GetAccountSASServices(
      blob: (map['blob'] as bool).input(),
      file: (map['file'] as bool).input(),
      queue: (map['queue'] as bool).input(),
      table: (map['table'] as bool).input(),
    );
  }
}

