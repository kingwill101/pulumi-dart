// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_io_thread_ids_io_thread.dart';

class DomainIoThreadIDs {
  /// Defines the individual I/O threads associated with the domain.
  final List<DomainIoThreadIDsIoThread>? ioThreads;

  /// Creates a new [DomainIoThreadIDs].
  /// [ioThreads] Defines the individual I/O threads associated with the domain.
  DomainIoThreadIDs({
    this.ioThreads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads': ?ioThreads == null ? null : pulumi.Input.encodeList<DomainIoThreadIDsIoThread, Map<String, dynamic>>(ioThreads!, (value) => value.toMap()),
    };
  }

  factory DomainIoThreadIDs.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDs(
      ioThreads: map['ioThreads'] == null ? null : pulumi.Input.decodeList<DomainIoThreadIDsIoThread>(map['ioThreads'], (value) => DomainIoThreadIDsIoThread.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

