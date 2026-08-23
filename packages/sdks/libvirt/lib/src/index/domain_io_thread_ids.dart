// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_io_thread_ids_io_thread.dart';

class DomainIoThreadIDs {
  /// Defines the individual I/O threads associated with the domain.
  final pulumi.Input<List<DomainIoThreadIDsIoThread>>? ioThreads;

  /// Creates a new [DomainIoThreadIDs].
  /// [ioThreads] Defines the individual I/O threads associated with the domain.
  const DomainIoThreadIDs({
    this.ioThreads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads': ?pulumi.Input.mapOptionalInputValue<List<DomainIoThreadIDsIoThread>, List<Map<String, dynamic>>>(ioThreads, (value) => pulumi.Input.encodeList<DomainIoThreadIDsIoThread, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainIoThreadIDs.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDs(
      ioThreads: (() { final guardedValue = map['ioThreads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainIoThreadIDsIoThread>(guardedValue, (value) => DomainIoThreadIDsIoThread.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
